#include "EventsHandler.h"
#include "WorldScript.h"

class EventHandlerWorldScript : public WorldScript
{
public:
    EventHandlerWorldScript() : WorldScript("EventHandlerWorldScript") { }

    void OnStartup() override
    {
        if (!sEventsHandler->IsEnabled())
            return;

        sEventsHandler->Init();
    }
};

void AddSC_event_handler_scripts()
{
    new EventHandlerWorldScript();
}