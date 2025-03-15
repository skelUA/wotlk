#include "EventSerializer.h"
#include <string>
#include <vector>

void EventSerializer::Write(const std::string &value)
{
    const auto len = static_cast<uint32_t>(value.size());
    Write(len);
    if (len > 0)
    {
        const size_t pos = _buffer.size();
        _buffer.resize(pos + len);
        memcpy(_buffer.data() + pos, value.data(), len);
    }
}

void EventSerializer::Write(const char *value)
{
    Write(std::string(value));
}