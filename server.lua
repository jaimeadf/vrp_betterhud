-- Credits: Marmota#2533
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")


RegisterServerEvent("getBasics")
AddEventHandler("getBasics", function ()
    local user_id = vRP.getUserId({source})
    TriggerClientEvent("returnBasics",source,vRP.getHunger({user_id}),vRP.getThirst({user_id}))
end)