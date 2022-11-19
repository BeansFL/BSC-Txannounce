ESX = exports['es_extended']:getSharedObject()



Config = {}

Config.NotificationName = "okokNotify" -- okokNotify, mythic-notify, p-notify, b-notify



 


if Config.NotificationName == "b-notify" then
function SendRestartMessage(timeLeft)

    TriggerEvent('b-notify:notify', 'server', 'RESTART', 'Der Server wird in ' .. timeLeft .. ' neu gestartet' )
      
end

function SendKickedMessage(msg)


    SetNotificationTextEntry('STRING')
    AddTextComponentString(msg)
    DrawNotification(0,1) 
    TriggerEvent('b-notify:notify', 'server', 'RESTART', msg )
end


else if Config.NotificationName == "okokNotify" then

    function SendRestartMessage(timeLeft)

        exports['okokNotify']:Alert('Server', 'Der Server wird in' .. timeLeft .. 'neu gestartet', 5000, 'warning')
    end
    
    function SendKickedMessage(msg)
    

        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1) 
        exports['okokNotify']:Alert('Server', 'KICK', msg, 'warning')

    end
    
else if Config.NotificationName == "mythic-notify" then
    function SendRestartMessage(timeLeft)

        exports['mythic_notify']:SendAlert('Server', 'Der Server wird in' .. timeLeft .. 'neu gestartet!', 2500, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
    end

    function SendKickedMessage(msg)
    

        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1) 
        exports['mythic_notify']:SendAlert('Server', 'Kick', msg,  2500, { ['background-color'] = '#ffffff', ['color'] = '#000000' })

    end


