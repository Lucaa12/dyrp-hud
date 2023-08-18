RegisterNetEvent("dyrp-hud:client:update")
AddEventHandler("dyrp-hud:client:update", function(money, bank)
    SendNUIMessage({
        action = "update",
        money = money,
        bank = bank
    })
end)

local refresh_time = 5 -- seconds

CreateThread(function()
    while true do
        Wait(refresh_time * 1000)
        TriggerServerEvent("dyrp-hud:server:update")
    end
end)