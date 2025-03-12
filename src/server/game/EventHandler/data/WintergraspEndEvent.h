#ifndef WINTERGRASPENDEVENT_H
#define WINTERGRASPENDEVENT_H
#include "Event.h"
#include "EventSerializer.h"

class WintergraspEndEvent : public Event
{
    uint32 time;
    uint8_t team;

public:
    explicit WintergraspEndEvent(const uint32 time, const uint8_t team)
        : time(time), team(team)
    {}

    [[nodiscard]] std::vector<uint8_t> Serialize() const override
    {
        EventSerializer serializer;
        serializer.Write(time);
        serializer.Write(team);
        return serializer.GetBuffer();
    }

    [[nodiscard]] std::string GetPath() const override
    {
        return "/wg/end";
    }
};

#endif
