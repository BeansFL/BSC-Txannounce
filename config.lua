

Config = {}

Config.NotificationName = "okokNotify" -- okokNotify, mythic-notify, p-notify
-- Notify


 


if Config.NotificationName == "b-notify" then
function SendRestartMessage(timeLeft)

    TriggerEvent('b-notify:notify', 'server', 'RESTART', 'The server is beeing restarted in ' .. timeLeft .. ' minutes' )
      
end

function SendKickedMessage(msg)

    -- You can comment this out. only for testing purpose
    SetNotificationTextEntry('STRING')
    AddTextComponentString(msg)
    DrawNotification(0,1) 
    TriggerEvent('b-notify:notify', 'server', 'RESTART', msg )
end


else if Config.NotificationName == "okokNotify" then

    function SendRestartMessage(timeLeft)

        exports['okokNotify']:Alert('Server', 'The server is beeing restarted in' .. timeLeft .. 'minutes', 5000, 'warning')
    end
    
    function SendKickedMessage(msg)
    
        -- You can comment this out. only for testing purpose
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1) 
        exports['okokNotify']:Alert('Server', 'KICK', msg, 'warning')

    end
    
else if Config.NotificationName == "mythic-notify" then
    function SendRestartMessage(timeLeft)

        exports['mythic_notify']:SendAlert('Server', 'The server is beeing restarted in' .. timeLeft .. 'minutes!', 2500, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
    end

    function SendKickedMessage(msg)
    
        -- You can comment this out. only for testing purpose
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1) 
        exports['mythic_notify']:SendAlert('Server', 'Kick', msg,  2500, { ['background-color'] = '#ffffff', ['color'] = '#000000' })

    end

else if Config.NotificationName == "p-notify" then

    function SendRestartMessage(timeLeft)
        TriggerEvent("pNotify:SendNotification", {text = "<span style='font-weight: 900'>" The server is beeing restarted in" .. timeLeft .. "minutes" </span>",
        layout = "centerLeft",
        timeout = 2000,
        progressBar = false,
        type = "error",
        animation = {
            open = "gta_effects_fade_in",
            close = "gta_effects_fade_out"
        }})
end
    end

    function SendKickedMessage(msg)
    
        -- You can comment this out. only for testing purpose
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1) 
        TriggerEvent("pNotify:SendNotification", {text = "<span style='font-weight: 900'>"Spieler gekickt" </span>",
        layout = "centerLeft",
        timeout = 2000,
        progressBar = false,
        type = "error",
        animation = {
            open = "gta_effects_fade_in",
            close = "gta_effects_fade_out"
        }})
end


