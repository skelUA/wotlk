/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Util.h"
#include "Common.h"
#include "Containers.h"
#include "IpAddress.h"
#include "StringConvert.h"
#include "Tokenize.h"
#include <algorithm>
#include <boost/core/demangle.hpp>
#include <cctype>
#include <cstdarg>
#include <sstream>
#include <string>
#include <utf8.h>

void stripLineInvisibleChars(std::string& str)
{
    static std::string const invChars = " \t\7\n";

    std::size_t wpos = 0;

    bool space = false;
    for (std::size_t pos = 0; pos < str.size(); ++pos)
    {
        if (invChars.find(str[pos]) != std::string::npos)
        {
            if (!space)
            {
                str[wpos++] = ' ';
                space = true;
            }
        }
        else
        {
            if (wpos != pos)
            {
                str[wpos++] = str[pos];
            }
            else
            {
                ++wpos;
            }
            space = false;
        }
    }

    if (wpos < str.size())
    {
        str.erase(wpos, str.size());
    }
    if (str.find("|TInterface") != std::string::npos)
    {
        str.clear();
    }
}

std::string secsToTimeString(uint64 timeInSecs, bool shortText)
{
    uint64 secs    = timeInSecs % MINUTE;
    uint64 minutes = timeInSecs % HOUR / MINUTE;
    uint64 hours   = timeInSecs % DAY  / HOUR;
    uint64 days    = timeInSecs / DAY;

    std::ostringstream ss;
    if (days)
    {
        ss << days << (shortText ? "d" : " day(s) ");
    }
    if (hours)
    {
        ss << hours << (shortText ? "h" : " hour(s) ");
    }
    if (minutes)
    {
        ss << minutes << (shortText ? "m" : " minute(s) ");
    }
    if (secs || (!days && !hours && !minutes))
    {
        ss << secs << (shortText ? "s" : " second(s) ");
    }

    std::string str = ss.str();

    if (!shortText && !str.empty() && str[str.size() - 1] == ' ')
    {
        str.resize(str.size() - 1);
    }

    return str;
}

Optional<int32> MoneyStringToMoney(std::string_view moneyString)
{
    int32 money = 0;

    bool hadG = false;
    bool hadS = false;
    bool hadC = false;

    for (std::string_view token : Acore::Tokenize(moneyString, ' ', false))
    {
        uint32 unit;
        switch (token[token.length() - 1])
        {
        case 'g':
            if (hadG)
            {
                return std::nullopt;
            }
            hadG = true;
            unit = 100 * 100;
            break;
        case 's':
            if (hadS)
            {
                return std::nullopt;
            }
            hadS = true;
            unit = 100;
            break;
        case 'c':
            if (hadC)
            {
                return std::nullopt;
            }
            hadC = true;
            unit = 1;
            break;
        default:
            return std::nullopt;
        }

        Optional<uint32> amount = Acore::StringTo<uint32>(token.substr(0, token.length() - 1));
        if (amount)
        {
            money += (unit * *amount);
        }
        else
        {
            return std::nullopt;
        }
    }

    return money;
}

uint32 TimeStringToSecs(const std::string& timestring)
{
    uint32 secs       = 0;
    uint32 buffer     = 0;
    uint32 multiplier = 0;

    for (std::string::const_iterator itr = timestring.begin(); itr != timestring.end(); ++itr)
    {
        if (isdigit(*itr))
        {
            buffer *= 10;
            buffer += (*itr) - '0';
        }
        else
        {
            switch (*itr)
            {
                case 'd':
                    multiplier = DAY;
                    break;
                case 'h':
                    multiplier = HOUR;
                    break;
                case 'm':
                    multiplier = MINUTE;
                    break;
                case 's':
                    multiplier = 1;
                    break;
                default :
                    return 0;                         //bad format
            }
            buffer *= multiplier;
            secs += buffer;
            buffer = 0;
        }
    }

    return secs;
}

/// Check if the string is a valid ip address representation
bool IsIPAddress(char const* ipaddress)
{
    if (!ipaddress)
    {
        return false;
    }

    boost::system::error_code error;
    Acore::Net::make_address(ipaddress, error);
    return !error;
}

/// create PID file
uint32 CreatePIDFile(std::string const& filename)
{
    FILE* pid_file = fopen(filename.c_str(), "w");
    if (!pid_file)
    {
        return 0;
    }

    uint32 pid = GetPID();

    fprintf(pid_file, "%u", pid);
    fclose(pid_file);

    return pid;
}

uint32 GetPID()
{
#ifdef _WIN32
    DWORD pid = GetCurrentProcessId();
#else
    pid_t pid = getpid();
#endif

    return uint32(pid);
}

std::size_t utf8length(std::string& utf8str)
{
    try
    {
        return utf8::distance(utf8str.c_str(), utf8str.c_str() + utf8str.size());
    }
    catch (std::exception const&)
    {
        utf8str.clear();
        return 0;
    }
}

void utf8truncate(std::string& utf8str, std::size_t len)
{
    try
    {
        std::size_t wlen = utf8::distance(utf8str.c_str(), utf8str.c_str() + utf8str.size());
        if (wlen <= len)
        {
            return;
        }

        std::wstring wstr;
        wstr.resize(wlen);
        utf8::utf8to16(utf8str.c_str(), utf8str.c_str() + utf8str.size(), &wstr[0]);
        wstr.resize(len);
        char* oend = utf8::utf16to8(wstr.c_str(), wstr.c_str() + wstr.size(), &utf8str[0]);
        utf8str.resize(oend - (&utf8str[0]));               // remove unused tail
    }
    catch (std::exception const&)
    {
        utf8str.clear();
    }
}

bool Utf8toWStr(char const* utf8str, std::size_t csize, wchar_t* wstr, std::size_t& wsize)
{
    try
    {
        Acore::CheckedBufferOutputIterator<wchar_t> out(wstr, wsize);
        out = utf8::utf8to16(utf8str, utf8str + csize, out);
        wsize -= out.remaining(); // remaining unused space
        wstr[wsize] = L'\0';
    }
    catch (std::exception const&)
    {
        // Replace the converted string with an error message if there is enough space
        // Otherwise just return an empty string
        const wchar_t* errorMessage = L"An error occurred converting string from UTF-8 to WStr";
        std::size_t errorMessageLength = std::char_traits<wchar_t>::length(errorMessage);
        if (wsize >= errorMessageLength)
        {
            std::wcscpy(wstr, errorMessage);
            wsize = std::char_traits<wchar_t>::length(wstr);
        }
        else if (wsize > 0)
        {
            wstr[0] = L'\0';
            wsize = 0;
        }
        else
        {
            wsize = 0;
        }

        return false;
    }

    return true;
}

bool Utf8toWStr(std::string_view utf8str, std::wstring& wstr)
{
    wstr.clear();
    try
    {
        utf8::utf8to16(utf8str.begin(), utf8str.end(), std::back_inserter(wstr));
    }
    catch (std::exception const&)
    {
        wstr.clear();
        return false;
    }

    return true;
}

bool WStrToUtf8(wchar_t const* wstr, std::size_t size, std::string& utf8str)
{
    try
    {
        std::string utf8str2;
        utf8str2.resize(size * 4);                            // allocate for most long case

        if (size)
        {
            char* oend = utf8::utf16to8(wstr, wstr + size, &utf8str2[0]);
            utf8str2.resize(oend - (&utf8str2[0]));               // remove unused tail
        }

        utf8str = utf8str2;
    }
    catch (std::exception const&)
    {
        utf8str.clear();
        return false;
    }

    return true;
}

bool WStrToUtf8(std::wstring_view wstr, std::string& utf8str)
{
    try
    {
        std::string utf8str2;
        utf8str2.resize(wstr.size() * 4);                     // allocate for most long case

        if (!wstr.empty())
        {
            char* oend = utf8::utf16to8(wstr.begin(), wstr.end(), &utf8str2[0]);
            utf8str2.resize(oend - (&utf8str2[0]));                // remove unused tail
        }

        utf8str = utf8str2;
    }
    catch (std::exception const&)
    {
        utf8str.clear();
        return false;
    }

    return true;
}

void wstrToUpper(std::wstring& str) { std::transform(std::begin(str), std::end(str), std::begin(str), wcharToUpper); }
void wstrToLower(std::wstring& str) { std::transform(std::begin(str), std::end(str), std::begin(str), wcharToLower); }
void strToUpper(std::string& str) { std::transform(std::begin(str), std::end(str), std::begin(str), charToUpper); }
void strToLower(std::string& str) { std::transform(std::begin(str), std::end(str), std::begin(str), charToLower); }

std::wstring GetMainPartOfName(std::wstring const& wname, uint32_t declension)
{
    // supported only Cyrillic cases
    if (wname.empty() || !isCyrillicCharacter(wname[0]) || declension > 5)
    {
        return wname;
    }

    // Important: end length must be <= MAX_INTERNAL_PLAYER_NAME-MAX_PLAYER_NAME (3 currently)
    static std::wstring const a_End = L"\u0430";  // -а
    static std::wstring const o_End = L"\u043E";  // -о
    static std::wstring const u_End = L"\u0443";  // -у
    static std::wstring const e_End = L"\u0435";  // -е
    static std::wstring const i_end = L"\u0438";  // -и
    static std::wstring const i_End = L"\u0456";  // -і
    static std::wstring const yi_End = L"\u0457"; // -ї 
    static std::wstring const j_End = L"\u0439";  // -й
    static std::wstring const ye_End = L"\u0454"; // -є
    static std::wstring const ya_End = L"\u044F"; // -я
    static std::wstring const yu_End = L"\u044E"; // -ю
    static std::wstring const y_end = L"\u044C";  // -ь
    static std::wstring const z_End = L"\u0437";  // -з
    static std::wstring const k_End = L"\u043A";  // -к
    static std::wstring const r_End = L"\u0440";  // -р
    static std::wstring const oi_End = L"\u043E\u0457";   // -ої 
    static std::wstring const om_End = L"\u043E\u043C";   // -ом
    static std::wstring const oyu_End = L"\u043E\u044E";  // -ою
    static std::wstring const ok_End = L"\u043E\u043A";   // -ок
    static std::wstring const em_End = L"\u0435\u043C";   // -ем
    static std::wstring const eyu_End = L"\u0435\u044E";  // -ею
    static std::wstring const yem_End = L"\u0454\u043C";  // -єм
    static std::wstring const iey_End = L"\u0454\u044E";  // -єю
    static std::wstring const yam_End = L"\u044F\u043C";  // -ям
    static std::wstring const im_End = L"\u0438\u043C";   // -им
    static std::wstring const ii_End = L"\u0438\u0439";   // -ий
    static std::wstring const ij_End = L"\u0456\u0439";   // -ій
    static std::wstring const il_End = L"\u0456\u043B";   // -іл
    static std::wstring const izh_End = L"\u0456\u0436";  // -іж
    static std::wstring const za_End = L"\u0437\u0430";   // -за
    static std::wstring const zi_End = L"\u0437\u0456";   // -зі
    static std::wstring const zu_End = L"\u0437\u0443";   // -зу
    static std::wstring const ka_End = L"\u043A\u0430";   // -ка
    static std::wstring const ky_End = L"\u043A\u0438";   // -ки
    static std::wstring const ko_End = L"\u043A\u043E";   // -ко
    static std::wstring const ku_End = L"\u043A\u0443";   // -ку
    static std::wstring const tsi_End = L"\u0446\u0456";  // -ці
    static std::wstring const tse_End = L"\u0446\u0435";  // -це
    static std::wstring const tsy_End = L"\u0446\u044E";  // -цю
    static std::wstring const tsya_End = L"\u0446\u044F"; // -ця
    static std::wstring const ga_End = L"\u0433\u0430";   // -га
    static std::wstring const gy_End = L"\u0433\u0438";   // -ги
    static std::wstring const gu_End = L"\u0433\u0443";   // -гу
    static std::wstring const gha_End = L"\u0491\u0430";  // -ґа
    static std::wstring const ghy_End = L"\u0491\u0438";  // -ґи
    static std::wstring const ghu_End = L"\u0491\u0443";  // -ґу
    static std::wstring const er_End = L"\u0435\u0440";   // -ер
    static std::wstring const ra_End = L"\u0440\u0430";   // -ра
    static std::wstring const ry_End = L"\u0440\u0438";   // -ри
    static std::wstring const ru_End = L"\u0440\u0443";   // -ру
    static std::wstring const ri_End = L"\u0440\u0456";   // -рі
    static std::wstring const zom_End = L"\u0437\u043E\u043C";  // -зом
    static std::wstring const ram_End = L"\u0440\u0430\u043C";  // -рам
    static std::wstring const rah_End = L"\u0440\u0430\u0445";  // -рах
    static std::wstring const rom_End = L"\u0440\u043E\u043C";  // -ром
    static std::wstring const royu_End = L"\u0440\u043E\u044E"; // -рою
    static std::wstring const goyu_End = L"\u0433\u043E\u044E"; // -гою
    static std::wstring const ghoyu_End = L"\u0491\u043E\u044E";// -ґою
    static std::wstring const yaty_end = L"\u044F\u0442\u0438"; // -яти
    static std::wstring const yati_End = L"\u044F\u0442\u0456"; // -яті
    static std::wstring const tsey_End = L"\u0446\u0435\u044E"; // -цею
    static std::wstring const tsem_End = L"\u0446\u0435\u043C"; // -цем
    static std::wstring const kom_End = L"\u043A\u043E\u043C";  // -ком
    static std::wstring const koyu_End = L"\u043A\u043E\u044E"; // -кою
    static std::wstring const evi_End = L"\u0435\u0432\u0456";  // -еві
    static std::wstring const ievi_End = L"\u0454\u0432\u0456"; // -єві
    static std::wstring const ovi_End = L"\u043E\u0432\u0456";  // -ові
    static std::wstring const ogo_End = L"\u043E\u0433\u043E";  // -ого
    static std::wstring const omu_End = L"\u043E\u043C\u0443";  // -ому
    static std::wstring const ola_End = L"\u043E\u043B\u0430";  // -ола
    static std::wstring const olu_End = L"\u043E\u043B\u0443";  // -олу
    static std::wstring const oli_End = L"\u043E\u043B\u0456";  // -олі
    static std::wstring const oly_End = L"\u043E\u043B\u0438";  // -оли
    static std::wstring const ozha_End = L"\u043E\u0436\u0430"; // -ожа
    static std::wstring const ozhu_End = L"\u043E\u0436\u0443"; // -ожу
    static std::wstring const ozhi_End = L"\u043E\u0436\u0456"; // -ожі
    static std::wstring const ozhem_End = L"\u043E\u0436\u0435\u043C"; // -ожем
    static std::wstring const olom_End = L"\u043E\u043B\u043E\u043C";  // -олом
    static std::wstring const oloyu_End = L"\u043E\u043B\u043E\u044E"; // -олою
    static std::wstring const ramy_End = L"\u0440\u0430\u043C\u0438";  // -рами

    // Масив закінчень для кожного відмінка
    static std::array<std::array<std::wstring const*, 26>, 6> const dropEnds = { {
            //  ола         це         ця         га          ґа          ий         ка         ко         ок         іж         іл         ер        ра         ру        з         к         р         а         е         я         у         є         і        ь        й        о
            { &ola_End,   &tse_End,  &tsya_End, &ga_End,    &gha_End,  &ii_End,    &ka_End,   &ko_End,   &ok_End,   &izh_End,  &il_End,   &er_End,  &ra_End,   &ru_End,  &z_End,   &k_End,   &r_End,   &a_End,   &e_End,   &ya_End,  &u_End,   &ye_End,  &i_End,  &y_end,  &j_End,  &o_End }, // 1-й відмінок (називний)
            //  оли         ожа        ола         ого        яти         за         ги         ґи         ця         ці         ка         ки        ої         ра        ру        ри        а         и         і         ї         я         р
            { &oly_End,   &ozha_End, &ola_End,   &ogo_End,  &yaty_end, &za_End,    &gy_End,    &ghy_End,  &tsya_End, &tsi_End,  &ka_End,  &ky_End,  &oi_End,   &ra_End,  &ru_End,  &ry_End,  &a_End,   &i_end,   &i_End,   &yi_End,  &ya_End,  &r_End,  nullptr, nullptr, nullptr, nullptr }, // 2-й відмінок (родовий)
            //  ожу         олі        олу         ому        еві         єві        ові        яті        рам        ій         ці         цю        зу         зі        ку        ру        рі        е         ю         у         і         ї
            { &ozhu_End,  &oli_End,  &olu_End,   &omu_End,  &evi_End,  &ievi_End,  &ovi_End,  &yati_End, &ram_End,  &ij_End,   &tsi_End,  &tsy_End, &zu_End,   &zi_End,  &ku_End,  &ru_End,  &ri_End,  &e_End,   &yu_End,  &u_End,   &i_End,   &yi_End, nullptr, nullptr, nullptr, nullptr }, // 3-й відмінок (давальний)
            //  ожа         ола        олу         ого        за          гу         ґу         це         цю         ка         ко         ку        ра         ру        іл        а         е         я         ю         у         о
            { &ozha_End,  &ola_End,  &olu_End,   &ogo_End,  &za_End,   &gu_End,    &ghu_End,  &tse_End,  &tsy_End,  &ka_End,   &ko_End,   &ku_End,  &ra_End,   &ru_End,  &il_End,  &a_End,   &e_End,   &ya_End,  &yu_End,  &u_End,   &o_End,   nullptr, nullptr, nullptr, nullptr, nullptr }, // 4-й відмінок (знахідний)
            //  ожем        олом       олою        рами       гою         ґою        зом       цею        цем        кою        ком         ром       рою        ру        ом        ем        ею        єю        єм        ою        ям        им       ю
            { &ozhem_End, &olom_End, &oloyu_End, &ramy_End, &goyu_End, &ghoyu_End, &zom_End,  &tsey_End, &tsem_End, &kom_End,  &koyu_End, &rom_End, &royu_End, &ru_End,  &om_End,  &em_End,  &eyu_End, &iey_End, &yem_End, &oyu_End, &yam_End, &im_End, &yu_End, nullptr, nullptr, nullptr }, // 5-й відмінок (орудний)
            //  ожі         ому        еві         ові        єві         яті        олі        рах        ру         рі         ку         ій        зі         ці        і         ї         ю         у 
            { &ozhi_End,  &omu_End,  &evi_End,   &ovi_End,  &ievi_End, &yati_End,  &oli_End,  &rah_End,  &ru_End,   &ri_End,   &ku_End,   &ij_End,  &zi_End,   &tsi_End, &i_End,   &yi_End,  &yu_End,  &u_End,   nullptr,  nullptr,  nullptr,  nullptr, nullptr, nullptr, nullptr, nullptr }  // 6-й відмінок (місцевий)
        } };

    std::size_t const thisLen = wname.length();
    std::array<std::wstring const*, 26> const& endings = dropEnds[declension];
    for (const std::wstring* endingPtr : endings)
    {
        if (endingPtr == nullptr)
        {
            break;
        }

        std::wstring const& ending = *endingPtr;
        std::size_t const endLen = ending.length();
        if (endLen > thisLen)
        {
            continue;
        }

        if (wname.compare(thisLen - endLen, endLen, ending) == 0)
        {
            return wname.substr(0, thisLen - endLen);
        }
    }

    return wname;
}

bool utf8ToConsole(std::string_view utf8str, std::string& conStr)
{
#if AC_PLATFORM == AC_PLATFORM_WINDOWS
    std::wstring wstr;
    if (!Utf8toWStr(utf8str, wstr))
    {
        return false;
    }

    conStr.resize(wstr.size());
    CharToOemBuffW(&wstr[0], &conStr[0], wstr.size());
#else
    // not implemented yet
    conStr = utf8str;
#endif

    return true;
}

bool consoleToUtf8(std::string_view conStr, std::string& utf8str)
{
#if AC_PLATFORM == AC_PLATFORM_WINDOWS
    std::wstring wstr;
    wstr.resize(conStr.size());
    OemToCharBuffW(&conStr[0], &wstr[0], uint32(conStr.size()));

    return WStrToUtf8(wstr, utf8str);
#else
    // not implemented yet
    utf8str = conStr;
    return true;
#endif
}

bool Utf8FitTo(std::string_view str, std::wstring_view search)
{
    std::wstring temp;

    if (!Utf8toWStr(str, temp))
    {
        return false;
    }

    // converting to lower case
    wstrToLower(temp);

    if (temp.find(search) == std::wstring::npos)
    {
        return false;
    }

    return true;
}

void utf8printf(FILE* out, const char* str, ...)
{
    va_list ap;
    va_start(ap, str);
    vutf8printf(out, str, &ap);
    va_end(ap);
}

void vutf8printf(FILE* out, const char* str, va_list* ap)
{
#if AC_PLATFORM == AC_PLATFORM_WINDOWS
    char temp_buf[32 * 1024];
    wchar_t wtemp_buf[32 * 1024];

    std::size_t temp_len = vsnprintf(temp_buf, 32 * 1024, str, *ap);
    //vsnprintf returns -1 if the buffer is too small
    if (temp_len == std::size_t(-1))
    {
        temp_len = 32 * 1024 - 1;
    }

    std::size_t wtemp_len = 32 * 1024 - 1;
    Utf8toWStr(temp_buf, temp_len, wtemp_buf, wtemp_len);

    CharToOemBuffW(&wtemp_buf[0], &temp_buf[0], uint32(wtemp_len + 1));
    fprintf(out, "%s", temp_buf);
#else
    vfprintf(out, str, *ap);
#endif
}

bool Utf8ToUpperOnlyLatin(std::string& utf8String)
{
    std::wstring wstr;
    if (!Utf8toWStr(utf8String, wstr))
    {
        return false;
    }

    std::transform(wstr.begin(), wstr.end(), wstr.begin(), wcharToUpperOnlyLatin);

    return WStrToUtf8(wstr, utf8String);
}

std::string Acore::Impl::ByteArrayToHexStr(uint8 const* bytes, std::size_t arrayLen, bool reverse /* = false */)
{
    int32 init = 0;
    int32 end = arrayLen;
    int8 op = 1;

    if (reverse)
    {
        init = arrayLen - 1;
        end = -1;
        op = -1;
    }

    std::ostringstream ss;
    for (int32 i = init; i != end; i += op)
    {
        char buffer[4];
        snprintf(buffer, sizeof(buffer), "%02X", bytes[i]);
        ss << buffer;
    }

    return ss.str();
}

void Acore::Impl::HexStrToByteArray(std::string_view str, uint8* out, std::size_t outlen, bool reverse /*= false*/)
{
    ASSERT(str.size() == (2 * outlen));

    int32 init = 0;
    int32 end = int32(str.length());
    int8 op = 1;

    if (reverse)
    {
        init = int32(str.length() - 2);
        end = -2;
        op = -1;
    }

    uint32 j = 0;
    for (int32 i = init; i != end; i += 2 * op)
    {
        char buffer[3] = { str[i], str[i + 1], '\0' };
        out[j++] = uint8(strtoul(buffer, nullptr, 16));
    }
}

bool StringEqualI(std::string_view a, std::string_view b)
{
    return std::equal(a.begin(), a.end(), b.begin(), b.end(), [](char c1, char c2) { return std::tolower(c1) == std::tolower(c2); });
}

bool StringContainsStringI(std::string_view haystack, std::string_view needle)
{
    return haystack.end() !=
        std::search(haystack.begin(), haystack.end(), needle.begin(), needle.end(), [](char c1, char c2) { return std::tolower(c1) == std::tolower(c2); });
}

bool StringCompareLessI(std::string_view a, std::string_view b)
{
    return std::lexicographical_compare(a.begin(), a.end(), b.begin(), b.end(), [](char c1, char c2) { return std::tolower(c1) < std::tolower(c2); });
}

std::string GetTypeName(std::type_info const& info)
{
    return boost::core::demangle(info.name());
}
