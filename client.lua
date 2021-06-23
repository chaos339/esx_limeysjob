local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PlayerData              = {}
local isBlip              = false

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
	
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
	PlayerData.job = job
	Citizen.Wait(5000)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	
	Citizen.Wait(5000)
end)

-- MAP BLIP --
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10)
	if PlayerData.job ~= nil and PlayerData.job.name == 'x' and not isBlip then 
	isBlip = true
	blip = AddBlipForCoord(256.83,-1023.62,29.31) -- Blip on Map Position
	SetBlipSprite  (blip, 77) -- Blip Model , you can change it from : https://wiki.gtanet.work/index.php?title=Blips
	SetBlipDisplay (blip, 4)
	SetBlipScale   (blip, 0.9)
	SetBlipCategory(blip, 3)
	SetBlipColour  (blip, 73) -- Blip Color , you can change it from : https://gtaforums.com/topic/864881-all-blip-color-ids-pictured/
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Limey's Juicery") -- Name of the Blip on the map
	EndTextCommandSetBlipName(blip)
  end
  end
end)
-- MAP BLIP --

local inKitchen = false

-- Process Menu
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		
		if PlayerData.job ~= nil and PlayerData.job.name == 'x' then --job name
		DrawMarker(21, 253.33,-1019.04,29.54, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 255,0,0, 100, false, true, 2, false, false, false, false) -- Cooking Marker Position.
			
		local coords = GetEntityCoords(PlayerPedId())
		local distance = GetDistanceBetweenCoords(coords, 253.33,-1019.04,29.54, true)
		
		if distance < 1.0 then
			ESX.ShowHelpNotification('Press [E] To Process Fruits')	
			inKitchen = true
		elseif distance > 1.0 then
			inKitchen = false
		end
		
		if IsControlJustReleased(0, Keys['E']) and inKitchen then
			ESX.UI.Menu.CloseAll()
			openMenu()
		end
		end
	end
end)


-- Finalization Menu
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		
		if PlayerData.job ~= nil and PlayerData.job.name == 'x' then --job name
		DrawMarker(21, 251.99,-1022.28,29.54, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 255,0,0, 100, false, true, 2, false, false, false, false) -- Brewing Marker Position
			
		local coords = GetEntityCoords(PlayerPedId())
		local distance = GetDistanceBetweenCoords(coords, 251.99,-1022.28,29.54, true)
		
		if distance < 1.0 then
			ESX.ShowHelpNotification('Press [E] To Make A Juice')	
			inKitchen = true
		elseif distance > 1.0 then
			inKitchen = false
		end
		
		if IsControlJustReleased(0, Keys['E']) and inKitchen then
			ESX.UI.Menu.CloseAll()
			openMenu2()
		end
		end
	end
end)

-- Food Menu
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		
		if PlayerData.job ~= nil and PlayerData.job.name == 'x' then --job name
		DrawMarker(21, 254.09,-1017.33,29.54, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 255,0,0, 100, false, true, 2, false, false, false, false) -- Brewing Marker Position
			
		local coords = GetEntityCoords(PlayerPedId())
		local distance = GetDistanceBetweenCoords(coords, 254.09,-1017.33,29.54, true)
		
		if distance < 1.0 then
			ESX.ShowHelpNotification('Press [E] To Make A Food')	
			inKitchen = true
		elseif distance > 1.0 then
			inKitchen = false
		end
		
		if IsControlJustReleased(0, Keys['E']) and inKitchen then
			ESX.UI.Menu.CloseAll()
			openMenu3()
		end
		end
	end
end)

-- Processing fruits into powders
RegisterNetEvent('limeysprocessing:animation')
AddEventHandler('limeysprocessing:animation', function()
	TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_WELDING", 0, true) -- Processing Animation
	Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms
	ClearPedTasksImmediately(PlayerPedId()) -- Function to stop the animation
end)

-- Finalizing the powders to drinks
RegisterNetEvent('limeysfinalizing:animation')
AddEventHandler('limeysfinalizing:animation', function()
	TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true) -- Brewing Animation. You can change the animation to something else to be more realistic.
	Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms
	ClearPedTasksImmediately(PlayerPedId()) -- Function to stop the animation
end)

-- Food animation takoyaki and sushi
RegisterNetEvent('limeyshandmake:animation')
AddEventHandler('limeyshandmake:animation', function()
	TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true) -- Sushi and takoyaki making animation
	Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms
	ClearPedTasksImmediately(PlayerPedId()) -- Function to stop the animation
end)

-- Processing Menu
function openMenu()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'limeysprocessing',
        {
            title    = 'Limeys Processor',
            align    = 'center',
            elements = { 
                { label = 'Make A Manggo Powder ', value = 'process1' }, -- Change the "Menu 1" label to your combination item 
                { label = 'Make A Strawberry Powder ', value = 'process2' },
				{ label = 'Make A Lemon Powder ', value = 'process3' }
            }
        },
    function(data, menu)
        local value = data.current.value

        if value == 'process1' then
            menu.close()
            TriggerServerEvent('limeysprocessing:combination1')
		elseif value == 'process2' then
            menu.close()
            TriggerServerEvent('limeysprocessing:combination2')
		elseif value == 'process3' then
            menu.close()
            TriggerServerEvent('limeysprocessing:combination3')
        end
    end,
    function(data, menu)
        menu.close()
    end)
end


-- Brewing Menu
function openMenu2()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'limeysfinalizing',
        {
            title    = 'Limeys Brewery',
            align    = 'center',
            elements = { 
                { label = 'Brew A ManggoLong ', value = 'brew1' }, 
                { label = 'Brew A BerryLong ', value = 'brew2' },
				{ label = 'Brew A Balemon ', value = 'brew3' }
            }
        },
    function(data, menu)
        local value = data.current.value

		if value == 'brew1' then
            menu.close()
            TriggerServerEvent('limeysfinalizing:combination1')
		elseif value == 'brew2' then
            menu.close()
            TriggerServerEvent('limeysfinalizing:combination2')
		elseif value == 'brew3' then
            menu.close()
            TriggerServerEvent('limeysfinalizing:combination3')
        end
    end,
    function(data, menu)
        menu.close()
    end)
end

-- Handmaking Food Menu
function openMenu3()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'limeyshandmake',
        {
            title    = 'Limeys Kitchen',
            align    = 'center',
            elements = { 
                { label = 'Make A Takoyaki ', value = 'handmake1' }, 
                { label = 'Make A Sushi ', value = 'handmake2' }
            }
        },
    function(data, menu)
        local value = data.current.value

		if value == 'handmake1' then
            menu.close()
            TriggerServerEvent('limeyshandmake:limeysfood1')
		elseif value == 'handmake2' then
            menu.close()
            TriggerServerEvent('limeyshandmake:limeysfood2')
        end
    end,
    function(data, menu)
        menu.close()
    end)
end
