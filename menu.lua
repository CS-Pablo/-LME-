local menuVisible = false

RMenu.Add('monmenu', 'mainsubmenu', RageUI.CreateMenu("Job Menu", "Sélection rapide de votre boulot"))

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustReleased(0, 168) then -- Touche F7
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