local menuVisible = false

RMenu.Add('JobMenu', 'mainsubmenu', RageUI.CreateMenu("Job Menu", "Sélection rapide de votre boulot"))

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustReleased(0, 167) -- Touche F6
        then 
            menuVisible = not menuVisible
            if menuVisible then
                RageUI.Visible(RMenu:Get('monmenu', 'mainsubmenu'), true)
            else
                RageUI.Visible(RMenu:Get('monmenu', 'mainsubmenu'), false)
            end
        end

        RageUI.IsVisible(RMenu:Get('monmenu', 'mainsubmenu'), true, true, true, function()
            -- Ajoutez vos boutons ici
        end, function()
        end)
    end
end)