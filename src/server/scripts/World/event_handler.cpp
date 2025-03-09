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
        if (sWorld->getBoolConfig(CONFIG_EVENTS_HANDLER_ENABLED))
            sEventsHandler->Send(LoginEvent(player->GetGUID().GetCounter(), player->GetName()));
    }
};

class EventHandlerWorldScript : public WorldScript
{
public:
    EventHandlerWorldScript() : WorldScript("EventHandlerWorldScript") { }

    void OnStartup() override
    {
        if (!sWorld->getBoolConfig(CONFIG_EVENTS_HANDLER_ENABLED))
            return;

        sEventsHandler->Init();
    }
};

void AddSC_event_handler_scripts()
{
    new EventHandlerPlayerScript();
    new EventHandlerWorldScript();
}