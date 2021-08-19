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
            TriggerEvent('dopeNotify2:Alert', "Kolego...", "<span style='color:#c7c7c7'>Możesz nie spamić? <span style='color:#fff'>SERIO</span>!", 5000, 'info')
        end
    else
        TriggerEvent('dopeNotify2:Alert', "Co zawiodło?", "<span style='color:#c7c7c7'>No chyba coś cie boli <span style='color:#ff0000'>, ale że tak na bw</span>?", 5000, 'error')
    end
end)
print(autor)