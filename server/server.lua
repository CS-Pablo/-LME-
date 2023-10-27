RegisterServerEvent('votre_resource:choisirJob')
AddEventHandler('votre_resource:choisirJob', function(jobName)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if jobName == 'ems' then
        xPlayer.setJob('ems', 0)
    elseif jobName == 'police' then
        xPlayer.setJob('police', 0)
    -- Ajoutez d'autres emplois ici
    end
end)