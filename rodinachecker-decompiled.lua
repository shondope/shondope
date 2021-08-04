function randomFunction	main ()
	var_0_0 = isSampfuncsLoaded()
	if var_0_0 then
		--jump to 0009 (if previous if statement is false) --0009 JMP-JMP
		var_0_0 = isSampLoaded()
		if not var_0_0 then
		end -- maybe?
	else
		--location 0009--0009 LOCATION-LOCATION_
		return
	end
	var_0_0 = isSampAvailable()
	if not var_0_0 then
		--jump to 0019 (if previous if statement is false) --0019 JMP-JMP
		repeat
		var_0_1 = 100 --var_0_1 NUMBER-NUMBER
		wait(var_0_1)
	else
		--location 0019--0019 LOCATION-LOCATION_
		until false or (previous if statement is true) --location 0019
		sampRegisterChatCommand("checker", checker)
		var_0_1 = "Rodina checker by vk.com/mishaninxgod lo" --strings longer than 40 characters get cut off, so check to see if there's more!
		var_0_2 = -1 --var_0_2 NUMBER-NUMBER
		sampAddChatMessage(var_0_1, var_0_2)
		return
	end
	
	

function randomFunction	sendOnfootSync (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_,INPUT_VAR_3_)
	var_1_4, var_1_5 = sampGetPlayerIdByCharHandle(PLAYER_PED)
	var_1_7 = 68 --var_1_7 NUMBER-NUMBER
	var_1_6 = allocateMemory(var_1_7)
	var_1_8 = var_1_5
	var_1_9 = var_1_6
	sampStorePlayerOnfootData(var_1_8, var_1_9)
	var_1_8 = var_1_6
	var_1_9 = 37 --var_1_9 NUMBER-NUMBER
	var_1_10 = 1 --var_1_10 NUMBER-NUMBER
	var_1_11 = 3 --var_1_11 NUMBER-NUMBER
	var_1_12 = false --var_1_12 PRIMITIVE-PRIMITIVE
	setStructElement(var_1_8, var_1_9, var_1_10, var_1_11, var_1_12)
	until false or (previous if statement is true) --location 0019
	var_1_8 = var_1_6
	var_1_9 = 6 --var_1_9 NUMBER-NUMBER
	var_1_10 = INPUT_VAR_0_
	var_1_11 = false --var_1_11 PRIMITIVE-PRIMITIVE
	setStructFloatElement(var_1_8, var_1_9, var_1_10, var_1_11)
	var_1_8 = var_1_6
	var_1_9 = 10 --var_1_9 NUMBER-NUMBER
	var_1_10 = INPUT_VAR_1_
	var_1_11 = false --var_1_11 PRIMITIVE-PRIMITIVE
	setStructFloatElement(var_1_8, var_1_9, var_1_10, var_1_11)
	var_1_8 = var_1_6
	var_1_9 = 14 --var_1_9 NUMBER-NUMBER
	var_1_10 = INPUT_VAR_2_
	var_1_11 = false --var_1_11 PRIMITIVE-PRIMITIVE
	setStructFloatElement(var_1_8, var_1_9, var_1_10, var_1_11)
	var_1_8 = var_1_6
	var_1_9 = 62 --var_1_9 NUMBER-NUMBER
	var_1_10 = 2 --var_1_10 NUMBER-NUMBER
	var_1_11 = INPUT_VAR_3_
	var_1_12 = false --var_1_12 PRIMITIVE-PRIMITIVE
	setStructElement(var_1_8, var_1_9, var_1_10, var_1_11, var_1_12)
	var_1_8 = var_1_6
	sampSendOnfootData(var_1_8)
	var_1_8 = var_1_6
	freeMemory(var_1_8)
	return
end


function randomFunction	checker ()
	var_2_1, var_2_2, var_2_3 = getCharCoordinates(PLAYER_PED)
	var_2_5 = var_2_1
	var_2_6 = var_2_2
	requestCollision(var_2_5, var_2_6)
	var_2_5 = var_2_1
	var_2_6 = var_2_2
	var_2_7 = var_2_3
	loadScene(var_2_5, var_2_6, var_2_7)
	var_2_4 = true --var_2_4 PRIMITIVE-PRIMITIVE
	tp = var_2_4
	var_2_6 = var_2_1
	until false or (previous if statement is true) --location 0019
	var_2_7 = var_2_2
	var_2_9 = var_2_1
	var_2_10 = var_2_2
	var_2_11 = 999 --var_2_11 NUMBER-NUMBER
	lua_thread.create(check, var_2_6, var_2_7,  getGroundZFor3dCoord(var_2_9, var_2_10, var_2_11) )
	return
end


function randomFunction	check ()
	var_3_3, var_3_4, var_3_5 = getCharCoordinates(PLAYER_PED)
	var_3_7 = 200 --var_3_7 NUMBER-NUMBER
	wait(var_3_7)
	var_3_7 = var_3_3
	var_3_8 = var_3_4
	var_3_9 = var_3_5
	sendOnfootSync(var_3_7, var_3_8, var_3_9)
	var_3_8 = 586.603 --var_3_8 NUMBER-NUMBER
	var_3_9 = 597.2775 --var_3_9 NUMBER-NUMBER
	var_3_10 = 1100 --var_3_10 NUMBER-NUMBER
	setCharCoordinates(PLAYER_PED, var_3_8, var_3_9, var_3_10)
	until false or (previous if statement is true) --location 0019
	sampForceOnfootSync()
	var_3_7 = var_3_3
	var_3_8 = var_3_4
	var_3_9 = var_3_5
	sendOnfootSync(var_3_7, var_3_8, var_3_9)
	var_3_7 = 1500 --var_3_7 NUMBER-NUMBER
	wait(var_3_7)
	var_3_7 = var_3_3
	var_3_8 = var_3_4
	var_3_9 = var_3_5
	var_3_10 = 0 --var_3_10 NUMBER-NUMBER
	sendOnfootSync(var_3_7, var_3_8, var_3_9, var_3_10)
	var_3_6 = false --var_3_6 PRIMITIVE-PRIMITIVE
	tp = var_3_6
	var_3_7 = "{C767FF}[RodinaChecker] {FFFFFF}Вы успеш" --strings longer than 40 characters get cut off, so check to see if there's more!
	var_3_8 = -1 --var_3_8 NUMBER-NUMBER
	sampAddChatMessage(var_3_7, var_3_8)
	var_3_7 = false --var_3_7 PRIMITIVE-PRIMITIVE
	lockPlayerControl(var_3_7)
	return
end


function someFunc4()
	var_4_0 = require("lib.samp.events")
	local randomFunction0 = function() end -- starts at  test.lua:0
	main = randomFunction0
	local randomFunction1 = function() end -- starts at  test.lua:0
	sendOnfootSync = randomFunction1
	local randomFunction2 = function() end -- starts at  test.lua:0
	checker = randomFunction2
	local randomFunction3 = function() end -- starts at  test.lua:0
	check = randomFunction3
	return
end


