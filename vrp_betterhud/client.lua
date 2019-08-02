local thirst, hunger = 0

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

RegisterNetEvent("vrp_betterhud:updateBasics")
AddEventHandler("vrp_betterhud:updateBasics", function(rHunger, rThirst)
    hunger, thirst = rHunger, rThirst
end)



