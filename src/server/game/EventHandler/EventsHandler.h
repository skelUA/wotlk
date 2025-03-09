#ifndef EVENTHANDLER_H
#define EVENTHANDLER_H


#include <queue>
#include <boost/asio/ssl.hpp>
#include "Event.h"


class EventsHandler {
public:
    static EventsHandler* instance();
    void Init();
    void Process();

    template <typename EventType>
    void Send(EventType&& event)
    {
        static_assert(std::is_base_of_v<Event, std::decay_t<EventType>>, "EventType must derive from Event");
        {
            std::lock_guard lock(_queueMutex);
            _queue.push(std::make_unique<std::decay_t<EventType>>(std::forward<EventType>(event)));
        }
        _cond.notify_one();
    }

private:
    std::thread _thread;
    std::condition_variable _cond;
    std::mutex _queueMutex;
    std::queue<std::unique_ptr<Event>> _queue;
    std::string _host;
    uint32 _port = 0;

    void SendData(const Event* event) const;
};

#define sEventsHandler EventsHandler::instance()

#endif
