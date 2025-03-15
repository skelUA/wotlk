#ifndef WINTERGRASPEVENT_H
#define WINTERGRASPEVENT_H
#include "Define.h"
#include "Event.h"
#include "EventSerializer.h"

enum WINTERGRASP_REMAINING_TYPE
{
    EVENT_HANDLER_WINTERGRASP_REMAINING_5MIN,
    EVENT_HANDLER_WINTERGRASP_REMAINING_10MIN,
    EVENT_HANDLER_WINTERGRASP_REMAINING_15MIN,
};

class WintergraspRemainingEvent : public Event
{
    uint32 time;
    uint8_t remaining_type;
    uint8_t team;

public:
    explicit WintergraspRemainingEvent(const uint32 time, const uint8_t remaining_type, const uint8_t team)
        : time(time), remaining_type(remaining_type), team(team)
    {}

    [[nodiscard]] std::vector<uint8_t> Serialize() const override
    {
        EventSerializer serializer;
        serializer.Write(time);
        serializer.Write(remaining_type);
        serializer.Write(team);
        return serializer.GetBuffer();
    }

    [[nodiscard]] std::string GetPath() const override
    {
        return "/wg/remaining";
    }
};

#endif
