

local menuVisible = false
local jobSubMenu


local mainMenu = RageUI.CreateMenu("Job Menu", "Sélection rapide de votre boulot");


    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            if IsControlJustReleased(0, Config.MenuKey) then -- Touche F6
                menuVisible = not menuVisible
                if menuVisible then
                    if not RageUI.Visible(mainMenu) then
                        RageUI.Visible(mainMenu, true)
                    end
                else
                    if RageUI.Visible(mainMenu) then
                        RageUI.Visible(mainMenu, false)
                    end
                end
            end
    
            if RageUI.Visible(mainMenu) then
                RageUI.IsVisible(mainMenu, function()
                    RageUI.Button("JOB SELECT", "Sélection de votre emploi", {}, true, function(Hovered, Active, Selected)
                        if Selected then
                            if not jobSubMenu then
                                jobSubMenu = RageUI.CreateSubMenu(mainMenu, "Sous-menu des emplois", "Sélectionnez votre emploi")
                                for _, job in pairs(Config.Jobs) do
                                    RageUI.Button(job.label, "Sélectionnez le job " .. job.label, {}, true, function(Hovered, Active, Selected)
                                        if Selected then
                                            TriggerEvent('lme:choisirJob', job.name)
                                        end
                                    end, jobSubMenu)
                                end
                            end
                        end
                    end)
                end)
            end
        end
    end)










