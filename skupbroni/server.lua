-------------------------------------------
---      SKUP BRONI BY WIERTARKOV       ---
-------------------------------------------

ESX = nil

TriggerEvent('esx:getShtestaredObjtestect', function(obj) ESX = obj end)

RegisterServerEvent('mrp_skup:sprzedaj')
AddEventHandler('mrp_skup:sprzedaj', function(itemName, price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if itemName == 'WEAPON_KNIFE' then --1500
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addMoney(price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_STUNGUN' then --10000
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addMoney(price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_SWITCHBLADE' then --1750
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addMoney(price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_BAT' then --1125
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addMoney(price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_HAMMER' then --750
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addMoney(price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_PISTOL' then --17500
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 250)
			xPlayer.addMoney(price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_PISTOL_MK2' then --25000
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 250)
			xPlayer.addMoney(price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_BOTTLE' then --1750
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_MACHETE' then --2500
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_POOLCUE' then --1000
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_GOLFCLUB' then --1500
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 1)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_SNSPISTOL' then --15000
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 250)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_VINTAGEPISTOL' then --25000
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 250)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_PISTOL50' then --35000
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 250)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_HEAVYPISTOL' then --80000
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 250)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	elseif itemName == 'WEAPON_COMBATPISTOL' then --60000
		if xPlayer.hasWeapon(itemName) then
			TriggerClientEvent('mrp_skup:masnydodatek', source, itemName)
			Citizen.Wait(5700)
			xPlayer.removeWeapon(itemName, 250)
			xPlayer.addAccountMoney('black_money', price)
			TriggerClientEvent('esx:showNotification', _source, '~y~Sprzedałeś: ~b~'..ESX.GetWeaponLabel(itemName)..' ~y~za ~b~'..price..'$ ~y~nieopodatkowanej gotówki')
		else
			xPlayer.showNotification('Nie posiadasz tej broni!')
		end
	end
end)