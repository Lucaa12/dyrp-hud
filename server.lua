-- PROXY AND TUNNEL
local Proxy = module("lib/Proxy")
local Tunnel = module("lib/Tunnel")

local vRP = Proxy.getInterface("vRP")
local vRPclient = Tunnel.getInterface("vRP", "vRP_hud")

-- HUD
RegisterServerEvent("dyrp-hud:server:update")
AddEventHandler("dyrp-hud:server:update", function()
    local user_id = vRP.getUserId({source})
    if user_id ~= nil then
        local money = formatMoney(vRP.getMoney({user_id}))
        local bank = formatMoney(vRP.getBankMoney({user_id}))
        
        TriggerClientEvent("dyrp-hud:client:update", source, money, bank)
    end
end)

-- FORMAT MONEY
function formatMoney(amount)
    local formatted = amount
    while true do  
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1.%2')
        if (k==0) then
            break
        end
    end
    return formatted
end