RegisterNetEvent("tyz_policebuzz:server:sendDispatch", function(data)
    TriggerClientEvent('cd_dispatch:AddNotification', -1, {
        job_table = {'police', 'sheriff'}, 
        coords = data.coords,
        title = 'Někdo zvoní!',
        message = 'Občan právě stiskl zvonek na '..data.street, 
        flash = 0,
        unique_id = data.unique_id,
        sound = 1,
        blip = {
            sprite = 280,
            color = 1,
            scale = 1.2,
            duration = 60,
            text = '911 - Zvonek na stanici',
        }
    })
end)

