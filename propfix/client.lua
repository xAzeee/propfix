ESX = nil
local tamatafakapierogatrampkachujanastarejsiadacoxD = false
local autor = "Autorem Skryptu Jest xAze#7186 "

RegisterCommand("tfixped", function()
    local ped = PlayerPedId()
    local health = GetEntityHealth(ped)
    print(autor)
    if health > 0 then
        if not tamatafakapierogatrampkachujanastarejsiadacoxD then
            tamatafakapierogatrampkachujanastarejsiadacoxD = true
            local model = GetEntityModel(PlayerPedId())
            while not HasModelLoaded(model) do
                RequestModel(model)
                Citizen.Wait(0)
            end
            SetPlayerModel(PlayerId(), model)
            ped = PlayerPedId()
            SetPedDefaultComponentVariation(ped)
            TriggerEvent('skinchanger:getSkin', function(result)
                TriggerEvent('skinchanger:loadSkin', result)
                Citizen.Wait(50)
                SetEntityHealth(ped, health)
            end)
            Citizen.CreateThread(function()
                Citizen.Wait(10000)
                tamatafakapierogatrampkachujanastarejsiadacoxD = false
            end)
        else
            ESX.ShowNotification('Nie można używać tak często tej komendy!')
        end
    else
        ESX.ShowNotification('Nie można używać komendy podczas BW!')
    end
end)
print(autor)
