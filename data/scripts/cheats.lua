-- Cheat codes
-- $Id: cheats.lua,v 1.1 2005/12/08 09:21:49 anton Exp $


--------------------------------------------------
-- cheat codes for buka testers
--------------------------------------------------

function gimmegimmegimme()
	if testcheat()~=1 then return end

	AddPlayerMoney( 10000 )
	println( "Money added" )

	local v = GetPlayerVehicle()

	v:AddModifier( "maxhp", "+ 10000" )
	v:AddModifier( "hp", "+ 10000" )
	println( "HP added" )

	v:AddModifier( "maxfuel", "+ 10000" )
	v:AddModifier( "fuel", "+ 10000" )
	println( "Fuel added" )
end

function GiveMoney(money)
	if testcheat()~=1 then return end
	local mmm=1000
	if money then mmm=money end
	AddPlayerMoney(mmm)
end

function GiveAll()
	if testcheat()~=1 then return end
	gimmegimmegimme()
end

function GiveVehicle(num)
	if testcheat()~=1 then return end
	local model="Bug01"
	if num==1 then
		model="Scout01"
	elseif num==2 then
		model="Bug01"
	elseif num==3 then
		model="Fighter01"
	elseif num==4 then
		model="Molokovoz01"
	elseif num==5 then
		model="Ural01"
	elseif num==6 then
		model="Belaz01"
	elseif num==7 then
		model="Mirotvorec01"
	elseif num==8 then
		model="Dozer01"
	elseif num==9 then
		model="RobotPlayer01"
	elseif num==10 then
		model="Sml101"		
	elseif num==11 then
		model="Sml201"		
	elseif num==12 then
		model="Sml301"		
    elseif num==13 then
		model="Sml401"		
	elseif num==14 then
		model="Hunter01"
	elseif num==15 then
		model="Hunter02"
	elseif num==16 then
		model="Cruiser01"
    elseif num==17 then
		model="Cruiser02"
	elseif num==18 then
		model="Tank01"
	elseif num==19 then
		model="Scout01"
	elseif num==20 then
		model="Scout02"
	elseif num==21 then
		model="Scout03"
	elseif num==22 then
		model="Tank01"
	elseif num==23 then
		model="Robot4SMALL"
	elseif num==24 then
		model="RobotBobot02"
	elseif num==25 then
		model="RobotMetatron"
	elseif num==26 then
		model="FighterMul01"
	elseif num==27 then
		model="ScoutMul01"
	elseif num==28 then
		model="HunterMul01"
	elseif num==29 then
		model="CruiserMul01"
	elseif num==30 then
		model="UralTH"
	elseif num==31 then
		model="Tank01"
	end
	AddPlayerVehicle(model)
end

function GiveNewVehicle(num)
	if testcheat()~=1 then return end
	local model="Bug01"
	if num==1 then
		model="Bug01"
	elseif num==2 then
		model="Molokovoz01"
	elseif num==3 then
		model="Ural01"
	elseif num==4 then
		model="Belaz01"
	elseif num==5 then
		model="mirotvorecTest"
	elseif num==6 then
		model="BugMul01"
	elseif num==7 then
		model="MolokovozMul01"
	elseif num==8 then
		model="UralMul01b"
	elseif num==9 then
		model="BelazMul01"
	elseif num==10 then
		model="MirotvorecMul01"		
	elseif num==11 then
		model="BelazShot"		
	elseif num==12 then
		model="MirotvorecShot"		
        elseif num==13 then
		model="Cruiser01"		
	elseif num==14 then
		model="Dozer01"
	elseif num==15 then
		model="Hunter01"
	elseif num==16 then
		model="Hunter02"
        elseif num==17 then
		model="Fighter01"
	elseif num==18 then
		model="Fighter02"
	elseif num==19 then
		model="Scout01"
	elseif num==20 then
		model="Scout02"
	elseif num==21 then
		model="Scout03"
	elseif num==22 then
		model="Tank01"
	elseif num==23 then
		model="Robot4SMALL"
	elseif num==24 then
		model="RobotBobot02"
	elseif num==25 then
		model="RobotMetatron"
	elseif num==26 then
		model="FighterMul01"
	elseif num==27 then
		model="ScoutMul01"
	elseif num==28 then
		model="HunterMul01"
	elseif num==29 then
		model="CruiserMul01"
	elseif num==30 then
		model="UralTH"
	elseif num==31 then
		model="ArcadeScout01"
	end
	AddPlayerNewVehicle(model)
end

function ShowMap()
	local mapsize = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLandSize() * 128
	local mapname = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLevelName()
	ShowRectOnMinimap(mapname, 1, 1, mapsize, mapsize)
end

--Для Бунакова :)

function god (md)
	if testcheat()~=1 then return end
	local mode=1
	if md then mode=md end
	GetPlayerVehicle():setGodMode(mode)  
end

function truck (number)
	GiveVehicle (number)
end

function car (number)
	GiveVehicle (number)
end

function newcar (number)
	GiveNewVehicle (number)
end

function skin (num)
    local number=0
    if num then number=num end
	GetPlayerVehicle():SetSkin(number)
end

function giveall ()
	if testcheat()~=1 then return end
	AddPlayerMoney( 10000 )

	local v = GetPlayerVehicle()

	v:AddModifier( "maxhp", "+ 10000" )
	v:AddModifier( "hp", "+ 15000" )

	v:AddModifier( "maxfuel", "+ 10000" )
	v:AddModifier( "fuel", "+ 11000" )
end

function teleport ()
	if testcheat()~=1 then return end
	MovePlayerToCamera()
end

function cab (num)
	if testcheat()~=1 then return end
   local number=1
   if num then number=num end
   local curcab=GetPlayerVehicle():GetCabin():GetProperty("Prototype").AsString
   local len=strlen(curcab)
   local newcab=strsub(curcab, 1, len-1)..number
   GetPlayerVehicle():SetNewPart("CABIN",newcab)
end

function cargo (num)
	if testcheat()~=1 then return end
   local number=1
   if num then number=num end
   local curcargo=GetPlayerVehicle():GetBasket():GetProperty("Prototype").AsString
   local len=strlen(curcargo)
   local newcargo=strsub(curcargo, 1, len-1)..number
   GetPlayerVehicle():SetNewPart("BASKET",newcargo)
end



function giveguns()
	if testcheat() ~= 1 then
		return;
	end

	local veh = GetPlayerVehicle();

	-- set slots names
	local parts       = {"CABIN_", "BASKET_", "CHASSIS_"};
	local slots       = {"SMALL_", "BIG_", "GIANT_", "SIDE_", "SPECIAL_"};
	local guns        = {"GUN", "GUN_0", "GUN_1", "GUN_2", "WEAPON"};

	-- set weapons prototype names
	-- from file SmallGuns.xml
	local small_gun   = {"hornet01", "specter01", "pkt01", "kord01", "maxim01", "storm01", "fagot01"};

	-- from file BigGuns.xml
	local big_gun     = {"ElectroShockMed", "FlameThrowerMed", "rapier01", "vector01", "vulcan01", "flag01", "kpvt01", "rainmetal01", "elephant01", "odin01", "bumblebee01", "omega01"};

	-- from file GiantGuns.xml + Rockets.xml
	local giant_gun   = {"FlameThrowerGiant", "cyclops01", "octopus01", "hurricane01", "rocketLauncher", "big_swingfire01"};

	-- from file SideGuns.xml
	local side_gun    = {"hailSideGun", "marsSideGun", "zeusSideGun", "hunterSideGun"};

	-- from file SpecialGuns.xml
	local special_gun = {"thorn1", "thorn2", "thorn3", "someTurboAccelerationPusher"};

	local i, j, k = 1, 1, 1;

			while parts[i] do
				while slots[j] do
					while guns[k] do
				local gun = 1;
				local slot = parts[i] .. slots[j] .. guns[k];

						if j==1 then
					gun = small_gun[random(getn(small_gun))];
						elseif j==2 then
					gun = big_gun[random(getn(big_gun))];
						elseif j==3 then
					gun = giant_gun[random(getn(giant_gun))];
						elseif j==4 then
					gun = side_gun[random(getn(side_gun))];
				elseif j==5 then
					gun = special_gun[random(getn(special_gun))];
						end

--						LOG(gun)
						if veh:CanPartBeAttached(slot) then
					LOG(slot .. " -- " .. gun);
							veh:SetNewPart(slot,gun)
						end

				k = k + 1;
					end

			k = 1;
			j = j + 1;
				end

		j = 1;
		i = i + 1;
			end
end

function map ()
	ShowMap()
end

function givemoney(money)
	if testcheat()~=1 then return end
	local mmm=1000
	if money then mmm=money end
	AddPlayerMoney(mmm)
end

function suicide()
	GetPlayerVehicle():AddModifier( "hp", "= 0" )
end


function OpenEncyclopaedia()
	Journal:ShowAllInEncyclopaedia()
end

function testcheat()
    if	GetComputerName() == "JSINX" 	or GetComputerName() == "ANTON2" 	 or
		GetComputerName() == "MIF2000"	or GetComputerName() == "HRRR" 		 or
		GetComputerName() == "PHOSGEN" 	or GetComputerName() == "ALEXTG" 	 or
		GetComputerName() == "MAIN" 	or GetComputerName() == "POWERPLANT" or
		GetComputerName() == "VANO" 	or GetComputerName() == "STAZ" 		 then
		return 1
	end
	if anticheat==0 then	
		LOG("---------------------- CHEAT WAS USED --------- ANTICHEAT -----------------")
    	AddFadingMsgId( "fm_cheat_is_allowed" )
    	AddImportantFadingMsgId( "fm_cheat_is_allowed" )
		return 1
 	else
		LOG("---------------------- CHEAT CAN'T BE USED ---- ANTICHEAT -----------------")
    	AddFadingMsgId( "fm_cheat_is_not_allowed" )
    	AddImportantFadingMsgId( "fm_cheat_is_not_allowed" )
    	return 0
 	end
end


