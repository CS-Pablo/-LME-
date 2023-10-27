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

        RageUI.IsVisible(RMenu:Get('JobMenu', 'mainsubmenu'), true, true, true, function()
            -- Ajoutez vos boutons ici
        end, function()
        end)
    end
end)