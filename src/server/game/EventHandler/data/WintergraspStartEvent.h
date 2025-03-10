#ifndef WINTERGRASPSTARTEVENT_H
#define WINTERGRASPSTARTEVENT_H
#include "Event.h"
#include "EventSerializer.h"

class WintergraspStartEvent : public Event
{
    uint32 time;

public:
    explicit WintergraspStartEvent(const uint32 time)
        : time(time)
    {}

    [[nodiscard]] std::vector<uint8_t> Serialize() const override
    {
        EventSerializer serializer;
        serializer.Write(time);
        return serializer.GetBuffer();
    }

    [[nodiscard]] std::string GetPath() const override
    {
        return "/wg/start";
    }
};

#endif
