Shared = {}

Shared.kickedNotify = true
Shared.bannedNotify = true
Shared.warnedNotify = true



-- Set your notification here
function SendRestartMessage(timeLeft)

    TriggerEvent('b-notify:notify', 'server', 'RESTART', 'Server is in ' .. timeLeft .. ' beeing restarted!' )
      
end

function SendKickedMessage(msg)

    SetNotificationTextEntry('STRING')
    AddTextComponentString(msg)
    DrawNotification(0,1) 

    -- Set your notification here again 
    TriggerEvent('b-notify:notify', 'server', 'RESTART', msg )
    
end 