CreateThread(function()
    for i, coords in pairs(Config.BuzzLocations) do
        exports.ox_target:addBoxZone({
            coords = coords,
            size = vec3(0.5, 0.5, 1.0),
            rotation = 0,
            debug = false,
            options = {
                {
                    name = "doorbell_alert_" .. i,
                    icon = "fa-solid fa-bell",
                    label = "Stisknout zvonek",
                    onSelect = function()
                        local data = exports['cd_dispatch']:GetPlayerInfo()
                        TriggerServerEvent("tyz_policebuzz:server:sendDispatch", data)
                    end
                }
            }
        })
    end
end)
