CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, false)
            if vehicle and GetPedInVehicleSeat(vehicle, -1) == ped then
                -- Keep engine health at max
                SetVehicleEngineHealth(vehicle, 1000.0)
            end
        end
    end
end)
