#ifndef EVENTSERIALIZER_H
#define EVENTSERIALIZER_H
#include <string>
#include <vector>

class EventSerializer {
public:
    using Buffer = std::vector<uint8_t>;

    [[nodiscard]] const Buffer& GetBuffer() { return _buffer; }

    template<typename T>
    std::enable_if_t<std::is_arithmetic_v<T>>
    Write(const T& value)
    {
        const size_t pos = _buffer.size();
        _buffer.resize(pos + sizeof(T));
        memcpy(_buffer.data() + pos, &value, sizeof(T));
    }

    void Write(const std::string& value);
    void Write(const char* value);

private:
    Buffer _buffer;
};

#endif
