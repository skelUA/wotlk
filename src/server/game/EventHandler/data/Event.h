#ifndef EVENT_H
#define EVENT_H

class Event
{
public:
    virtual ~Event() = default;
    [[nodiscard]] virtual std::vector<uint8_t> Serialize() const = 0;
    [[nodiscard]] virtual std::string GetPath() const = 0;
};

#endif
