RegisterNetEvent("gh_txAnnouncer:SendRestartMessage", function(timeLeft)
    SendRestartMessage(timeLeft)
end)

RegisterNetEvent("gh_txAnnouncer:SendKickedMessage", function(msg)
    SendKickedMessage(msg)
end)