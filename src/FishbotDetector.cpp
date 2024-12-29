#include "ScriptMgr.h"
#include "Player.h"
#include "Spell.h"
#include "SpellInfo.h"
#include "World.h"
#include "Config.h"
#include "Chat.h"
#include "ObjectAccessor.h"

#include <unordered_map>
#include <ctime> // time(), difftime()

// Структура для зберігання даних про риболовлю конкретного гравця
struct FishInfo
{
    time_t lastCastTime;
    uint32 suspiciousCount;
};

class FishbotDetector : public PlayerScript
{
public:
    FishbotDetector() : PlayerScript("FishbotDetector")
    {
        // Зчитаємо налаштування з .conf (якщо вони існують і прописані у worldserver.conf):
        m_minInterval = sConfigMgr->GetIntDefault("FishbotDetector.MinInterval", 10);
        m_maxStrikes  = sConfigMgr->GetIntDefault("FishbotDetector.MaxStrikes", 5);

        TC_LOG_INFO("server.loading", " [FishbotDetector] MinInterval = %u, MaxStrikes = %u",
            m_minInterval, m_maxStrikes);
    }

    void OnSpellCastStart(Player* player, Spell* spell, bool /*skipCheck*/) override
    {
        if (!player || !spell)
            return;

        const SpellInfo* spellInfo = spell->GetSpellInfo();
        if (!spellInfo)
            return;

        // Змініть SpellID на те, що відповідає Fishing у вашій версії WoW.
        static const uint32 FISHING_SPELL_ID = 131476;

        if (spellInfo->Id == FISHING_SPELL_ID)
        {
            uint64 guid = player->GetGUID();
            time_t now = time(nullptr);

            // Якщо немає запису - з ініціалізується за замовчуванням FishInfo{0,0}
            FishInfo& info = m_fishData[guid];
            double diff = difftime(now, info.lastCastTime);

            info.lastCastTime = now;

            // Якщо каст відбувся швидше, ніж налаштований інтервал:
            if (diff < m_minInterval)
            {
                info.suspiciousCount++;

                if (info.suspiciousCount >= m_maxStrikes)
                {
                    // Можемо надіслати повідомлення в широкий чат
                    sWorld->SendServerMessage(SERVER_MSG_STRING,
                        "|cFFFF0000[AntiBot]|r Гравець " + std::string(player->GetName()) +
                        " підозріло часто використовує рибалку! (fishbot?)"
                    );

                    // При бажанні:
                    // player->KickPlayer();
                    // info.suspiciousCount = 0; // щоб не спамити
                }
            }
            else
            {
                // Якщо інтервал "нормальний", скидаємо лічильник
                info.suspiciousCount = 0;
            }
        }
    }

private:
    // Глобальне сховище даних: GUID -> FishInfo
    static std::unordered_map<uint64, FishInfo> m_fishData;

    // Параметри (читаються з .conf)
    uint32 m_minInterval;
    uint32 m_maxStrikes;
};

// Ініціалізація статичного контейнера
std::unordered_map<uint64, FishInfo> FishbotDetector::m_fishData;

void Addmod_fishbot_detectorScripts()
{
    new FishbotDetector();
}
