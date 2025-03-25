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
    [[nodiscard]] bool IsEnabled() const;

    template <typename EventType>
    void Send(EventType&& event)
    {
        static_assert(std::is_base_of_v<Event, std::decay_t<EventType>>, "EventType must derive from Event");
        EnqueueEvent(std::make_unique<std::decay_t<EventType>>(std::forward<EventType>(event)));
    }

private:
    struct DelayedEvent
    {
        std::chrono::steady_clock::time_point next_attempt;
        std::unique_ptr<Event> event;

        DelayedEvent(std::chrono::steady_clock::time_point t, std::unique_ptr<Event> e)
            : next_attempt(t), event(std::move(e)) {}
    };

    struct CompareDelayedEvent
    {
        bool operator()(const DelayedEvent& a, const DelayedEvent& b) const
        {
            return a.next_attempt > b.next_attempt;
        }
    };

    class MutablePriorityQueue : public std::priority_queue<DelayedEvent, std::vector<DelayedEvent>, CompareDelayedEvent>
    {
    public:
        DelayedEvent& mutable_top() {
            return const_cast<DelayedEvent&>(this->top());
        }
    };

    std::thread _thread;
    std::condition_variable _cond;
    std::mutex _queueMutex;
    MutablePriorityQueue _queue;
    std::string _host;
    uint32 _port = 0;

    bool SendData(const Event* event) const;
    void EnqueueEvent(std::unique_ptr<Event> event);
};

#define sEventsHandler EventsHandler::instance()

#endif
