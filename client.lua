-- Credits: Marmota#2533
local hunger, thirst = 0, 0

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(100)
        SendNUIMessage({
            show = IsPauseMenuActive(),
            armor = GetPedArmour(GetPlayerPed(-1)),
            life = (GetEntityHealth(GetPlayerPed(-1))-100),
            thirst = thirst,
            hunger = hunger
        })
    end
end)

RegisterNetEvent("returnBasics")
AddEventHandler("returnBasics", function (rHunger, rThirst)
    hunger = rHunger
    thirst = rThirst
end)