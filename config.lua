--Fichier de Configuration de la Ressources

Config              = {}


-- Configurations générales

Config.EnableDebug = true
Config.ResourceName = "lme_f6"

-- Configurations du menu
Config.MenuKey = 167  -- F6 (voir la liste des codes de touche)

-- CONFIG ZONE FAUT FAIRE UN POLE EMPLOI WSH
Config.Zones = {
    -- Zone 1
    ZoneName1 = {
        Position = vector3(0.0, 0.0, 0.0),
        Radius = 10.0,
        Type = "marker"
    },

}

Config.Jobs = {
    -- ... d'autres emplois existants ...

    {
        name = 'police',
        label = 'Policier',
        grade = 0,
        isPublic = true,
        canAccess = function(xPlayer)
            return xPlayer.getGroup() == 'police'
        end
    },
    {
        name = 'ems',
        label = 'EMS',
        grade = 0,
        isPublic = true,
        canAccess = function(xPlayer)
            return xPlayer.getGroup() == 'ambulance'
        end
    },
    {
        name = 'banker',
        label = 'Banquier',
        grade = 0,
        isPublic = true,
        canAccess = function(xPlayer)
            return xPlayer.getGroup() == 'banker'
        end
    }
}



--