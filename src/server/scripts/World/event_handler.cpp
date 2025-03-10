#include "EventsHandler.h"
#include "LoginEvent.h"
#include "WorldScript.h"

class EventHandlerPlayerScript : public PlayerScript
{
public:
    EventHandlerPlayerScript() : PlayerScript("EventHandlerPlayerEventScript") { }

    // Test
    void OnLogin(Player* player) override
    {
        if (sEventsHandler->IsEnabled())
            sEventsHandler->Send(LoginEvent(player->GetGUID().GetCounter(), player->GetName()));
    }
};

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
    new EventHandlerPlayerScript();
    new EventHandlerWorldScript();
}