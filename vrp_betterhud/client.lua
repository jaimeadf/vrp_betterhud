local thirst, hunger = 0

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(100)
        local ped = PlayerPedId()
        SendNUIMessage({
            show = IsPauseMenuActive(),
            armor = GetPedArmour(ped),
            life = (100*GetEntityHealth(ped)/GetEntityMaxHealth(ped)),
            thirst = thirst,
            hunger = hunger
        })
    end
end)

RegisterNetEvent("vrp_betterhud:updateBasics")
AddEventHandler("vrp_betterhud:updateBasics", function(rHunger, rThirst)
    hunger, thirst = rHunger, rThirst
end)



