#ifndef WINTERGRASPENDEVENT_H
#define WINTERGRASPENDEVENT_H
#include "Event.h"
#include "EventSerializer.h"

class WintergraspEndEvent : public Event
{
    uint32 time;

public:
    explicit WintergraspEndEvent(const uint32 time)
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
        return "/wg/end";
    }
};

#endif
