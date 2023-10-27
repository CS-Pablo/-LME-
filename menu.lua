local menuVisible = false

RMenu.Add('JobMenu', 'mainsubmenu', RageUI.CreateMenu("Job Menu", "Sélection rapide de votre boulot"))

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustReleased(0, Config.MenuKey) then -- Touche F6
            menuVisible = not menuVisible
            if menuVisible then
                RageUI.Visible(RMenu:Get('JobMenu', 'mainsubmenu'), true)
            else
                RageUI.Visible(RMenu:Get('JobMenu', 'mainsubmenu'), false)
            end
        end

        RageUI.Button("JOB SELECT", "Sélection de votre emploi", {}, true, function(Hovered, Active, Selected)
            if Selected then
                -- Vous pouvez ajouter un sous-menu ici
                local submenu = RMenu.Add('JobMenu', 'jobsubmenu', RageUI.CreateSubMenu("Sous-menu des emplois", "Sélectionnez votre emploi"))
                
                -- Ajoutez des boutons pour chaque emploi dans le sous-menu
                for _, job in pairs(Config.Jobs) do
                    RageUI.Button(job.label, "Sélectionnez le job " .. job.label, {}, true, function(Hovered, Active, Selected)
                        if Selected then
                            TriggerEvent('lme_f6:choisirJob', job.name)
                        end
                    end, submenu)
                end
            end
        end)
    end
end)

