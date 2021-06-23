ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
 
-- Mango Powder
RegisterServerEvent('limeysprocessing:combination1') -- Item Combination 1 
AddEventHandler('limeysprocessing:combination1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('mango_fruit') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('sugar') -- Item 2 

	if xItem1.count > 2 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			TriggerClientEvent('limeysprocessing:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('mango_powder', 1)	-- add the combined item to inventory
			xPlayer.removeInventoryItem('mango_fruit', 3) -- removing the mango_fruit (Item 1)
			xPlayer.removeInventoryItem('sugar', 2) -- removing the Sugar  (Item 2 )
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sugar. [Need 2]')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Mango Fruit. [Need 3]')
	end 
end)

-- Strawberry Powder
RegisterServerEvent('limeysprocessing:combination2') -- Item Combination 2
AddEventHandler('limeysprocessing:combination2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('strawberry_fruit') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('sugar') -- Item 2 

	if xItem1.count > 2 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			TriggerClientEvent('limeysprocessing:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('strawberry_powder', 1)	-- add the combined item to inventory
			xPlayer.removeInventoryItem('strawberry_fruit', 3) -- strawberry_fruit (Item 1)
			xPlayer.removeInventoryItem('sugar', 2) -- removing the Sugar  (Item 2 )
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sugar. [Need 2]')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Strawberry Fruit. [Need 3]')
	end 
end)

-- Lemon Powder
RegisterServerEvent('limeysprocessing:combination3') -- Item Combination 3
AddEventHandler('limeysprocessing:combination3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('lemon_fruit') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('sugar') -- Item 2 

	if xItem1.count > 2 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			TriggerClientEvent('limeysprocessing:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('lemon_powder', 1)	-- add the combined item to inventory
			xPlayer.removeInventoryItem('lemon_fruit', 3) -- strawberry_fruit (Item 1)
			xPlayer.removeInventoryItem('sugar', 2) -- removing the Sugar  (Item 2 )
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sugar. [Need 2]')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Lemon Fruit. [Need 3]')
	end 
end)
 
-- Manggolong
RegisterServerEvent('limeysfinalizing:combination1') -- Item Combination 1
AddEventHandler('limeysfinalizing:combination1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('mango_powder') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('sugar') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('water') -- Item 3
	
	if xItem1.count > 2 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 1 then -- Item 3 count
					TriggerClientEvent('limeysfinalizing:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('manggolong', 1) -- Puts the brewed item into your inventory
					xPlayer.removeInventoryItem('mango_powder', 3) -- removing the mango_powder (Item 1)
					xPlayer.removeInventoryItem('sugar', 2) -- removing the Sugar  (Item 2)
					xPlayer.removeInventoryItem('water', 2) -- removing the Water (Item 3)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough Water. [Need 2]')
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sugar. [Need 2]')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Manggo Powder. [Need 3]')
	end 
end)

-- Berrylong
RegisterServerEvent('limeysfinalizing:combination2') -- Item Combination 2
AddEventHandler('limeysfinalizing:combination2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('strawberry_powder') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('sugar') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('water') -- Item 3
	
	if xItem1.count > 2 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 1 then -- Item 3 count
					TriggerClientEvent('limeysfinalizing:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('berrylong', 1) -- Puts the brewed item into your inventory
					xPlayer.removeInventoryItem('strawberry_powder', 3) -- removing the strawberry_powder (Item 1)
					xPlayer.removeInventoryItem('sugar', 2) -- removing the Sugar  (Item 2)
					xPlayer.removeInventoryItem('water', 2) -- removing the Water (Item 3)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough Water. [Need 2]')
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sugar. [Need 2]')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Strawberry Powder. [Need 3]')
	end 
end)

-- Balemon
RegisterServerEvent('limeysfinalizing:combination3') -- Item Combination 3
AddEventHandler('limeysfinalizing:combination3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('lemon_powder') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('sugar') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('water') -- Item 3
	
	if xItem1.count > 2 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 1 then -- Item 3 count
					TriggerClientEvent('limeysfinalizing:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('balemon', 1) -- Puts the brewed item into your inventory
					xPlayer.removeInventoryItem('lemon_powder', 3) -- removing the lemon_powder (Item 1)
					xPlayer.removeInventoryItem('sugar', 2) -- removing the Sugar  (Item 2)
					xPlayer.removeInventoryItem('water', 2) -- removing the Water (Item 3)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough Water. [Need 2]')
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sugar. [Need 2]')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Lemon Powder. [Need 3]')
	end 
end)

-- Takoyaki
RegisterServerEvent('limeyshandmake:limeysfood1') -- Item Combination 1 
AddEventHandler('limeyshandmake:limeysfood1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('eggfl_mixture') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('squid_bits') -- Item 2 

	if xItem1.count > 3 then  -- Item 1  count 
		if xItem2.count > 3 then -- Item 2 count
			TriggerClientEvent('limeyshandmake:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('limeys_takoyaki', 2)	-- add the combined item to inventory
			xPlayer.removeInventoryItem('eggfl_mixture', 4) -- removing the egg flour mixture (Item 1)
			xPlayer.removeInventoryItem('squid_bits', 4) -- removing the Squid Bits  (Item 2 )
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Squid Bits. [Need 4]')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Egg Flour Mixture. [Need 4]')
	end 
end)

-- Sushi
RegisterServerEvent('limeyshandmake:limeysfood2') -- Item Combination 2
AddEventHandler('limeyshandmake:limeysfood2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('sushi_rice') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('seaweed_paper') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('fish') -- Item 3
	
	if xItem1.count > 3 then  -- Item 1  count 
		if xItem2.count > 3 then -- Item 2 count
			if xItem3.count > 4 then -- Item 3 count
					TriggerClientEvent('limeyshandmake:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('limeys_sushi', 2) -- Puts the brewed item into your inventory
					xPlayer.removeInventoryItem('sushi_rice', 4) -- removing the Sushi Rice (Item 1)
					xPlayer.removeInventoryItem('seaweed_paper', 4) -- removing the Seaweed Paper  (Item 2)
					xPlayer.removeInventoryItem('fish', 5) -- removing the Fish (Item 3)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough Fish. [Need 5]')
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Seaweed Paper. [Need 4]')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sushi Rice. [Need 4]')
	end 
end)



