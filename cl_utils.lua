RegisterNetEvent("fxJobMenu:sendNotification")
AddEventHandler("fxJobMenu:sendNotification", function(title, text, type, time)

    TriggerEvent('esx:showNotification', text, type)
end)