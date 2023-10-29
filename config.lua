--Fichier de Configuration de la Ressources
--
--

Config              = {}


-- Configurations générales

Config.EnableDebug = true
Config.ResourceName = "lme"

-- Configurations du menu
Config.MenuKey = 167  -- F6 (voir la liste des codes de touche)

Config.MenuStyle = {
	Margins = { left = 10, top = 10 }, -- [table] → Set the menu margins
	BannerStyle = {
		Color = { r = 150, g = 50, b = 50, a = 100 }, -- [table] → Set the banner color if no custom banner image is set
		UseGlareEffect = true, -- [boolean] → Use the glare effect or not
		UseInstructionalButtons = true, -- [boolean] → Use the instructionals buttons or not
		ImageUrl = nil, -- [nil/string] → Set a custom image url if you want (if set, it will disable the Color configuration)
		ImageSize = { Width = 512, Height = 128 }, -- [table] → Set the image (ImageUrl) size un pixels
		widthOffset = 0, -- [integer] → Offset of the menu (default: 0, max: 100)
	},
}

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