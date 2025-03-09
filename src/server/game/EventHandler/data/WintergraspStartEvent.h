#ifndef WINTERGRASPSTARTEVENT_H
#define WINTERGRASPSTARTEVENT_H
#include "Event.h"
#include "EventSerializer.h"

class WintergraspStartEvent : public Event
{
public:
    [[nodiscard]] std::vector<uint8_t> Serialize() const override
    {
        return {};
    }

    [[nodiscard]] std::string GetPath() const override
    {
        return "/wg/start";
    }
};

#endif
