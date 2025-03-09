#ifndef LOGINEVENT_H
#define LOGINEVENT_H
#include "Event.h"
#include "EventSerializer.h"


class LoginEvent : public Event {
    ObjectGuid::LowType guid;
    std::string name;

public:
    explicit LoginEvent(const ObjectGuid::LowType guid, const std::string name)
        : guid(guid), name(name)
    {}

    [[nodiscard]] std::vector<uint8_t> Serialize() const override
    {
        EventSerializer serializer;
        serializer.Write(guid);
        serializer.Write(name);
        return serializer.GetBuffer();
    }

    [[nodiscard]] std::string GetPath() const override
    {
        return "/player/login";
    }
};

#endif