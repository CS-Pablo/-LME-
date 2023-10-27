--Fichier de Configuration de la Ressources

Config              = {}


-- Configurations générales
Config.Locale = GetConvar('esx:locale', 'fr')
Config.EnableDebug = true
Config.ResourceName = "lme_f6_job_menu"

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


--