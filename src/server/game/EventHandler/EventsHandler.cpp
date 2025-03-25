#include "EventsHandler.h"

EventsHandler* EventsHandler::instance()
{
    static EventsHandler instance;
    return &instance;
}

void EventsHandler::Init()
{
    _host = sWorld->getStringConfig(CONFIG_EVENTS_HANDLER_HOST);
    _port = sWorld->getIntConfig(CONFIG_EVENTS_HANDLER_PORT);
    _thread = std::thread(&EventsHandler::Process, this);
}

bool EventsHandler::IsEnabled() const
{
    return sWorld->getBoolConfig(CONFIG_EVENTS_HANDLER_ENABLED);
}

void EventsHandler::Process()
{
    while (true)
    {
        std::unique_lock<std::mutex> lock(_queueMutex);
        if (_queue.empty())
        {
            _cond.wait(lock);
        }
        else
        {
            auto now = std::chrono::steady_clock::now();
            const auto& next_event = _queue.top();
            if (next_event.next_attempt > now)
            {
                _cond.wait_until(lock, next_event.next_attempt);
            }
            else
            {
                DelayedEvent delayed_event = std::move(_queue.mutable_top());
                _queue.pop();
                lock.unlock();

                bool success = SendData(delayed_event.event.get());
                if (!success)
                {
                    std::unique_lock retry_lock(_queueMutex);
                    auto new_time = now + std::chrono::minutes(1);
                    _queue.emplace(new_time, std::move(delayed_event.event));
                    retry_lock.unlock();
                    _cond.notify_one();
                }
            }
        }
    }
}

bool EventsHandler::SendData(const Event* event) const
{
    try
    {
        auto buffer = event->Serialize();

        boost::asio::io_context io_context;
        tcp::resolver resolver(io_context);
        auto endpoints = resolver.resolve(_host, std::to_string(_port));
        std::string request = "POST " + event->GetPath() + " HTTP/1.1\r\n";
        request += "Host: " + _host + ':' + std::to_string(_port) + "\r\n";
        request += "Content-Type: application/octet-stream\r\n";
        request += "Content-Length: " + std::to_string(buffer.size()) + "\r\n";
        request += "Connection: close\r\n\r\n";

        boost::asio::streambuf response;

        if (sWorld->getBoolConfig(CONFIG_EVENTS_HANDLER_USE_SSL))
        {
            boost::asio::ssl::context ssl_context(boost::asio::ssl::context::sslv23_client);
            boost::asio::ssl::stream<tcp::socket> stream(io_context, ssl_context);
            boost::asio::connect(stream.next_layer(), endpoints);
            stream.handshake(boost::asio::ssl::stream_base::client);

            boost::asio::write(stream, boost::asio::buffer(request));
            boost::asio::write(stream, boost::asio::buffer(buffer));
            read_until(stream, response, "\r\n");
        }
        else
        {
            tcp::socket socket(io_context);
            boost::asio::connect(socket, endpoints);

            write(socket, boost::asio::buffer(request));
            write(socket, boost::asio::buffer(buffer));
            read_until(socket, response, "\r\n");
        }
        return true;
    }
    catch (const std::exception& e)
    {
        std::ostringstream ss;
        ss << "Error: " << e.what() << std::endl;
        LOG_ERROR("server.worldserver", ss.str());
        return false;
    }
}

void EventsHandler::EnqueueEvent(std::unique_ptr<Event> event)
{
    std::unique_lock lock(_queueMutex);
    _queue.emplace(std::chrono::steady_clock::now(), std::move(event));
    lock.unlock();
    _cond.notify_one();
}