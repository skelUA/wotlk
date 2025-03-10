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
        std::unique_ptr<Event> data;
        {
            std::unique_lock lock(_queueMutex);
            _cond.wait(lock, [this]
            {
                return !_queue.empty();
            });

            data = std::move(_queue.front());
            _queue.pop();
        }

        SendData(data.get());
    }
}

void EventsHandler::SendData(const Event* event) const
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
    }
    catch (const std::exception& e)
    {
        std::ostringstream ss;
        ss << "Error: " << e.what() << std::endl;
        LOG_ERROR("server.worldserver", ss.str());
    }
}
