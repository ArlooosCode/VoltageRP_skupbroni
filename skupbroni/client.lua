-------------------------------------------
---      SKUP BRONI BY WIERTARKOV       ---
-------------------------------------------

ESX                             = nil
local PlayerData                = {}
local skup						= false

CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShtestaredObjtestect', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)
--[[
CreateThread(function()		
	local blip = AddBlipForCoord(1510.46, -2101.37, 75.72)
	SetBlipSprite (blip, 150)
	SetBlipDisplay(blip, 4)
	SetBlipColour (blip, 5)
	SetBlipScale (blip, 1.0)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Skup broni")
	EndTextCommandSetBlipName(blip)
end)]]
--gruuuuuuuuuuuuby debiiiiiiiiiiiiiiiillllllllllll
-- kordy peda -- czwarta wartość = kierunek patrzenia
CreateThread(function()
	RequestModel(GetHashKey('u_m_y_proldriver_01'))
	while not HasModelLoaded(GetHashKey('u_m_y_proldriver_01')) do
		Citizen.Wait(100)
	end
	local ped = Citizen.InvokeNative(0xD49F9B0955C367DE, 4, GetHashKey('u_m_y_proldriver_01'), 1232.6959228516, -3042.9758300781, 13.29768371582, 355.84, false, true)
	FreezeEntityPosition(ped, true)
	SetEntityInvincible(ped, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GUARD_STAND", 0, true)
end)

CreateThread(function()
	while true do
		Citizen.Wait(500)
		if exports['esx_policejob']:IsCuffed() or IsPlayerDead(Citizen.InvokeNative(0x43A66C31C68491C0, -1)) then
			ESX.UI.Menu.CloseAll()
		end
	end
end)
	--- tu ustawiasz kordy miejscowki, all takie same moga byc
CreateThread(function()
	local timer = GetGameTimer()
	while true do
		Citizen.Wait(7)		
		local coords = GetEntityCoords(Citizen.InvokeNative(0x43A66C31C68491C0, -1))	
		if PlayerData.job ~= nil and (PlayerData.job.name == 'police' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'sheriff' or PlayerData.job.name == 'offsheriff') then
		else
			if not IsPedInAnyVehicle(Citizen.InvokeNative(0x43A66C31C68491C0, -1), false) then
				if #(coords - vec3(1233.3527832031, -3041.0893554688, 14.297692298889)) <= 10.0 and not skup and not exports['esx_policejob']:IsCuffed() and not IsPlayerDead(Citizen.InvokeNative(0x43A66C31C68491C0, -1)) then		
					DrawMarker(1, 1233.3527832031, -3041.0893554688, 13.297692298889, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 158, 189, 100, false, true, 2, false, false, false, false)
					if #(coords - vec3(1233.3527832031, -3041.0893554688, 14.297692298889)) <= 1.2 then	
						ESX.ShowHelpNotification('Naciśnij ~INPUT_CONTEXT~ aby ~y~sprzedać ~s~broń')
						ESX.ShowFloatingHelpNotification('~b~ SKUP BRONI', vec3(11233.3527832031, -3041.0893554688, 14.297692298889))
						if IsControlJustReleased(0, 38) and timer < GetGameTimer() then
							skup = true
							skupbronimenu()
							
							timer = GetGameTimer() + 1000
						end
					end
				end
			end
			-- tu ustawiasz kordy miejscowki też
			if #(coords - vec3(1233.3527832031, -3041.0893554688, 14.297692298889)) >= 2.0 then
				if skup then
					ESX.UI.Menu.CloseAll()
					skup = false
				end
			end
					
			if #(coords - vec3(1233.3527832031, -3041.0893554688, 14.297692298889)) <= 10.0 then
				if skup and exports['esx_policejob']:IsCuffed() then
					ESX.UI.Menu.CloseAll()
				end
			end
		end	
	end
end)
-- tu ustawiasz kordy miejscowki też
CreateThread(function()
	while true do
		Citizen.Wait(1000)
		local coords = GetEntityCoords(Citizen.InvokeNative(0x43A66C31C68491C0, -1))
		if #(coords - vec3(1233.3527832031, -3041.0893554688, 14.297692298889)) <= 10.0 then		
			if ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'skupbroni_menu') then
				if exports['esx_policejob']:IsCuffed() or IsPlayerDead(Citizen.InvokeNative(0x43A66C31C68491C0, -1)) then
					ESX.UI.Menu.CloseAll()
				end
			end
		end
	end
end)

CreateThread(function()
	while true do
		Citizen.Wait(0)
		if skup then
			DisableControlAction(0, 289, true) --F2
			DisableControlAction(0, 288, true) --F1 
			DisableControlAction(0, 170, true) --F3
			DisableControlAction(0, 167, true) --F6
			DisableControlAction(0, 57, true) --F10
			DisableControlAction(0, 21, true) --LEFTSHIFT
			DisableControlAction(0, 20, true) --Z
			DisableControlAction(0, 36, true) --LEFTCTRL
			DisableControlAction(0, 19, true) --LEFTALT
			DisableControlAction(0, 22, true) --SPACE
			DisableControlAction(0, 70, true) --RIGHTCONTROL
			DisableControlAction(0, 213, true) --HOME
			DisableControlAction(0, 10, true) --PAGEUP
			DisableControlAction(0, 11, true) --PAGEDOWN
			DisableControlAction(0, 178, true) --DELETE
			DisableControlAction(0, 37, true) --TAB
		end
	end
end)
-- tu zmieniasz ceny które się wyświetlają w menu, jak czegoś nie chcecie w menu usuwacie tylko w local elemnts
function skupbronimenu()

    local elements = {
		{label = "Nóż <span style='color: green;'>(1500$/szt)", value = 'noz'},
		{label = "Scyzoryk <span style='color: green;'>(1750$/szt)", value = 'scyzoryk'},
		{label = "Kij <span style='color: green;'>(1125$/szt)", value = 'kij'},
		{label = "Młotek <span style='color: green;'>(750$/szt)", value = 'mlotek'},
		{label = "Tazer <span style='color: green;'>(5000$/szt)", value = 'tazer'},
		{label = "Pistolet <span style='color: green;'>(50000$/szt)", value = 'pistolet'},
		{label = "Pistolet MK2 <span style='color: green;'>(50000$/szt)", value = 'mk2'},
		{label = "Butelka <span style='color: red;'>(1750$/szt)", value = 'butelka'},
		{label = "Maczeta <span style='color: red;'>(2500$/szt)", value = 'maczeta'},
		{label = "Kij bilardowy <span style='color: red;'>(1000$/szt)", value = 'bilardowy'},
		{label = "Kij golfowy <span style='color: red;'>(1500$/szt)", value = 'golfowy'},
		{label = "Pukawka <span style='color: red;'>(25000$/szt)", value = 'pukawka'},
		{label = "Pistolet Vintage <span style='color: red;'>(65000$/szt)", value = 'vintage'},
		{label = "Pistolet Ciężki <span style='color: red;'>(90000$/szt)", value = 'ciezki'},
		{label = "Pistolet Bojowy <span style='color: red;'>(65000$/szt)", value = 'bojowy'},		
    }
    
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'skupbroni_menu',
		{
			title    = "Skup broni u Claypain'a",
			align    = 'bottom-right',
			elements = elements,
		},
		function(data, menu)
-- tu zmieniasz ceny normalne już
			if data.current.value == 'noz' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_KNIFE', 1500)
				menu.close()
			end
			
			if data.current.value == 'scyzoryk' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_SWITCHBLADE', 1750)
				menu.close()
			end
			
			if data.current.value == 'kij' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_BAT', 1125)
				menu.close()
			end
			
			if data.current.value == 'mlotek' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_HAMMER', 750)
				menu.close()
			end
			
			if data.current.value == 'pistolet' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_PISTOL', 50000)
				menu.close()
			end
			
			if data.current.value == 'mk2' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_PISTOL_MK2', 50000)
				menu.close()
			end
			
			if data.current.value == 'butelka' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_BOTTLE', 1750)
				menu.close()
			end
			
			if data.current.value == 'maczeta' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_MACHETE', 2500)
				menu.close()
			end
			
			if data.current.value == 'bilardowy' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_POOLCUE', 1000)
				menu.close()
			end
			
			if data.current.value == 'golfowy' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_GOLFCLUB', 1500)
				menu.close()
			end
			
			if data.current.value == 'pukawka' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_SNSPISTOL', 25000)
				menu.close()
			end
			
			if data.current.value == 'vintage' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_VINTAGEPISTOL', 65000)
				menu.close()
			end	
			
			if data.current.value == '50' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_PISTOL50', 35000)
				menu.close()
			end
			
			if data.current.value == 'ciezki' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_HEAVYPISTOL', 90000)
				menu.close()
			end
			
			if data.current.value == 'bojowy' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_COMBATPISTOL', 65000)
				menu.close()
			end
			
			if data.current.value == 'tazer' then
				TriggerServerEvent('mrp_skup:sprzedaj', 'WEAPON_STUNGUN', 5000)
				menu.close()
			end
		end,
      
		function(data, menu)
			menu.close()
		end
    )
end
-- tu ustalasz chuj wie co w sumie- daj kordy te same co wyżej jak coś to koryguj
RegisterNetEvent('mrp_skup:masnydodatek')
AddEventHandler('mrp_skup:masnydodatek', function(what)
	FreezeEntityPosition(Citizen.InvokeNative(0x43A66C31C68491C0, -1), true)
	SetEntityCoords(PlayerPedId(), 1233.3527832031, -3041.0893554688, 13.297692298889)
	SetEntityHeading(PlayerPedId(), 158.39)
	local dict = "mp_cop_armoury"
		RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(10)
	end
	if not NetworkHasControlOfEntity(PlayerPedId()) then
		NetworkRequestControlOfEntity(PlayerPedId())
		Citizen.Wait(1000)
	end
	if HasAnimDictLoaded(dict) and NetworkHasControlOfEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1)) then
		SetCurrentPedWeapon(PlayerPedId(), GetHashKey(what), true)
		Wait(1000)
		TaskPlayAnim(Citizen.InvokeNative(0x43A66C31C68491C0, -1), dict, "pistol_on_counter_cop", 1.0, -1.0, 1.0, 0, 0, false, false, false)
		Wait(4500)
		SetCurrentPedWeapon(PlayerPedId(), GetHashKey("WEAPON_UNARMED"), true)
		Citizen.Wait(15)
		ClearPedTasks(PlayerPedId())
		FreezeEntityPosition(Citizen.InvokeNative(0x43A66C31C68491C0, -1), false)
		skup = false
	end
end)	

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(10)
	end
end