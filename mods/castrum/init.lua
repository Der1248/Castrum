minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=10},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "For Minetest 	  :  5.0.x",
	})
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=30},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Game Version	 :  1.9.0",
	})
    player:hud_add({ 
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=50},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Map Version	   :  11",
	})
end)
function file_check(file_name)
	local file_found=io.open(file_name, "r")
	if file_found==nil then
		file_found=false
	else
		file_found=true
	end
	return file_found
end
minetest.register_on_joinplayer(function(player)
	if file_check(minetest.get_worldpath().."/SAVE/Lake.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Lake.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Barracks.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Battleground.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Chapter.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "w")
		file:write("1")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Camp1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Knight_1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Fountain.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Walle.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Walln.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Walls.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Wallw.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Sandmine.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Sandmine.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Cactusfarm.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Cactusfarm.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Camp2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Smithy.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Knight_2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Knight_2.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Lake2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Lake2.txt", "w")
		file:write("0")
		file:close()
	end
	
	if file_check(minetest.get_worldpath().."/SAVE/Horse_1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Horse_1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Home1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Home3.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Barracks.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Pier.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Knight_3.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Knight_3.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Sail1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Sail2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Ship2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Ship2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Pirate_1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Farm.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Farm.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Camp3.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Cannon1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Cannon2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Battleground.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Pier2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Chapter.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "w")
		file:write("1")
		file:close()
	end
end)
dofile(minetest.get_modpath("castrum").."/Chapter1.lua")
dofile(minetest.get_modpath("castrum").."/Chapter2.lua")
dofile(minetest.get_modpath("castrum").."/Chapter3.lua")
dofile(minetest.get_modpath("castrum").."/Chapter4.lua")
dofile(minetest.get_modpath("castrum").."/Chapter5.lua")
dofile(minetest.get_modpath("castrum").."/Chapter6.lua")
dofile(minetest.get_modpath("castrum").."/fight.lua")
dofile(minetest.get_modpath("castrum").."/island_fight.lua")
dofile(minetest.get_modpath("castrum").."/update.lua")
local btimer = 1
local timer = 0
local timer2 = 0
local timer3 = 0
local timer4 = 0
local timer5 = 0
local timer6 = 0
local timer7 = 0
local timer8 = 0
local timer9 = 0
local timer10 = 0
local tree2 = 0
local tree3 = 0
local tree4 = 0
local quarry2 = 0
local quarry3 = 0
local mine2 = 0
local mine3 = 0
local sandmine2 = 0
local sandmine3 = 0
local last = {x=-40,y=8.5,z=-5}
minetest.register_globalstep(function(dtime)
	if btimer > 0 then
		btimer = btimer + dtime;
	end
    timer = timer + dtime;
    timer2 = timer2 + dtime;
    timer3 = timer3 + dtime;
    timer4 = timer4 + dtime;
    timer5 = timer5 + dtime;
    timer6 = timer6 + dtime;
    timer7 = timer7 + dtime;
    timer8 = timer8 + dtime;
	timer9 = timer9 + dtime;
	timer10 = timer10 + dtime;
    local players = minetest.get_connected_players()
    for _,player in ipairs(players) do
        local pos = player:getpos()
        file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	    local ship1 = file:read("*l")
        file:close()
		if btimer == 0 then
			if pos.x < -9.5 and pos.x > -15.5 and pos.z > -62.5 and pos.z < -54 and tonumber(ship1) > 1 then
				last = pos
			elseif pos.x < -10.5 and pos.x > -14.5 and pos.z > -63.5 and pos.z < -62.5 and tonumber(ship1) > 1 then
				last = pos
			elseif pos.x < -11.5 and pos.x > -13.5 and pos.z > -64.5 and pos.z < -63.5 and tonumber(ship1) > 1 then
				last = pos
			elseif pos.x < 132.5 and pos.x > 127.5 and pos.z > 39.5 and pos.z < 48.5 then
				last = pos
			elseif pos.x < 131.5 and pos.x > 128.5 and pos.z > 48.5 and pos.z < 49.5 then
				last = pos
			elseif pos.x < 130.5 and pos.x > 129.5 and pos.z > 49.5 and pos.z < 50.5 then
				last = pos
			elseif pos.x < 320.5 and pos.x > 315.5 and pos.z > 39.5 and pos.z < 48.5 then
				last = pos
			elseif pos.x < 319.5 and pos.x > 316.5 and pos.z > 48.5 and pos.z < 49.5 then
				last = pos
			elseif pos.x < 318.5 and pos.x > 317.5 and pos.z > 49.5 and pos.z < 50.5 then
				last = pos
			elseif pos.x < 168.5 and pos.x > 161.5 and pos.z > 40.5 and pos.z < 51.5 then
				last = pos	
			elseif pos.x < 166.5 and pos.x > 163.5 and pos.z > 51.5 and pos.z < 53.5 then
				last = pos	
			elseif pos.x < 165.5 and pos.x > 164.5 and pos.z > 53.5 and pos.z < 55.5 then
				last = pos	
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "default:wood" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:sea_fight1" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:island_start_fight" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:turn_ship" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:fire_cannon_ready" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:fire_cannon_5" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:fire_cannon_4" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:fire_cannon_3" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:fire_cannon_2" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "castrum:fire_cannon_1" then
				last = pos
			elseif pos.y < 8 then
				player:setpos(last)
			elseif minetest.get_node({x=pos.x, y=(pos.y-0.5),z=pos.z}).name ~= "air" then
				last = pos
			end
		end
		if btimer > 5 then
			btimer = 0
		end
        if minetest.get_node({x=-4, y=8,z=-52}).name == "default:wood" or minetest.get_node({x=-8, y=8,z=-65}).name == "default:wood" or minetest.get_node({x=121, y=8,z=38}).name == "default:wood" or minetest.get_node({x=125, y=8,z=51}).name == "default:wood" then
            file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "r")
	        local level = file:read("*l")
            file:close()
            if tonumber(level) > 5 then
                Pier(6,player)
            end
        end
        if minetest.get_node({x=-13, y=8,z=-65}).name == "default:wood" or minetest.get_node({x=-13, y=8,z=-53}).name == "default:wood" or minetest.get_node({x=130, y=8,z=51}).name == "default:wood" or minetest.get_node({x=130, y=8,z=39}).name == "default:wood" then
            file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	        local level = file:read("*l")
            file:close()
            if tonumber(level) > 5 then
                Ship1(6,player)
            end
        end
		if minetest.get_node({x=-4, y=8,z=-52}).name == "default:junglewood" or minetest.get_node({x=-8, y=8,z=-65}).name == "default:junglewood" or minetest.get_node({x=121, y=8,z=38}).name == "default:junglewood" or minetest.get_node({x=125, y=8,z=51}).name == "default:junglewood" or minetest.get_node({x=309, y=8,z=38}).name == "default:junglewood" or minetest.get_node({x=313, y=8,z=51}).name == "default:junglewood" then
            file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "r")
	        local level = file:read("*l")
            file:close()
			if tonumber(level) > 6 then
                Pier(7,player)
            elseif tonumber(level) < 6 then
				Pier(0,player)
            end
        end
        if minetest.get_node({x=-13, y=8,z=-65}).name == "default:junglewood" or minetest.get_node({x=-13, y=8,z=-53}).name == "default:junglewood" or minetest.get_node({x=130, y=8,z=51}).name == "default:junglewood" or minetest.get_node({x=130, y=8,z=39}).name == "default:junglewood" then
            file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	        local level = file:read("*l")
            file:close()
			if tonumber(level) < 6 then
                Ship1(0,player)
            end
		end
		if minetest.get_node({x=-4, y=8,z=-52}).name == "default:pine_wood" or minetest.get_node({x=-8, y=8,z=-65}).name == "default:pine_wood" or minetest.get_node({x=121, y=8,z=38}).name == "default:pine_wood" or minetest.get_node({x=125, y=8,z=51}).name == "default:pine_wood" or minetest.get_node({x=309, y=8,z=38}).name == "default:pine_wood" or minetest.get_node({x=313, y=8,z=51}).name == "default:pine_wood" then
            file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "r")
	        local level = file:read("*l")
            file:close()
            if tonumber(level) < 7 then
				Pier(0,player)
            end
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	    local ship1 = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "r")
	    local quarry = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Tree.txt", "r")
	    local tree = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Mine.txt", "r")
	    local mine = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Lake.txt", "r")
	    local lake = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Sandmine.txt", "r")
	    local sandmine = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Lake2.txt", "r")
	    local lake2 = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Cactusfarm.txt", "r")
	    local cactusfarm = file:read("*l")
        file:close()
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt", "r")
	    local mountain_quarry = file:read("*l")
        file:close()
		file = io.open(minetest.get_worldpath().."/SAVE/Farm.txt", "r")
	    local farm = file:read("*l")
        file:close()
        local quarrytime = 0
        local quarrynum = 1
        if tonumber(quarry) == 0 then
            quarrytime = 5
            quarrynum = 1
        elseif tonumber(quarry) == 1 then
            quarrytime = 3.5
            quarrynum = 1
        elseif tonumber(quarry) == 2 then
            quarrytime = 2.5
            quarrynum = 2
		elseif tonumber(quarry) == 3 then
            quarrytime = 2
            quarrynum = 2
		elseif tonumber(quarry) == 4 then
			quarrytime = 1.8
            quarrynum = 3
		elseif tonumber(quarry) == 5 then
			quarrytime = 1.6
            quarrynum = 3
		elseif tonumber(quarry) == 6 then
			quarrytime = 1.5
            quarrynum = 3
        end
        local treetime = 0
        local treenum = 1
        if tonumber(tree) == 1 then
            treetime = 8
            treenum = 1
        elseif tonumber(tree) == 2 then
            treetime = 6
            treenum = 1
        elseif tonumber(tree) == 3 then
            treetime = 4.5
            treenum = 2
		elseif tonumber(tree) == 4 then
            treetime = 3.5
            treenum = 2
		elseif tonumber(tree) == 5 then
            treetime = 3
            treenum = 3
		elseif tonumber(tree) == 6 then
            treetime = 2.7
            treenum = 3
		elseif tonumber(tree) == 7 then
            treetime = 2.4
            treenum = 4
        end
        local minetime = 0
        local minenum = 1
        if tonumber(mine) == 1 then
            minetime = 15
            minenum = 1
        elseif tonumber(mine) == 2 then
            minetime = 11.5
            minenum = 1
        elseif tonumber(mine) == 3 then
            minetime = 9
            minenum = 2
		elseif tonumber(mine) == 4 then
            minetime = 7
            minenum = 2
		elseif tonumber(mine) == 5 then
            minetime = 5.5
            minenum = 3
		elseif tonumber(mine) == 6 then
            minetime = 4.5
            minenum = 3
        end
        local laketime = 0
        if tonumber(lake) == 1 then
            laketime = 12
        elseif tonumber(lake) == 2 then
            laketime = 9
        elseif tonumber(lake) == 3 then
            laketime = 6.5
		elseif tonumber(lake) == 4 then
            laketime = 5
        end
        local sandminetime = 0
        local sandminenum = 1
        if tonumber(sandmine) == 0 then
            sandminetime = 5
            sandminenum = 1
        elseif tonumber(sandmine) == 1 then
            sandminetime = 3.5
            sandminenum = 1
        elseif tonumber(sandmine) == 2 then
            sandminetime = 2.5
            sandminenum = 2
		elseif tonumber(sandmine) == 3 then
            sandminetime = 2
            sandminenum = 2
		elseif tonumber(sandmine) == 4 then
            sandminetime = 1.8
            sandminenum = 3
        end
        local lake2time = 0
        if tonumber(lake2) == 1 then
            lake2time = 18
        elseif tonumber(lake2) == 2 then
            lake2time = 13.5
		elseif tonumber(lake2) == 3 then
            lake2time = 10
		elseif tonumber(lake2) == 4 then
            lake2time = 7.5
        end
        local cactusfarmtime = 0
        if tonumber(cactusfarm) == 1 then
            cactusfarmtime = 15
        elseif tonumber(cactusfarm) == 2 then
            cactusfarmtime = 11.5
		elseif tonumber(cactusfarm) == 3 then
            cactusfarmtime = 9
		elseif tonumber(cactusfarm) == 4 then
            cactusfarmtime = 7
		elseif tonumber(cactusfarm) == 5 then
            cactusfarmtime = 5.5
        end
		local mountain_quarrytime = 0
        if tonumber(mountain_quarry) == 0 then
            mountain_quarrytime = 8
		elseif tonumber(mountain_quarry) == 1 then
            mountain_quarrytime = 6
        end
		local farmtime = 0
        if tonumber(farm) == 1 then
            farmtime = 10
        end
	    if timer >= quarrytime then
            if tonumber(quarry) > -1 then
		        local inv = minetest.get_inventory({type="node", pos={x=-20, y=9, z=-2}})
                if inv then
                    quarry2 = quarry2+1
					quarry3 = quarry3+1
                    if quarry2 == 2 then
                        quarry2 = 0
                    end
					if quarry3 == 3 then
                        quarry3 = 0
                    end
                    inv:add_item("main", "default:cobble ")
                    if quarrynum > 1 and quarry2 == 1 then
                        inv:add_item("main", "default:desert_cobble")
                    end
					if quarrynum > 2 and quarry3 == 1 then
                        inv:add_item("main", "default:obsidian")
                    end
                end
            end
            timer = 0
	    end
	    if timer2 >= treetime then
            if tonumber(tree) > 0 then
		        local inv = minetest.get_inventory({type="node", pos={x=-20, y=9, z=11}})
                if inv then
                    tree2 = tree2+1
					tree3 = tree3+1
					tree4 = tree4+1
                    if tree2 == 2 then
                        tree2 = 0
                    end
					if tree3 == 3 then
                        tree3 = 0
                    end
					if tree4 == 4 then
                        tree4 = 0
                    end
                    inv:add_item("main", "default:wood")
                    if treenum > 1 and tree2 == 1 then
                        inv:add_item("main", "default:junglewood")
                    end
					if treenum > 2 and tree3 == 1 then
                        inv:add_item("main", "default:pine_wood")
                    end
					if treenum > 3 and tree4 == 1 then
                        inv:add_item("main", "default:acacia_wood")
                    end
                end
            end
		    timer2 = 0
	    end
        if timer4 >= minetime then
            if tonumber(mine) > 0 then
		        local inv = minetest.get_inventory({type="node", pos={x=-20, y=9, z=-15}})
                if inv then
                    mine2 = mine2+1
					mine3 = mine3+1
                    if mine2 == 2 then
                        mine2 = 0
                    end
					if mine3 == 3 then
                        mine3 = 0
                    end
                    inv:add_item("main", "default:coal_lump")
                    if minenum > 1 and mine2 == 1 then
                        inv:add_item("main", "default:iron_lump")
                    end
					if minenum > 2 and mine3 == 1 then
                        inv:add_item("main", "default:tin_lump")
						inv:add_item("main", "default:copper_lump")
                    end
                end
            end
		    timer4 = 0
	    end
        if timer5 >= laketime then
            if tonumber(lake) > 0 then
		        local inv = minetest.get_inventory({type="node", pos={x=-34, y=9, z=-58}})
                if inv then
                    inv:add_item("main", "castrum:bucket_water")
                end
            end
		    timer5 = 0
	    end
        if timer6 >= sandminetime then
            if tonumber(sandmine) > -1 and tonumber(ship1) > 4 then
		        local inv = minetest.get_inventory({type="node", pos={x=132, y=9, z=15}})
                if inv then
                    sandmine2 = sandmine2+1
					sandmine3 = sandmine3+1
                    if sandmine2 == 2 then
                        sandmine2 = 0
                    end
					if sandmine3 == 3 then
                        sandmine3 = 0
                    end
                    inv:add_item("main", "default:sand")
                    if sandminenum > 1 and sandmine2 == 1 then
                        inv:add_item("main", "default:desert_sand")
                    end
					if sandminenum > 1 and sandmine3 == 1 then
                        inv:add_item("main", "default:silver_sand")
                    end
                end
            end
		    timer6 = 0
	    end
        if timer7 >= lake2time then
            if tonumber(lake2) > 0 then
		        local inv = minetest.get_inventory({type="node", pos={x=-34, y=9, z=-67}})
                if inv then
                    inv:add_item("main", "castrum:bucket_river_water")
                end
            end
		    timer7 = 0
	    end
        if timer8 >= cactusfarmtime then
            if tonumber(cactusfarm) > 0 and tonumber(ship1) > 4 then
		        local inv = minetest.get_inventory({type="node", pos={x=132, y=9, z=1}})
                if inv then
                    inv:add_item("main", "default:cactus")
                end
            end
		    timer8 = 0
	    end
		if timer9 >= mountain_quarrytime then
            if tonumber(mountain_quarry) > -1 and tonumber(ship1) > 5 then
		        local inv = minetest.get_inventory({type="node", pos={x=345, y=40, z=-16}})
                if inv then
                    inv:add_item("main", "default:mossycobble")
                end
            end
		    timer9 = 0
	    end
		if timer10 >= farmtime then
            if tonumber(farm) > -1 and tonumber(ship1) > 5 then
		        local inv = minetest.get_inventory({type="node", pos={x=345, y=40, z=-2}})
                if inv then
                    inv:add_item("main", "farming:cotton")
                end
            end
		    timer10 = 0
	    end
    end
end)
minetest.register_on_joinplayer(function(player)
    if player:get_player_name() == "singleplayer" then
    else
        minetest.kick_player(player:get_player_name(), "you can play castrum only as 'singleplayer'")
    end
    for i=0,90 do
        for j=9,30 do
            minetest.set_node({x=-134, y=j, z=i*(-1)}, {name="default:stone"})
        end
    end
    for i=0,96 do
        for j=9,30 do
            minetest.set_node({x=-134, y=j, z=i}, {name="default:stone"})
        end
    end
end)
local new = {}
new.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Welcome to minetest castrum.]"
        .."label[0,0.3;You are on a floor plan of a castle.]"
        .."label[0,0.6;Hit a diamond block to build and upgrade a building.]"
        .."label[0,0.9;Go first to the quarry in the east.]"
        .."label[0,1.2;Collect resources and rebuild the old castle]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
minetest.register_on_newplayer(function(player)
	player:setpos({x=-40, y=8.5, z=3.0})
    minetest.show_formspec(player:get_player_name(), "new" , new.get_formspec(player))
    local privs = minetest.get_player_privs(player:get_player_name())
    privs["fast"] = true
    minetest.set_player_privs(player:get_player_name(), privs)
end)
minetest.register_on_dignode(function(pos, node, digger)
	Update_knight(digger)
    local fightdig = digger:get_attribute("fightdig")
    local fight = digger:get_attribute("fight")
    if (node.name == "castrum:knight_lv1" or node.name == "castrum:knight_lv2" or node.name == "castrum:knight_lv3") and fightdig ~= "true" and fight == "true" then
        local inv = digger:get_inventory()
        inv:add_item("main", ""..node.name)
        digger:set_attribute("fightpos", minetest.pos_to_string(pos))
        if minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name ~= "castrum:knight_lv2" and minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x-1, y=8, z=pos.z}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z-1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name ~= "castrum:knight_lv2" and minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x-1, y=8, z=pos.z-1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z-1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z+1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name ~= "castrum:knight_lv2"and minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x-1, y=8, z=pos.z+1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z+1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x, y=9, z=pos.z}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x, y=8, z=pos.z}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x, y=9, z=pos.z}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x, y=9, z=pos.z}).name ~= "castrum:knight_lv2" and minetest.get_node({x=pos.x, y=9, z=pos.z}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x, y=8, z=pos.z}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x, y=8, z=pos.z}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x, y=8, z=pos.z-1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name ~= "castrum:knight_lv2" and minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x, y=8, z=pos.z-1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x, y=8, z=pos.z-1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x, y=8, z=pos.z+1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name ~= "castrum:knight_lv2" and minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x, y=8, z=pos.z+1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x, y=8, z=pos.z+1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name ~= "castrum:knight_lv2" and minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x+1, y=8, z=pos.z}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z-1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name ~= "castrum:knight_lv2" and minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x+1, y=8, z=pos.z-1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z-1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name == "castrum:knight_lv2_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name == "castrum:knight_lv3_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z+1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name ~= "castrum:knight_lv2" and minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name ~= "castrum:knight_lv3" and minetest.get_node({x=pos.x+1, y=8, z=pos.z+1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z+1}, {name="castrum:fight1"})
        end
        if node.name == "castrum:knight_lv1" then
            digger:set_attribute("fightnode", "1")
        end
        if node.name == "castrum:knight_lv2" then
            digger:set_attribute("fightnode", "2")
        end
		if node.name == "castrum:knight_lv3" then
            digger:set_attribute("fightnode", "3")
        end
        digger:set_attribute("fightdig", "true")
	elseif node.name == "castrum:horse1" and fightdig ~= "true" and fight == "true" and pos.x < -134 then
        local inv = digger:get_inventory()
		local knight = 0
		if minetest.get_node({x=pos.x, y=10, z=pos.z}).name == "castrum:knight_lv1_sit" then
			minetest.set_node({x=pos.x, y=10, z=pos.z}, {name="air"})
			knight = 1
		elseif minetest.get_node({x=pos.x, y=10, z=pos.z}).name == "castrum:knight_lv2_sit" then
			minetest.set_node({x=pos.x, y=10, z=pos.z}, {name="air"})
			knight = 2
		elseif minetest.get_node({x=pos.x, y=10, z=pos.z}).name == "castrum:knight_lv3_sit" then
			minetest.set_node({x=pos.x, y=10, z=pos.z}, {name="air"})
			knight = 3
		end
        inv:add_item("main", "castrum:horse1_item_"..knight)
        digger:set_attribute("fightpos", minetest.pos_to_string(pos))
		
		local list = {
			{x=pos.x-2, y=9, z=pos.z},
			{x=pos.x-2, y=9, z=pos.z-1},
			{x=pos.x-2, y=9, z=pos.z-2},
			{x=pos.x-2, y=9, z=pos.z+1},
			{x=pos.x-2, y=9, z=pos.z+2},
			{x=pos.x+2, y=9, z=pos.z},
			{x=pos.x+2, y=9, z=pos.z-1},
			{x=pos.x+2, y=9, z=pos.z-2},
			{x=pos.x+2, y=9, z=pos.z+1},
			{x=pos.x+2, y=9, z=pos.z+2},
			{x=pos.x-1, y=9, z=pos.z-2},
			{x=pos.x-1, y=9, z=pos.z+2},
			{x=pos.x, y=9, z=pos.z-2},
			{x=pos.x, y=9, z=pos.z+2},
			{x=pos.x+1, y=9, z=pos.z-2},
			{x=pos.x+1, y=9, z=pos.z+2},
			{x=pos.x-1, y=9, z=pos.z},
			{x=pos.x-1, y=9, z=pos.z-1},
			{x=pos.x-1, y=9, z=pos.z+1},
			{x=pos.x, y=9, z=pos.z},
			{x=pos.x, y=9, z=pos.z-1},
			{x=pos.x, y=9, z=pos.z+1},
			{x=pos.x+1, y=9, z=pos.z},
			{x=pos.x+1, y=9, z=pos.z-1},
			{x=pos.x+1, y=9, z=pos.z+1},
		}
		local list2 = {
			{x=pos.x-2, y=8, z=pos.z},
			{x=pos.x-2, y=8, z=pos.z-1},
			{x=pos.x-2, y=8, z=pos.z-2},
			{x=pos.x-2, y=8, z=pos.z+1},
			{x=pos.x-2, y=8, z=pos.z+2},
			{x=pos.x+2, y=8, z=pos.z},
			{x=pos.x+2, y=8, z=pos.z-1},
			{x=pos.x+2, y=8, z=pos.z-2},
			{x=pos.x+2, y=8, z=pos.z+1},
			{x=pos.x+2, y=8, z=pos.z+2},
			{x=pos.x-1, y=8, z=pos.z-2},
			{x=pos.x-1, y=8, z=pos.z+2},
			{x=pos.x, y=8, z=pos.z-2},
			{x=pos.x, y=8, z=pos.z+2},
			{x=pos.x+1, y=8, z=pos.z-2},
			{x=pos.x+1, y=8, z=pos.z+2},
			{x=pos.x-1, y=8, z=pos.z},
			{x=pos.x-1, y=8, z=pos.z-1},
			{x=pos.x-1, y=8, z=pos.z+1},
			{x=pos.x, y=8, z=pos.z},
			{x=pos.x, y=8, z=pos.z-1},
			{x=pos.x, y=8, z=pos.z+1},
			{x=pos.x+1, y=8, z=pos.z},
			{x=pos.x+1, y=8, z=pos.z-1},
			{x=pos.x+1, y=8, z=pos.z+1},
			
			
		}
		for i=1,25 do
			if (minetest.get_node(list[i]).name == "castrum:knight_lv1_dark" or minetest.get_node(list[i]).name == "castrum:knight_lv2_dark" or minetest.get_node(list[i]).name == "castrum:knight_lv3_dark" or minetest.get_node(list[i]).name == "castrum:knight_dark") and i > 16 then
				minetest.set_node(list2[i], {name="castrum:fight2"})
			elseif minetest.get_node(list[i]).name == "air" and minetest.get_node(list2[i]).name ~= "default:gravel" then
				minetest.set_node(list2[i], {name="castrum:fight1"})
			end
		end
        if node.name == "castrum:knight_lv1" then
            digger:set_attribute("fightnode", "1")
        end
        if node.name == "castrum:knight_lv2" then
            digger:set_attribute("fightnode", "2")
        end
		if node.name == "castrum:knight_lv3" then
            digger:set_attribute("fightnode", "3")
        end
		if node.name == "castrum:horse1" then
            digger:set_attribute("fightnode", ""..(knight+5))
        end
        digger:set_attribute("fightdig", "true")
    else
        minetest.set_node(pos, {name=node.name})
        if node.name == "castrum:knight_lv1" or node.name == "castrum:knight_lv2" or node.name == "castrum:knight_lv3" then
            screwdriver_handler(digger, {type="node", under=pos, above=pos}, 1)
        end
		if node.name == "castrum:horse1" then
            screwdriver_handler(digger, {type="node", under=pos, above=pos}, 1)
			screwdriver_handler(digger, {type="node", under=pos, above=pos}, 1)
        end
		if node.name == "doors:gate_wood_closed" or node.name == "doors:gate_wood_open" then
            screwdriver_handler(digger, {type="node", under=pos, above=pos}, 1)
			screwdriver_handler(digger, {type="node", under=pos, above=pos}, 1)
			screwdriver_handler(digger, {type="node", under=pos, above=pos}, 1)
        end
    end
end)
function minetest.handle_node_drops(pos, drops, digger)
end
minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack, pointed_thing)

    if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "castrum:fight1" and newnode.name == "castrum:knight_lv1" then
        minetest.set_node(pos, {name="castrum:knight_lv1"})
        screwdriver_handler(placer, {type="node", under=pos, above=pos}, 1)
        local inv = placer:get_inventory()
        Item_Remove2(player, "main", "castrum:knight_lv1")
        local fight = placer:get_attribute("fight")
        placer:set_attribute("fightdig", "false")
        if fight == "true" then
            for j=144,174 do
                for i=51,81 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
                end
            end
            fight_step2(placer)
        end
    elseif minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "castrum:fight1" and newnode.name == "castrum:knight_lv2" then
        minetest.set_node(pos, {name="castrum:knight_lv2"})
        screwdriver_handler(placer, {type="node", under=pos, above=pos}, 1)
        local inv = placer:get_inventory()
        Item_Remove2(player, "main", "castrum:knight_lv2")
        local fight = placer:get_attribute("fight")
        placer:set_attribute("fightdig", "false")
        if fight == "true" then
            for j=144,174 do
                for i=51,81 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
                end
            end
            fight_step2(placer)
        end
	elseif minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "castrum:fight1" and newnode.name == "castrum:knight_lv3" then
        minetest.set_node(pos, {name="castrum:knight_lv3"})
        screwdriver_handler(placer, {type="node", under=pos, above=pos}, 1)
        local inv = placer:get_inventory()
        Item_Remove2(player, "main", "castrum:knight_lv3")
        local fight = placer:get_attribute("fight")
        placer:set_attribute("fightdig", "false")
        if fight == "true" then
            for j=144,174 do
                for i=51,81 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
                end
            end
            fight_step2(placer)
        end
	elseif minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "castrum:sea_fight1" and newnode.name == "castrum:pirate_lv1" then
		minetest.set_node(pos, {name="castrum:pirate_lv1"})
		minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z}, {name="default:wood"})
		if pos.z == -24 then
			screwdriver_handler(placer, {type="node", under=pos, above=pos}, 1)
			screwdriver_handler(placer, {type="node", under=pos, above=pos}, 1)
		end
	
    else
        minetest.set_node(pos, {name=oldnode.name})
        return itemstack
    end
end)
function Home1(v,player)
    if v+0 == 1 then
        for i=26,32 do
            for j=20,25 do
                minetest.set_node({x=i*(-1), y=9, z=j*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-29, y=9, z=-19}, {name="stairs:stair_cobble"})
        screwdriver_handler(player, {type="node", under={x=-29, y=9, z=-19}, above={x=-29, y=9, z=-19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-29, y=9, z=-19}, above={x=-29, y=9, z=-19}}, 1)
    elseif v+0 == 2 then
        for j=20,25 do
            minetest.set_node({x=-26, y=10, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-32, y=10, z=j*(-1)}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=10, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=10, z=-20}, {name="default:wood"})
        end
        minetest.set_node({x=-29, y=10, z=-20}, {name="air"})
    elseif v+0 == 3 then
        for j=20,25 do
            minetest.set_node({x=-26, y=11, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-32, y=11, z=j*(-1)}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=11, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=11, z=-20}, {name="default:wood"})
        end
        minetest.set_node({x=-29, y=11, z=-20}, {name="air"})
        minetest.set_node({x=-29, y=10, z=-20}, {name="doors:door_wood_a"})
        screwdriver_handler(player, {type="node", under={x=-29, y=10, z=-20}, above={x=-29, y=10, z=-20}}, 1)
        screwdriver_handler(player, {type="node", under={x=-29, y=10, z=-20}, above={x=-29, y=10, z=-20}}, 1)
    elseif v+0 == 4 then
        for j=20,25 do
            minetest.set_node({x=-26, y=12, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-32, y=12, z=j*(-1)}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=12, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=12, z=-20}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for j=21,24 do
            minetest.set_node({x=-27, y=13, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-31, y=13, z=j*(-1)}, {name="default:wood"})
        end
        for i=27,31 do
            minetest.set_node({x=i*(-1), y=13, z=-24}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=13, z=-21}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for j=22,23 do
            minetest.set_node({x=-28, y=14, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-30, y=14, z=j*(-1)}, {name="default:wood"})
        end
        for i=28,30 do
            minetest.set_node({x=i*(-1), y=14, z=-23}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=14, z=-22}, {name="default:wood"})
        end
        minetest.set_node({x=-26, y=9, z=-19}, {name="castrum:character1"})
        screwdriver_handler(player, {type="node", under={x=-26, y=9, z=-19}, above={x=-26, y=9, z=-19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-26, y=9, z=-19}, above={x=-26, y=9, z=-19}}, 1)
    elseif v+0 == 7 then
        for i=26,32 do
            for j=19,25 do
                for k=9,14 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:wood" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:junglewood"})
                    end
                end
            end
        end
	elseif v+0 == 8 then
        for i=26,32 do
            for j=19,25 do
                for k=9,14 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:junglewood" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:pine_wood"})
                    end
                end
            end
        end
	elseif v+0 == 9 then
        for i=26,32 do
            for j=19,25 do
                for k=9,14 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:pine_wood" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:acacia_wood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for i=26,32 do
            for j=19,25 do
                for k=9,14 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Home2(v,player)
    if v+0 == 1 then
        for i=48,54 do
            for j=20,25 do
                minetest.set_node({x=i*(-1), y=9, z=j*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-51, y=9, z=-19}, {name="stairs:stair_cobble"})
        screwdriver_handler(player, {type="node", under={x=-51, y=9, z=-19}, above={x=-51, y=9, z=-19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-51, y=9, z=-19}, above={x=-51, y=9, z=-19}}, 1)
    elseif v+0 == 2 then
        for j=20,25 do
            minetest.set_node({x=-48, y=10, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-54, y=10, z=j*(-1)}, {name="default:wood"})
        end
        for i=48,54 do
            minetest.set_node({x=i*(-1), y=10, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=10, z=-20}, {name="default:wood"})
        end
        minetest.set_node({x=-51, y=10, z=-20}, {name="air"})
    elseif v+0 == 3 then
        for j=20,25 do
            minetest.set_node({x=-48, y=11, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-54, y=11, z=j*(-1)}, {name="default:wood"})
        end
        for i=48,54 do
            minetest.set_node({x=i*(-1), y=11, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=11, z=-20}, {name="default:wood"})
        end
        minetest.set_node({x=-51, y=11, z=-20}, {name="air"})
        minetest.set_node({x=-51, y=10, z=-20}, {name="doors:door_wood_a"})
        screwdriver_handler(player, {type="node", under={x=-51, y=10, z=-20}, above={x=-51, y=10, z=-20}}, 1)
        screwdriver_handler(player, {type="node", under={x=-51, y=10, z=-20}, above={x=-51, y=10, z=-20}}, 1)
    elseif v+0 == 4 then
        for j=20,25 do
            minetest.set_node({x=-48, y=12, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-54, y=12, z=j*(-1)}, {name="default:wood"})
        end
        for i=48,54 do
            minetest.set_node({x=i*(-1), y=12, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=12, z=-20}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for j=21,24 do
            minetest.set_node({x=-49, y=13, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-53, y=13, z=j*(-1)}, {name="default:wood"})
        end
        for i=49,53 do
            minetest.set_node({x=i*(-1), y=13, z=-24}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=13, z=-21}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for j=22,23 do
            minetest.set_node({x=-50, y=14, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-52, y=14, z=j*(-1)}, {name="default:wood"})
        end
        for i=50,52 do
            minetest.set_node({x=i*(-1), y=14, z=-23}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=14, z=-22}, {name="default:wood"})
        end
        minetest.set_node({x=-54, y=9, z=-19}, {name="castrum:character1"})
        screwdriver_handler(player, {type="node", under={x=-54, y=9, z=-19}, above={x=-54, y=9, z=-19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-54, y=9, z=-19}, above={x=-54, y=9, z=-19}}, 1)
    elseif v+0 == 7 then
        for i=48,54 do
            for j=19,25 do
                for k=9,14 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:wood" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:junglewood"})
                    end
                end
            end
        end
	elseif v+0 == 8 then
        for i=48,54 do
            for j=19,25 do
                for k=9,14 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:junglewood" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:pine_wood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for i=48,54 do
            for j=19,25 do
                for k=9,14 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Home3(v,player)
    if v+0 == 1 then
        for i=26,32 do
            for j=26,31 do
                minetest.set_node({x=i*(-1), y=9, z=j}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-29, y=9, z=25}, {name="stairs:stair_cobble"})
    elseif v+0 == 2 then
        for j=26,31 do
            minetest.set_node({x=-26, y=10, z=j}, {name="default:wood"})
            minetest.set_node({x=-32, y=10, z=j}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=10, z=31}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=10, z=26}, {name="default:wood"})
        end
        minetest.set_node({x=-29, y=10, z=26}, {name="air"})
    elseif v+0 == 3 then
        for j=26,31 do
            minetest.set_node({x=-26, y=11, z=j}, {name="default:wood"})
            minetest.set_node({x=-32, y=11, z=j}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=11, z=31}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=11, z=26}, {name="default:wood"})
        end
        minetest.set_node({x=-29, y=11, z=26}, {name="air"})
        minetest.set_node({x=-29, y=10, z=26}, {name="doors:door_wood_a"})
    elseif v+0 == 4 then
        for j=26,31 do
            minetest.set_node({x=-26, y=12, z=j}, {name="default:wood"})
            minetest.set_node({x=-32, y=12, z=j}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=12, z=31}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=12, z=26}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for j=27,30 do
            minetest.set_node({x=-27, y=13, z=j}, {name="default:wood"})
            minetest.set_node({x=-31, y=13, z=j}, {name="default:wood"})
        end
        for i=27,31 do
            minetest.set_node({x=i*(-1), y=13, z=27}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=13, z=30}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for j=28,29 do
            minetest.set_node({x=-28, y=14, z=j}, {name="default:wood"})
            minetest.set_node({x=-30, y=14, z=j}, {name="default:wood"})
        end
        for i=28,30 do
            minetest.set_node({x=i*(-1), y=14, z=28}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=14, z=29}, {name="default:wood"})
        end
        minetest.set_node({x=-26, y=9, z=25}, {name="castrum:character1"})
	elseif v+0 == 7 then
        for i=26,32 do
            for j=25,31 do
                for k=9,14 do
					if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:wood" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:junglewood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for i=26,32 do
            for j=25,31 do
                for k=9,14 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
            end
        end
    end
end
function Bridge(v,player)
    if v+0 == 1 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-32}, {name="default:wood"})
        end
    elseif v+0 == 2 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-33}, {name="default:wood"})
        end
    elseif v+0 == 3 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-34}, {name="default:wood"})
        end
    elseif v+0 == 4 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-35}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for i=36,39 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:wood"})
        end
        for i=41,44 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-37}, {name="default:wood"})
        end
    elseif v+0 == 7 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-38}, {name="default:wood"})
        end
    elseif v+0 == 8 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-39}, {name="default:wood"})
        end
    elseif v+0 == 9 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-40}, {name="default:wood"})
        end
    elseif v+0 == 10 then
        for i=36,44 do
            for j=32,35 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:junglewood"})
            end
        end
        for i=36,44 do
            for j=37,40 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:junglewood"})
            end
        end
        for i=36,39 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:junglewood"})
        end
        for i=41,44 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:junglewood"})
        end
	elseif v+0 == 11 then
        for i=36,44 do
            for j=32,35 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:pine_wood"})
            end
        end
        for i=36,44 do
            for j=37,40 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:pine_wood"})
            end
        end
        for i=36,39 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:pine_wood"})
        end
        for i=41,44 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:pine_wood"})
        end
    elseif v+0 == 0 then
        for i=36,44 do
            for j=32,35 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:dirt_with_grass"})
            end
        end
        for i=36,44 do
            for j=37,40 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:dirt_with_grass"})
            end
        end
        for i=36,39 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:dirt_with_grass"})
        end
        for i=41,44 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:dirt_with_grass"})
        end
    end
end
function Bridge2(v,player)
    if v+0 == 10 then
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:junglewood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
	elseif v+0 == 11 then
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:pine_wood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
    elseif v+0 == 0 then
        for i=36,44 do
            for k=8,16 do
                minetest.set_node({x=i*(-1), y=k, z=-32}, {name="air"})
            end
        end
        for i=36,44 do
            for j=32,40 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:dirt_with_grass"})
            end
        end
        minetest.set_node({x=-40, y=8, z=-36}, {name="castrum:bridge"})
    end
end
function Moat_south(v,player)
    if v+0 == 1 then
        for i=0,83 do
            if minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "castrum:bridge"  and minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "default:pine_wood" then 
                minetest.set_node({x=i*(-1), y=8, z=-36}, {name="air"})
            end
        end
        for i=1,3 do
            minetest.set_node({x=i, y=8, z=-36}, {name="air"})
        end
    elseif v+0 == 2 then
        for j=35,37 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:pine_wood" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=7, z=-36}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=7, z=-36}, {name="air"})
        end
    elseif v+0 == 3 then
        for j=34,38 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge"  and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:pine_wood" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=6, z=-36}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=6, z=-36}, {name="air"})
        end
    elseif v+0 == 4 then
        for j=33,39 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:pine_wood" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=5, z=-36}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=5, z=-36}, {name="air"})
        end
    elseif v+0 == 5 then
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:pine_wood" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=4, z=-36}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=4, z=-36}, {name="air"})
        end
    elseif v+0 == 6 then
        for j=32,40 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 7 then
        for j=32,40 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 8 then
        for j=32,40 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 9 then
        for j=32,40 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 10 then
        for j=32,40 do
            for i=0,83 do 
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="castrum:water"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="castrum:water"})
            end
        end
    elseif v+0 == 11 then
        for j=32,40 do
            for i=0,83 do 
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="castrum:water"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="castrum:water"})
            end
        end
    elseif v+0 == 0 then
        for j=32,40 do
            for k=4,7 do
                for i=0,83 do 
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:stone"})
                end
                for i=1,3 do
                    minetest.set_node({x=i, y=k, z=j*(-1)}, {name="default:stone"})
                end
            end
        end
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" then
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="castrum:dirt_with_grass"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="castrum:dirt_with_grass"})
            end
        end
    end
end
function Moat_east(v,player)
    if v+0 == 1 then
        for i=0,31 do
            minetest.set_node({x=-1, y=8, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=8, z=i}, {name="air"})
        end
    elseif v+0 == 2 then
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-1, y=7, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=7, z=i}, {name="air"})
        end
    elseif v+0 == 3 then
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=8, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=8, z=i}, {name="air"})
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-1, y=6, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=6, z=i}, {name="air"})
        end
    elseif v+0 == 4 then
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=8, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=7, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=7, z=i}, {name="air"})
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-1, y=5, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=5, z=i}, {name="air"})
        end
    elseif v+0 == 5 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=8, z=i}, {name="air"})
            end
        end
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=7, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=6, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=6, z=i}, {name="air"})
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-1, y=4, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=4, z=i}, {name="air"})
        end
    elseif v+0 == 6 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=7, z=i}, {name="air"})
            end
        end
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=6, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=5, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=5, z=i}, {name="air"})
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 7 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=6, z=i}, {name="air"})
            end
        end
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=5, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=4, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=4, z=i}, {name="air"})
        end
    elseif v+0 == 8 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=5, z=i}, {name="air"})
            end
        end
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 9 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 10 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="castrum:water"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=4, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=4, z=i}, {name="castrum:water"})
            end
        end
	elseif v+0 == 11 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="castrum:water"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=5, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=5, z=i}, {name="castrum:water"})
            end
        end
    elseif v+0 == 0 then
        for k=4,7 do
            for j=0,5 do
                for i=0,31 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone"})
                end
                for i=0,37 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:stone"})
                end
            end
            for j=0,3 do
                for i=0,31 do
                    minetest.set_node({x=j, y=k, z=i*(-1)}, {name="default:stone"})
                end
                for i=0,37 do
                    minetest.set_node({x=j, y=k, z=i}, {name="default:stone"})
                end
            end
        end
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="castrum:dirt_with_grass"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="castrum:dirt_with_grass"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=8, z=i*(-1)}, {name="castrum:dirt_with_grass"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=8, z=i}, {name="castrum:dirt_with_grass"})
            end
        end
    end
end
function Moat_north(v,player)
    if v+0 == 1 then
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=8, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=8, z=42}, {name="air"})
        end
    elseif v+0 == 2 then
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=7, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=7, z=42}, {name="air"})
        end
    elseif v+0 == 3 then
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="air"})
            end
        end
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=6, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=6, z=42}, {name="air"})
        end
    elseif v+0 == 4 then
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="air"})
            end
        end
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j}, {name="air"})
            end
        end
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=5, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=5, z=42}, {name="air"})
        end
    elseif v+0 == 5 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="air"})
            end
        end
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j}, {name="air"})
            end
        end
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j}, {name="air"})
            end
        end
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=4, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=4, z=42}, {name="air"})
        end
    elseif v+0 == 6 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j}, {name="air"})
            end
        end
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j}, {name="air"})
            end
        end
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="air"})
            end
        end
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="air"})
            end
        end
    elseif v+0 == 7 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j}, {name="air"})
            end
        end
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="air"})
            end
        end
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="air"})
            end
        end
    elseif v+0 == 8 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="air"})
            end
        end
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="air"})
            end
        end
    elseif v+0 == 9 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="air"})
            end
        end
    elseif v+0 == 10 then
        for j=38,46 do
            for i=0,83 do 
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="castrum:water"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="castrum:water"})
            end
        end
	elseif v+0 == 11 then
        for j=38,46 do
            for i=0,83 do 
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="castrum:water"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="castrum:water"})
            end
        end
    elseif v+0 == 0 then
        for j=38,46 do
            for k=4,7 do
                for i=0,83 do 
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone"})
                end
                for i=1,3 do
                    minetest.set_node({x=i, y=k, z=j}, {name="default:stone"})
                end
            end
        end
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="castrum:dirt_with_grass"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="castrum:dirt_with_grass"})
            end
        end
    end
end
function Wall_south(v,player)
    if v+0 == 1 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=9, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=9, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 2 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=10, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=10, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 3 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=11, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=11, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 4 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=12, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=12, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=13, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=13, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 6 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=14, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=14, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 7 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=15, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=15, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 8 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=16, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=16, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 9 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=17, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=17, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-36, y=17, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-44, y=17, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 10 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=18, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=18, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-36, y=18, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-44, y=18, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-37, y=18, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-43, y=18, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 11 then
        for i=14,35 do
            minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:cobble"})
        end
        for i=45,66 do
            minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:cobble"})
        end
        for i=29,31 do
            minetest.set_node({x=-35, y=19, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-45, y=19, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-36, y=19, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-44, y=19, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-37, y=19, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-43, y=19, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-38, y=19, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-42, y=19, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 12 then
        for i=14,66 do
            for j=28,31 do
                minetest.set_node({x=i*(-1), y=20, z=j*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 13 then
        for i=14,66 do
            if i%2 == 0 then
                minetest.set_node({x=i*(-1), y=21, z=-31}, {name="default:cobble"})
            end
        end
    elseif v+0 == 14 then
        minetest.set_node({x=-36, y=9, z=-30}, {name="castrum:castrum_knight1"})
        minetest.set_node({x=-44, y=9, z=-30}, {name="castrum:castrum_knight1"})
        minetest.set_node({x=-64, y=21, z=-30}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-60, y=21, z=-30}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-56, y=21, z=-30}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-24, y=21, z=-30}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-20, y=21, z=-30}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-16, y=21, z=-30}, {name="castrum:castrum_knight2"})
    elseif v+0 == 15 then
        for i=45,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:stone_block"})
            end
        end
        for i=14,35 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:stone_block"})

            end
        end
        for i=45,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:stone_block"})
            end
        end
        for i=14,35 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:stone_block"})
            end
        end
        for i=45,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:stone_block"})
            end
        end
        for i=14,35 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:stone_block"})
            end
        end
        minetest.set_node({x=-42, y=20, z=-31}, {name="default:stone_block"})
        minetest.set_node({x=-43, y=19, z=-31}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=18, z=-31}, {name="default:stone_block"})
        minetest.set_node({x=-38, y=20, z=-31}, {name="default:stone_block"})
        minetest.set_node({x=-37, y=19, z=-31}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=18, z=-31}, {name="default:stone_block"})
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-45, y=k, z=-29}, {name="default:stone_block"})
                minetest.set_node({x=-35, y=k, z=-29}, {name="default:stone_block"})
            end
        end
        minetest.set_node({x=-35, y=10, z=-30}, {name="default:stone_block"})
        minetest.set_node({x=-35, y=14, z=-30}, {name="default:stone_block"})
        minetest.set_node({x=-35, y=18, z=-30}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=10, z=-30}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=14, z=-30}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=18, z=-30}, {name="default:stone_block"})
        minetest.set_node({x=-37, y=19, z=-29}, {name="default:stone_block"})
        minetest.set_node({x=-43, y=19, z=-29}, {name="default:stone_block"})
    elseif v+0 == 16 then
        for i=14,66 do
            for j=28,31 do
                for k=9,21 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 17 then
        for i=45,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=14,35 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:desert_cobble"})

            end
        end
        for i=45,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=14,35 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=45,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=14,35 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:desert_cobble"})
            end
        end
        minetest.set_node({x=-42, y=20, z=-31}, {name="default:desert_cobble"})
        minetest.set_node({x=-43, y=19, z=-31}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=18, z=-31}, {name="default:desert_cobble"})
        minetest.set_node({x=-38, y=20, z=-31}, {name="default:desert_cobble"})
        minetest.set_node({x=-37, y=19, z=-31}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=18, z=-31}, {name="default:desert_cobble"})
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-45, y=k, z=-29}, {name="default:desert_cobble"})
                minetest.set_node({x=-35, y=k, z=-29}, {name="default:desert_cobble"})
            end
        end
        minetest.set_node({x=-35, y=10, z=-30}, {name="default:desert_cobble"})
        minetest.set_node({x=-35, y=14, z=-30}, {name="default:desert_cobble"})
        minetest.set_node({x=-35, y=18, z=-30}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=10, z=-30}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=14, z=-30}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=18, z=-30}, {name="default:desert_cobble"})
        minetest.set_node({x=-37, y=19, z=-29}, {name="default:desert_cobble"})
        minetest.set_node({x=-43, y=19, z=-29}, {name="default:desert_cobble"})
	elseif v+0 == 18 then
        for i=14,66 do
            for j=28,31 do
                for k=9,21 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 19 then
        for i=45,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=14,35 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:desert_stone_block"})

            end
        end
        for i=45,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=14,35 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=45,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=14,35 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:desert_stone_block"})
            end
        end
        minetest.set_node({x=-42, y=20, z=-31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-43, y=19, z=-31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=18, z=-31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-38, y=20, z=-31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-37, y=19, z=-31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=18, z=-31}, {name="default:desert_stone_block"})
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-45, y=k, z=-29}, {name="default:desert_stone_block"})
                minetest.set_node({x=-35, y=k, z=-29}, {name="default:desert_stone_block"})
            end
        end
        minetest.set_node({x=-35, y=10, z=-30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-35, y=14, z=-30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-35, y=18, z=-30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=10, z=-30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=14, z=-30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=18, z=-30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-37, y=19, z=-29}, {name="default:desert_stone_block"})
        minetest.set_node({x=-43, y=19, z=-29}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then
        for i=14,66 do
            for j=28,31 do
                for k=9,21 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Fountain(v,player)
    if v+0 == 1 then
        for i=39,41 do
            for j=0,8 do
                minetest.set_node({x=i*(-1), y=9, z=j}, {name="castrum:cobble"})
            end
            for j=1,2 do
                minetest.set_node({x=i*(-1), y=9, z=j*(-1)}, {name="castrum:cobble"})
            end
        end
        for i=35,45 do
            for j=2,4 do
                minetest.set_node({x=i*(-1), y=9, z=j}, {name="castrum:cobble"})
            end
        end
    elseif v+0 == 2 then
        for j=0,7 do
            minetest.set_node({x=38*(-1), y=9, z=j}, {name="castrum:cobble"})
            minetest.set_node({x=42*(-1), y=9, z=j}, {name="castrum:cobble"})
            minetest.set_node({x=37*(-1), y=9, z=j}, {name="castrum:cobble"})
            minetest.set_node({x=43*(-1), y=9, z=j}, {name="castrum:cobble"})
        end
        for j=0,6 do
            minetest.set_node({x=36*(-1), y=9, z=j}, {name="castrum:cobble"})
            minetest.set_node({x=44*(-1), y=9, z=j}, {name="castrum:cobble"})
        end
        minetest.set_node({x=38*(-1), y=9, z=1*(-1)}, {name="castrum:cobble"})
        minetest.set_node({x=42*(-1), y=9, z=1*(-1)}, {name="castrum:cobble"})
        minetest.set_node({x=37*(-1), y=9, z=1*(-1)}, {name="castrum:cobble"})
        minetest.set_node({x=43*(-1), y=9, z=1*(-1)}, {name="castrum:cobble"})
    elseif v+0 == 3 then
        minetest.set_node({x=-41, y=10, z=-2}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=10, z=-2}, {name="castrum:cobble"})
        minetest.set_node({x=-39, y=10, z=-2}, {name="castrum:cobble"})
        minetest.set_node({x=-38, y=10, z=-1}, {name="castrum:cobble"})
        minetest.set_node({x=-37, y=10, z=-1}, {name="castrum:cobble"})
        minetest.set_node({x=-42, y=10, z=-1}, {name="castrum:cobble"})
        minetest.set_node({x=-43, y=10, z=-1}, {name="castrum:cobble"})
        minetest.set_node({x=-44, y=10, z=0}, {name="castrum:cobble"})
        minetest.set_node({x=-44, y=10, z=1}, {name="castrum:cobble"})
        minetest.set_node({x=-36, y=10, z=0}, {name="castrum:cobble"})
        minetest.set_node({x=-36, y=10, z=1}, {name="castrum:cobble"})
        minetest.set_node({x=-35, y=10, z=2}, {name="castrum:cobble"})
        minetest.set_node({x=-35, y=10, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-35, y=10, z=4}, {name="castrum:cobble"})
        minetest.set_node({x=-45, y=10, z=2}, {name="castrum:cobble"})
        minetest.set_node({x=-45, y=10, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-45, y=10, z=4}, {name="castrum:cobble"})
        minetest.set_node({x=-36, y=10, z=5}, {name="castrum:cobble"})
        minetest.set_node({x=-36, y=10, z=6}, {name="castrum:cobble"})
        minetest.set_node({x=-44, y=10, z=5}, {name="castrum:cobble"})
        minetest.set_node({x=-44, y=10, z=6}, {name="castrum:cobble"})
        minetest.set_node({x=-38, y=10, z=7}, {name="castrum:cobble"})
        minetest.set_node({x=-37, y=10, z=7}, {name="castrum:cobble"})
        minetest.set_node({x=-42, y=10, z=7}, {name="castrum:cobble"})
        minetest.set_node({x=-43, y=10, z=7}, {name="castrum:cobble"})
        minetest.set_node({x=-41, y=10, z=8}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=10, z=8}, {name="castrum:cobble"})
        minetest.set_node({x=-39, y=10, z=8}, {name="castrum:cobble"})
    elseif v+0 == 4 then
        minetest.set_node({x=-40, y=10, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=11, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=12, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=13, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=14, z=3}, {name="default:water_source"})
        minetest.set_node({x=-40, y=13, z=4}, {name="default:water_source"})
        minetest.set_node({x=-40, y=13, z=2}, {name="default:water_source"})
        minetest.set_node({x=-41, y=13, z=3}, {name="default:water_source"})
        minetest.set_node({x=-39, y=13, z=3}, {name="default:water_source"})
    elseif v+0 == 5 then
        minetest.set_node({x=-41, y=9, z=-2}, {name="default:stone_block"})
        minetest.set_node({x=-40, y=10, z=-2}, {name="default:stone_block"})
        minetest.set_node({x=-39, y=9, z=-2}, {name="default:stone_block"})
        minetest.set_node({x=-38, y=10, z=-1}, {name="default:stone_block"})
        minetest.set_node({x=-37, y=9, z=-1}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=10, z=0}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=9, z=1}, {name="default:stone_block"})
        minetest.set_node({x=-35, y=10, z=2}, {name="default:stone_block"})
        minetest.set_node({x=-35, y=9, z=3}, {name="default:stone_block"})
        minetest.set_node({x=-35, y=10, z=4}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=9, z=5}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=10, z=6}, {name="default:stone_block"})
        minetest.set_node({x=-37, y=9, z=7}, {name="default:stone_block"})
        minetest.set_node({x=-38, y=10, z=7}, {name="default:stone_block"})
        minetest.set_node({x=-39, y=9, z=8}, {name="default:stone_block"})
        minetest.set_node({x=-40, y=10, z=8}, {name="default:stone_block"})
        minetest.set_node({x=-41, y=9, z=8}, {name="default:stone_block"})
        minetest.set_node({x=-42, y=10, z=7}, {name="default:stone_block"})
        minetest.set_node({x=-43, y=9, z=7}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=10, z=6}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=9, z=5}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=10, z=4}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=9, z=3}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=10, z=2}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=9, z=1}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=10, z=0}, {name="default:stone_block"})
        minetest.set_node({x=-43, y=9, z=-1}, {name="default:stone_block"})
        minetest.set_node({x=-42, y=10, z=-1}, {name="default:stone_block"})
    elseif v+0 == 6 then
        for k=9,14 do
            for i=35,45 do
                for j=0,2 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "castrum:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:stone_block"})
                    end
                end
                for j=0,8 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "castrum:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 7 then
        minetest.set_node({x=-41, y=9, z=-2}, {name="default:desert_cobble"})
        minetest.set_node({x=-40, y=10, z=-2}, {name="default:desert_cobble"})
        minetest.set_node({x=-39, y=9, z=-2}, {name="default:desert_cobble"})
        minetest.set_node({x=-38, y=10, z=-1}, {name="default:desert_cobble"})
        minetest.set_node({x=-37, y=9, z=-1}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=10, z=0}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=9, z=1}, {name="default:desert_cobble"})
        minetest.set_node({x=-35, y=10, z=2}, {name="default:desert_cobble"})
        minetest.set_node({x=-35, y=9, z=3}, {name="default:desert_cobble"})
        minetest.set_node({x=-35, y=10, z=4}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=9, z=5}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=10, z=6}, {name="default:desert_cobble"})
        minetest.set_node({x=-37, y=9, z=7}, {name="default:desert_cobble"})
        minetest.set_node({x=-38, y=10, z=7}, {name="default:desert_cobble"})
        minetest.set_node({x=-39, y=9, z=8}, {name="default:desert_cobble"})
        minetest.set_node({x=-40, y=10, z=8}, {name="default:desert_cobble"})
        minetest.set_node({x=-41, y=9, z=8}, {name="default:desert_cobble"})
        minetest.set_node({x=-42, y=10, z=7}, {name="default:desert_cobble"})
        minetest.set_node({x=-43, y=9, z=7}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=10, z=6}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=9, z=5}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=10, z=4}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=9, z=3}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=10, z=2}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=9, z=1}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=10, z=0}, {name="default:desert_cobble"})
        minetest.set_node({x=-43, y=9, z=-1}, {name="default:desert_cobble"})
        minetest.set_node({x=-42, y=10, z=-1}, {name="default:desert_cobble"})
	elseif v+0 == 8 then
        for k=9,14 do
            for i=35,45 do
                for j=0,2 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:desert_cobble"})
                    end
                end
                for j=0,8 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 9 then
        minetest.set_node({x=-41, y=9, z=-2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-40, y=10, z=-2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-39, y=9, z=-2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-38, y=10, z=-1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-37, y=9, z=-1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=10, z=0}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=9, z=1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-35, y=10, z=2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-35, y=9, z=3}, {name="default:desert_stone_block"})
        minetest.set_node({x=-35, y=10, z=4}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=9, z=5}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=10, z=6}, {name="default:desert_stone_block"})
        minetest.set_node({x=-37, y=9, z=7}, {name="default:desert_stone_block"})
        minetest.set_node({x=-38, y=10, z=7}, {name="default:desert_stone_block"})
        minetest.set_node({x=-39, y=9, z=8}, {name="default:desert_stone_block"})
        minetest.set_node({x=-40, y=10, z=8}, {name="default:desert_stone_block"})
        minetest.set_node({x=-41, y=9, z=8}, {name="default:desert_stone_block"})
        minetest.set_node({x=-42, y=10, z=7}, {name="default:desert_stone_block"})
        minetest.set_node({x=-43, y=9, z=7}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=10, z=6}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=9, z=5}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=10, z=4}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=9, z=3}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=10, z=2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=9, z=1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=10, z=0}, {name="default:desert_stone_block"})
        minetest.set_node({x=-43, y=9, z=-1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-42, y=10, z=-1}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then
        for k=9,14 do
            for i=35,45 do
                for j=0,2 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
                for j=0,8 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
            end
        end
    end
end
function Tower1(v,player)
    if v+0 == 1 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=9, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=9, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=9, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=9, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=9, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=9, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=9, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=9, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=9, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=9, z=-24}, {name="default:cobble"})
    elseif v+0 == 2 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=10, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=10, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=10, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=10, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=10, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=10, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=10, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=10, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=10, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=10, z=-24}, {name="default:cobble"})
    elseif v+0 == 3 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=11, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=11, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=11, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=11, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=11, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=11, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=11, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=11, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=11, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=11, z=-24}, {name="default:cobble"})
    elseif v+0 == 4 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=12, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=12, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=12, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=12, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=12, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=12, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=12, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=12, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=12, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=12, z=-24}, {name="default:cobble"})
    elseif v+0 == 5 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=13, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=13, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=13, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=13, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=13, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=13, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=13, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=13, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=13, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=13, z=-24}, {name="default:cobble"})
    elseif v+0 == 6 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=14, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=14, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=14, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=14, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=14, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=14, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=14, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=14, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=14, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=14, z=-24}, {name="default:cobble"})
    elseif v+0 == 7 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=15, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=15, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=15, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=15, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=15, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=15, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=15, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=15, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=15, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=15, z=-24}, {name="default:cobble"})
    elseif v+0 == 8 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=16, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=16, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=16, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=16, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=16, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=16, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=16, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=16, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=16, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=16, z=-24}, {name="default:cobble"})
    elseif v+0 == 9 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=17, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=17, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=17, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=17, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=17, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=17, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=17, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=17, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=17, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=17, z=-24}, {name="default:cobble"})
    elseif v+0 == 10 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=18, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=18, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=18, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=18, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=18, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=18, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=18, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=18, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=18, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=18, z=-24}, {name="default:cobble"})
    elseif v+0 == 11 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-6, y=19, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-13, y=19, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-13, y=19, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-12, y=19, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-12, y=19, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=19, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=19, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-9, y=19, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-8, y=19, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-7, y=19, z=-24}, {name="default:cobble"})
    elseif v+0 == 12 then
        for j=6,13 do
            for i=24,31 do
                minetest.set_node({x=j*(-1), y=20, z=i*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-13, y=20, z=-24}, {name="air"})
        minetest.set_node({x=-13, y=20, z=-25}, {name="air"})
        minetest.set_node({x=-13, y=20, z=-26}, {name="air"})
        minetest.set_node({x=-12, y=20, z=-24}, {name="air"})
        minetest.set_node({x=-12, y=20, z=-25}, {name="air"})
        minetest.set_node({x=-11, y=20, z=-24}, {name="air"})
    elseif v+0 == 13 then
        for i=6,13 do
            if i%2 == 0 then
                minetest.set_node({x=i*(-1), y=21, z=-31}, {name="default:cobble"})
            end
        end
        for i=24,31 do
            if i%2 == 1 then
                minetest.set_node({x=-6, y=21, z=i*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-12, y=21, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=21, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=21, z=-25}, {name="default:cobble"})
    elseif v+0 == 14 then
        minetest.set_node({x=-12, y=22, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=22, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=22, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-6, y=22, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-12, y=22, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-6, y=22, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-12, y=23, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-11, y=23, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-10, y=23, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-6, y=23, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-12, y=23, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-6, y=23, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-11, y=23, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-7, y=23, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-6, y=23, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-6, y=23, z=-26}, {name="default:cobble"})
    elseif v+0 == 15 then
        minetest.set_node({x=-11, y=24, z=-26}, {name="default:cobble"})
        for i=27,31 do
            minetest.set_node({x=-12, y=24, z=i*(-1)}, {name="default:cobble"})
        end
        for i=25,31 do
            minetest.set_node({x=-6, y=24, z=i*(-1)}, {name="default:cobble"})
        end
        for i=6,12 do
            minetest.set_node({x=i*(-1), y=24, z=-31}, {name="default:cobble"})
        end
        for i=6,10 do
            minetest.set_node({x=i*(-1), y=24, z=-25}, {name="default:cobble"})
        end
    elseif v+0 == 16 then
        for i=27,30 do
            minetest.set_node({x=-11, y=25, z=i*(-1)}, {name="default:cobble"})
        end
        for i=26,30 do
            minetest.set_node({x=-7, y=25, z=i*(-1)}, {name="default:cobble"})
        end
        for i=7,11 do
            minetest.set_node({x=i*(-1), y=25, z=-30}, {name="default:cobble"})
        end
        for i=7,10 do
            minetest.set_node({x=i*(-1), y=25, z=-26}, {name="default:cobble"})
        end
    elseif v+0 == 17 then
        for i=27,29 do
            minetest.set_node({x=-10, y=26, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-8, y=26, z=i*(-1)}, {name="default:cobble"})
        end
        for i=8,10 do
            minetest.set_node({x=i*(-1), y=26, z=-29}, {name="default:cobble"})
            minetest.set_node({x=i*(-1), y=26, z=-27}, {name="default:cobble"})
        end
        minetest.set_node({x=-9, y=27, z=-28}, {name="default:cobble"})
    elseif v+0 == 18 then
        minetest.set_node({x=-9, y=21, z=-30}, {name="castrum:castrum_knight1"})
        minetest.set_node({x=-7, y=21, z=-28}, {name="castrum:castrum_knight1"})
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-28}, above={x=-7, y=21, z=-28}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-28}, above={x=-7, y=21, z=-28}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-28}, above={x=-7, y=21, z=-28}}, 1)
    elseif v+0 == 19 then
        for i=6,13 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:stone_block"})
            end
        end
        for i=6,13 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:stone_block"})
            end
        end
        for i=6,13 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:stone_block"})
            end
        end
        for i=24,31 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=20, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=16, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=12, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=24,31 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=17, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=15, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=13, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=11, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=9, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=24,31 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=18, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=14, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=10, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-7, y=k, z=-24}, {name="default:stone_block"})
                minetest.set_node({x=-9, y=k, z=-25}, {name="default:stone_block"})
                minetest.set_node({x=-11, y=k, z=-26}, {name="default:stone_block"})
                minetest.set_node({x=-12, y=k, z=-28}, {name="default:stone_block"})
                minetest.set_node({x=-13, y=k, z=-30}, {name="default:stone_block"})
            end
        end
        minetest.set_node({x=-8, y=10, z=-24}, {name="default:stone_block"})
        minetest.set_node({x=-8, y=14, z=-24}, {name="default:stone_block"})
        minetest.set_node({x=-8, y=18, z=-24}, {name="default:stone_block"})
        minetest.set_node({x=-10, y=12, z=-25}, {name="default:stone_block"})
        minetest.set_node({x=-10, y=16, z=-25}, {name="default:stone_block"})
        minetest.set_node({x=-13, y=10, z=-29}, {name="default:stone_block"})
        minetest.set_node({x=-13, y=14, z=-29}, {name="default:stone_block"})
        minetest.set_node({x=-13, y=18, z=-29}, {name="default:stone_block"})
        minetest.set_node({x=-12, y=12, z=-27}, {name="default:stone_block"})
        minetest.set_node({x=-12, y=16, z=-27}, {name="default:stone_block"})
    elseif v+0 == 20 then
        for j=6,13 do
            for i=24,31 do
                for k=9,27 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 21 then
        for i=6,13 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=6,13 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=6,13 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=24,31 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=20, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=16, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=12, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=24,31 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=17, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=15, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=13, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=11, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=9, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=24,31 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=18, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=14, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=10, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-7, y=k, z=-24}, {name="default:desert_cobble"})
                minetest.set_node({x=-9, y=k, z=-25}, {name="default:desert_cobble"})
                minetest.set_node({x=-11, y=k, z=-26}, {name="default:desert_cobble"})
                minetest.set_node({x=-12, y=k, z=-28}, {name="default:desert_cobble"})
                minetest.set_node({x=-13, y=k, z=-30}, {name="default:desert_cobble"})
            end
        end
        minetest.set_node({x=-8, y=10, z=-24}, {name="default:desert_cobble"})
        minetest.set_node({x=-8, y=14, z=-24}, {name="default:desert_cobble"})
        minetest.set_node({x=-8, y=18, z=-24}, {name="default:desert_cobble"})
        minetest.set_node({x=-10, y=12, z=-25}, {name="default:desert_cobble"})
        minetest.set_node({x=-10, y=16, z=-25}, {name="default:desert_cobble"})
        minetest.set_node({x=-13, y=10, z=-29}, {name="default:desert_cobble"})
        minetest.set_node({x=-13, y=14, z=-29}, {name="default:desert_cobble"})
        minetest.set_node({x=-13, y=18, z=-29}, {name="default:desert_cobble"})
        minetest.set_node({x=-12, y=12, z=-27}, {name="default:desert_cobble"})
        minetest.set_node({x=-12, y=16, z=-27}, {name="default:desert_cobble"})
	elseif v+0 == 22 then
        for j=6,13 do
            for i=24,31 do
                for k=9,27 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 23 then
        for i=6,13 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=6,13 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=6,13 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=24,31 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=20, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=16, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=12, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=24,31 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=17, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=15, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=13, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=11, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=9, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=24,31 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=18, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=14, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=10, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-7, y=k, z=-24}, {name="default:desert_stone_block"})
                minetest.set_node({x=-9, y=k, z=-25}, {name="default:desert_stone_block"})
                minetest.set_node({x=-11, y=k, z=-26}, {name="default:desert_stone_block"})
                minetest.set_node({x=-12, y=k, z=-28}, {name="default:desert_stone_block"})
                minetest.set_node({x=-13, y=k, z=-30}, {name="default:desert_stone_block"})
            end
        end
        minetest.set_node({x=-8, y=10, z=-24}, {name="default:desert_stone_block"})
        minetest.set_node({x=-8, y=14, z=-24}, {name="default:desert_stone_block"})
        minetest.set_node({x=-8, y=18, z=-24}, {name="default:desert_stone_block"})
        minetest.set_node({x=-10, y=12, z=-25}, {name="default:desert_stone_block"})
        minetest.set_node({x=-10, y=16, z=-25}, {name="default:desert_stone_block"})
        minetest.set_node({x=-13, y=10, z=-29}, {name="default:desert_stone_block"})
        minetest.set_node({x=-13, y=14, z=-29}, {name="default:desert_stone_block"})
        minetest.set_node({x=-13, y=18, z=-29}, {name="default:desert_stone_block"})
        minetest.set_node({x=-12, y=12, z=-27}, {name="default:desert_stone_block"})
        minetest.set_node({x=-12, y=16, z=-27}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then
        for j=6,13 do
            for i=24,31 do
                for k=9,27 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Tower2(v,player)
    if v+0 == 1 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=9, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=9, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=9, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=9, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=9, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=9, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=9, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=9, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=9, z=-30}, {name="default:cobble"})
    elseif v+0 == 2 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=10, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=10, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=10, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=10, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=10, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=10, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=10, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=10, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=10, z=-30}, {name="default:cobble"})
    elseif v+0 == 3 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=11, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=11, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=11, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=11, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=11, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=11, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=11, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=11, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=11, z=-30}, {name="default:cobble"})
    elseif v+0 == 4 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=12, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=12, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=12, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=12, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=12, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=12, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=12, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=12, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=12, z=-30}, {name="default:cobble"})
    elseif v+0 == 5 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=13, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=13, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=13, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=13, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=13, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=13, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=13, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=13, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=13, z=-30}, {name="default:cobble"})
    elseif v+0 == 6 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=14, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=14, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=14, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=14, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=14, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=14, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=14, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=14, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=14, z=-30}, {name="default:cobble"})
    elseif v+0 == 7 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=15, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=15, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=15, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=15, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=15, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=15, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=15, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=15, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=15, z=-30}, {name="default:cobble"})
    elseif v+0 == 8 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=16, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=16, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=16, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=16, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=16, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=16, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=16, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=16, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=16, z=-30}, {name="default:cobble"})
    elseif v+0 == 9 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=17, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=17, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=17, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=17, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=17, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=17, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=17, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=17, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=17, z=-30}, {name="default:cobble"})
    elseif v+0 == 10 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=18, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=18, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=18, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=18, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=18, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=18, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=18, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=18, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=18, z=-30}, {name="default:cobble"})
    elseif v+0 == 11 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:cobble"})
        end
        for i=24,31 do
            minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=19, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-72, y=19, z=-24}, {name="default:cobble"})
        minetest.set_node({x=-71, y=19, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-70, y=19, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=19, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-68, y=19, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-68, y=19, z=-28}, {name="default:cobble"})
        minetest.set_node({x=-67, y=19, z=-29}, {name="default:cobble"})
        minetest.set_node({x=-67, y=19, z=-30}, {name="default:cobble"})
    elseif v+0 == 12 then
        for j=67,74 do
            for i=24,31 do
                minetest.set_node({x=j*(-1), y=20, z=i*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-67, y=20, z=-24}, {name="air"})
        minetest.set_node({x=-67, y=20, z=-25}, {name="air"})
        minetest.set_node({x=-67, y=20, z=-26}, {name="air"})
        minetest.set_node({x=-68, y=20, z=-24}, {name="air"})
        minetest.set_node({x=-68, y=20, z=-25}, {name="air"})
        minetest.set_node({x=-69, y=20, z=-24}, {name="air"})
    elseif v+0 == 13 then
        for i=67,74 do
            if i%2 == 0 then
                minetest.set_node({x=i*(-1), y=21, z=-31}, {name="default:cobble"})
            end
        end
        for i=24,31 do
            if i%2 == 1 then
                minetest.set_node({x=-74, y=21, z=i*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-68, y=21, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-69, y=21, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-70, y=21, z=-25}, {name="default:cobble"})
    elseif v+0 == 14 then
        minetest.set_node({x=-68, y=22, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-69, y=22, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-70, y=22, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-74, y=22, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-68, y=22, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-74, y=22, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-68, y=23, z=-27}, {name="default:cobble"})
        minetest.set_node({x=-69, y=23, z=-26}, {name="default:cobble"})
        minetest.set_node({x=-70, y=23, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-74, y=23, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-68, y=23, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-74, y=23, z=-25}, {name="default:cobble"})
        minetest.set_node({x=-69, y=23, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-73, y=23, z=-31}, {name="default:cobble"})
        minetest.set_node({x=-74, y=23, z=-30}, {name="default:cobble"})
        minetest.set_node({x=-74, y=23, z=-26}, {name="default:cobble"})
    elseif v+0 == 15 then
        minetest.set_node({x=-69, y=24, z=-26}, {name="default:cobble"})
        for i=27,31 do
            minetest.set_node({x=-68, y=24, z=i*(-1)}, {name="default:cobble"})
        end
        for i=25,31 do
            minetest.set_node({x=-74, y=24, z=i*(-1)}, {name="default:cobble"})
        end
        for i=68,74 do
            minetest.set_node({x=i*(-1), y=24, z=-31}, {name="default:cobble"})
        end
        for i=70,74 do
            minetest.set_node({x=i*(-1), y=24, z=-25}, {name="default:cobble"})
        end
    elseif v+0 == 16 then
        for i=27,30 do
            minetest.set_node({x=-69, y=25, z=i*(-1)}, {name="default:cobble"})
        end
        for i=26,30 do
            minetest.set_node({x=-73, y=25, z=i*(-1)}, {name="default:cobble"})
        end
        for i=69,73 do
            minetest.set_node({x=i*(-1), y=25, z=-30}, {name="default:cobble"})
        end
        for i=70,73 do
            minetest.set_node({x=i*(-1), y=25, z=-26}, {name="default:cobble"})
        end
    elseif v+0 == 17 then
        for i=27,29 do
            minetest.set_node({x=-72, y=26, z=i*(-1)}, {name="default:cobble"})
            minetest.set_node({x=-70, y=26, z=i*(-1)}, {name="default:cobble"})
        end
        for i=70,72 do
            minetest.set_node({x=i*(-1), y=26, z=-29}, {name="default:cobble"})
            minetest.set_node({x=i*(-1), y=26, z=-27}, {name="default:cobble"})
        end
        minetest.set_node({x=-71, y=27, z=-28}, {name="default:cobble"})
    elseif v+0 == 18 then
        minetest.set_node({x=-71, y=21, z=-30}, {name="castrum:castrum_knight1"})
        minetest.set_node({x=-73, y=21, z=-28}, {name="castrum:castrum_knight1"})
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=-28}, above={x=-73, y=21, z=-28}}, 1)
    elseif v+0 == 19 then
        for i=67,74 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:stone_block"})
            end
        end
        for i=67,74 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:stone_block"})
            end
        end
        for i=67,74 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:stone_block"})
            end
        end
        for i=24,31 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=24,31 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=24,31 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-73, y=k, z=-24}, {name="default:stone_block"})
                minetest.set_node({x=-71, y=k, z=-25}, {name="default:stone_block"})
                minetest.set_node({x=-69, y=k, z=-26}, {name="default:stone_block"})
                minetest.set_node({x=-68, y=k, z=-28}, {name="default:stone_block"})
                minetest.set_node({x=-67, y=k, z=-30}, {name="default:stone_block"})
            end
        end

        minetest.set_node({x=-72, y=10, z=-24}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=14, z=-24}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=18, z=-24}, {name="default:stone_block"})
        minetest.set_node({x=-70, y=12, z=-25}, {name="default:stone_block"})
        minetest.set_node({x=-70, y=16, z=-25}, {name="default:stone_block"})
        minetest.set_node({x=-67, y=10, z=-29}, {name="default:stone_block"})
        minetest.set_node({x=-67, y=14, z=-29}, {name="default:stone_block"})
        minetest.set_node({x=-67, y=18, z=-29}, {name="default:stone_block"})
        minetest.set_node({x=-68, y=12, z=-27}, {name="default:stone_block"})
        minetest.set_node({x=-68, y=16, z=-27}, {name="default:stone_block"})
    elseif v+0 == 20 then
        for j=67,74 do
            for i=24,31 do
                for k=9,27 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 21 then
        for i=67,74 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=67,74 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=67,74 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:desert_cobble"})
            end
        end
        for i=24,31 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=24,31 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=24,31 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-73, y=k, z=-24}, {name="default:desert_cobble"})
                minetest.set_node({x=-71, y=k, z=-25}, {name="default:desert_cobble"})
                minetest.set_node({x=-69, y=k, z=-26}, {name="default:desert_cobble"})
                minetest.set_node({x=-68, y=k, z=-28}, {name="default:desert_cobble"})
                minetest.set_node({x=-67, y=k, z=-30}, {name="default:desert_cobble"})
            end
        end

        minetest.set_node({x=-72, y=10, z=-24}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=14, z=-24}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=18, z=-24}, {name="default:desert_cobble"})
        minetest.set_node({x=-70, y=12, z=-25}, {name="default:desert_cobble"})
        minetest.set_node({x=-70, y=16, z=-25}, {name="default:desert_cobble"})
        minetest.set_node({x=-67, y=10, z=-29}, {name="default:desert_cobble"})
        minetest.set_node({x=-67, y=14, z=-29}, {name="default:desert_cobble"})
        minetest.set_node({x=-67, y=18, z=-29}, {name="default:desert_cobble"})
        minetest.set_node({x=-68, y=12, z=-27}, {name="default:desert_cobble"})
        minetest.set_node({x=-68, y=16, z=-27}, {name="default:desert_cobble"})
	elseif v+0 == 22 then
        for j=67,74 do
            for i=24,31 do
                for k=9,27 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 23 then
        for i=67,74 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=67,74 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=67,74 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=-31}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=-31}, {name="default:desert_stone_block"})
            end
        end
        for i=24,31 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=24,31 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=24,31 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-73, y=k, z=-24}, {name="default:desert_stone_block"})
                minetest.set_node({x=-71, y=k, z=-25}, {name="default:desert_stone_block"})
                minetest.set_node({x=-69, y=k, z=-26}, {name="default:desert_stone_block"})
                minetest.set_node({x=-68, y=k, z=-28}, {name="default:desert_stone_block"})
                minetest.set_node({x=-67, y=k, z=-30}, {name="default:desert_stone_block"})
            end
        end

        minetest.set_node({x=-72, y=10, z=-24}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=14, z=-24}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=18, z=-24}, {name="default:desert_stone_block"})
        minetest.set_node({x=-70, y=12, z=-25}, {name="default:desert_stone_block"})
        minetest.set_node({x=-70, y=16, z=-25}, {name="default:desert_stone_block"})
        minetest.set_node({x=-67, y=10, z=-29}, {name="default:desert_stone_block"})
        minetest.set_node({x=-67, y=14, z=-29}, {name="default:desert_stone_block"})
        minetest.set_node({x=-67, y=18, z=-29}, {name="default:desert_stone_block"})
        minetest.set_node({x=-68, y=12, z=-27}, {name="default:desert_stone_block"})
        minetest.set_node({x=-68, y=16, z=-27}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then
        for j=67,74 do
            for i=24,31 do
                for k=9,27 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Tower3(v,player)
    if v+0 == 1 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=9, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=9, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=9, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=9, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=9, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=9, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=9, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=9, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=9, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=9, z=36}, {name="default:cobble"})
    elseif v+0 == 2 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=10, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=10, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=10, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=10, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=10, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=10, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=10, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=10, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=10, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=10, z=36}, {name="default:cobble"})
    elseif v+0 == 3 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=11, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=11, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=11, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=11, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=11, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=11, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=11, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=11, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=11, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=11, z=36}, {name="default:cobble"})
    elseif v+0 == 4 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=12, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=12, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=12, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=12, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=12, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=12, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=12, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=12, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=12, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=12, z=36}, {name="default:cobble"})
    elseif v+0 == 5 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=13, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=13, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=13, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=13, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=13, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=13, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=13, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=13, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=13, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=13, z=36}, {name="default:cobble"})
    elseif v+0 == 6 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=14, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=14, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=14, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=14, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=14, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=14, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=14, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=14, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=14, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=14, z=36}, {name="default:cobble"})
    elseif v+0 == 7 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=15, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=15, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=15, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=15, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=15, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=15, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=15, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=15, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=15, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=15, z=36}, {name="default:cobble"})
    elseif v+0 == 8 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=16, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=16, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=16, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=16, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=16, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=16, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=16, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=16, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=16, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=16, z=36}, {name="default:cobble"})
    elseif v+0 == 9 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=17, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=17, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=17, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=17, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=17, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=17, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=17, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=17, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=17, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=17, z=36}, {name="default:cobble"})
    elseif v+0 == 10 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=18, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=18, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=18, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=18, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=18, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=18, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=18, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=18, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=18, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=18, z=36}, {name="default:cobble"})
    elseif v+0 == 11 then
        for i=67,74 do
            minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-74, y=19, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-73, y=19, z=30}, {name="default:cobble"})
        minetest.set_node({x=-72, y=19, z=30}, {name="default:cobble"})
        minetest.set_node({x=-71, y=19, z=31}, {name="default:cobble"})
        minetest.set_node({x=-70, y=19, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=19, z=32}, {name="default:cobble"})
        minetest.set_node({x=-68, y=19, z=33}, {name="default:cobble"})
        minetest.set_node({x=-68, y=19, z=34}, {name="default:cobble"})
        minetest.set_node({x=-67, y=19, z=35}, {name="default:cobble"})
        minetest.set_node({x=-67, y=19, z=36}, {name="default:cobble"})
    elseif v+0 == 12 then
        for j=67,74 do
            for i=30,37 do
                minetest.set_node({x=j*(-1), y=20, z=i}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-67, y=20, z=30}, {name="air"})
        minetest.set_node({x=-67, y=20, z=31}, {name="air"})
        minetest.set_node({x=-67, y=20, z=32}, {name="air"})
        minetest.set_node({x=-68, y=20, z=30}, {name="air"})
        minetest.set_node({x=-68, y=20, z=31}, {name="air"})
        minetest.set_node({x=-69, y=20, z=30}, {name="air"})
    elseif v+0 == 13 then
        for i=67,74 do
            if i%2 == 0 then
                minetest.set_node({x=i*(-1), y=21, z=37}, {name="default:cobble"})
            end
        end
        for i=30,37 do
            if i%2 == 1 then
                minetest.set_node({x=-74, y=21, z=i}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-68, y=21, z=33}, {name="default:cobble"})
        minetest.set_node({x=-69, y=21, z=32}, {name="default:cobble"})
        minetest.set_node({x=-70, y=21, z=31}, {name="default:cobble"})
    elseif v+0 == 14 then
        minetest.set_node({x=-68, y=22, z=33}, {name="default:cobble"})
        minetest.set_node({x=-69, y=22, z=32}, {name="default:cobble"})
        minetest.set_node({x=-70, y=22, z=31}, {name="default:cobble"})
        minetest.set_node({x=-74, y=22, z=37}, {name="default:cobble"})
        minetest.set_node({x=-68, y=22, z=37}, {name="default:cobble"})
        minetest.set_node({x=-74, y=22, z=31}, {name="default:cobble"})
        minetest.set_node({x=-68, y=23, z=33}, {name="default:cobble"})
        minetest.set_node({x=-69, y=23, z=32}, {name="default:cobble"})
        minetest.set_node({x=-70, y=23, z=31}, {name="default:cobble"})
        minetest.set_node({x=-74, y=23, z=37}, {name="default:cobble"})
        minetest.set_node({x=-68, y=23, z=37}, {name="default:cobble"})
        minetest.set_node({x=-74, y=23, z=31}, {name="default:cobble"})
        minetest.set_node({x=-69, y=23, z=37}, {name="default:cobble"})
        minetest.set_node({x=-73, y=23, z=37}, {name="default:cobble"})
        minetest.set_node({x=-74, y=23, z=36}, {name="default:cobble"})
        minetest.set_node({x=-74, y=23, z=32}, {name="default:cobble"})
    elseif v+0 == 15 then
        minetest.set_node({x=-69, y=24, z=32}, {name="default:cobble"})
        for i=33,37 do
            minetest.set_node({x=-68, y=24, z=i}, {name="default:cobble"})
        end
        for i=31,37 do
            minetest.set_node({x=-74, y=24, z=i}, {name="default:cobble"})
        end
        for i=68,74 do
            minetest.set_node({x=i*(-1), y=24, z=37}, {name="default:cobble"})
        end
        for i=70,74 do
            minetest.set_node({x=i*(-1), y=24, z=31}, {name="default:cobble"})
        end
    elseif v+0 == 16 then
        for i=33,36 do
            minetest.set_node({x=-69, y=25, z=i}, {name="default:cobble"})
        end
        for i=32,36 do
            minetest.set_node({x=-73, y=25, z=i}, {name="default:cobble"})
        end
        for i=69,73 do
            minetest.set_node({x=i*(-1), y=25, z=36}, {name="default:cobble"})
        end
        for i=70,73 do
            minetest.set_node({x=i*(-1), y=25, z=32}, {name="default:cobble"})
        end
    elseif v+0 == 17 then
        for i=33,35 do
            minetest.set_node({x=-72, y=26, z=i}, {name="default:cobble"})
            minetest.set_node({x=-70, y=26, z=i}, {name="default:cobble"})
        end
        for i=70,72 do
            minetest.set_node({x=i*(-1), y=26, z=35}, {name="default:cobble"})
            minetest.set_node({x=i*(-1), y=26, z=33}, {name="default:cobble"})
        end
        minetest.set_node({x=-71, y=27, z=34}, {name="default:cobble"})
    elseif v+0 == 18 then
        minetest.set_node({x=-73, y=21, z=34}, {name="castrum:castrum_knight1"})
        minetest.set_node({x=-71, y=21, z=36}, {name="castrum:castrum_knight1"})
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=34}, above={x=-73, y=21, z=34}}, 1)
        screwdriver_handler(player, {type="node", under={x=-71, y=21, z=36}, above={x=-71, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-71, y=21, z=36}, above={x=-71, y=21, z=36}}, 1)
    elseif v+0 == 19 then
        for i=30,37 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:stone_block"})
            end
        end
        for i=30,37 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:stone_block"})
            end
        end
        for i=30,37 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:stone_block"})
            end
        end
        for i=67,74 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:stone_block"})
            end
        end
        for i=67,74 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:stone_block"})
            end
        end
        for i=67,74 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:stone_block"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-73, y=k, z=30}, {name="default:stone_block"})
                minetest.set_node({x=-71, y=k, z=31}, {name="default:stone_block"})
                minetest.set_node({x=-69, y=k, z=32}, {name="default:stone_block"})
                minetest.set_node({x=-68, y=k, z=34}, {name="default:stone_block"})
                minetest.set_node({x=-67, y=k, z=36}, {name="default:stone_block"})
            end
        end
        minetest.set_node({x=-72, y=10, z=30}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=14, z=30}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=18, z=30}, {name="default:stone_block"})
        minetest.set_node({x=-70, y=12, z=31}, {name="default:stone_block"})
        minetest.set_node({x=-70, y=16, z=31}, {name="default:stone_block"})
        minetest.set_node({x=-67, y=10, z=35}, {name="default:stone_block"})
        minetest.set_node({x=-67, y=14, z=35}, {name="default:stone_block"})
        minetest.set_node({x=-67, y=18, z=35}, {name="default:stone_block"})
        minetest.set_node({x=-68, y=12, z=33}, {name="default:stone_block"})
        minetest.set_node({x=-68, y=16, z=33}, {name="default:stone_block"})
    elseif v+0 == 20 then
        for j=67,74 do
            for i=30,37 do
                for k=9,27 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 21 then
        for i=30,37 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=30,37 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=30,37 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=67,74 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:desert_cobble"})
            end
        end
        for i=67,74 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:desert_cobble"})
            end
        end
        for i=67,74 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:desert_cobble"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-73, y=k, z=30}, {name="default:desert_cobble"})
                minetest.set_node({x=-71, y=k, z=31}, {name="default:desert_cobble"})
                minetest.set_node({x=-69, y=k, z=32}, {name="default:desert_cobble"})
                minetest.set_node({x=-68, y=k, z=34}, {name="default:desert_cobble"})
                minetest.set_node({x=-67, y=k, z=36}, {name="default:desert_cobble"})
            end
        end
        minetest.set_node({x=-72, y=10, z=30}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=14, z=30}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=18, z=30}, {name="default:desert_cobble"})
        minetest.set_node({x=-70, y=12, z=31}, {name="default:desert_cobble"})
        minetest.set_node({x=-70, y=16, z=31}, {name="default:desert_cobble"})
        minetest.set_node({x=-67, y=10, z=35}, {name="default:desert_cobble"})
        minetest.set_node({x=-67, y=14, z=35}, {name="default:desert_cobble"})
        minetest.set_node({x=-67, y=18, z=35}, {name="default:desert_cobble"})
        minetest.set_node({x=-68, y=12, z=33}, {name="default:desert_cobble"})
        minetest.set_node({x=-68, y=16, z=33}, {name="default:desert_cobble"})
	elseif v+0 == 22 then
        for j=67,74 do
            for i=30,37 do
                for k=9,27 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 23 then
        for i=30,37 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=30,37 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=30,37 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=67,74 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:desert_stone_block"})
            end
        end
        for i=67,74 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:desert_stone_block"})
            end
        end
        for i=67,74 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:desert_stone_block"})
            end
        end
        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-73, y=k, z=30}, {name="default:desert_stone_block"})
                minetest.set_node({x=-71, y=k, z=31}, {name="default:desert_stone_block"})
                minetest.set_node({x=-69, y=k, z=32}, {name="default:desert_stone_block"})
                minetest.set_node({x=-68, y=k, z=34}, {name="default:desert_stone_block"})
                minetest.set_node({x=-67, y=k, z=36}, {name="default:desert_stone_block"})
            end
        end
        minetest.set_node({x=-72, y=10, z=30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=14, z=30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=18, z=30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-70, y=12, z=31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-70, y=16, z=31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-67, y=10, z=35}, {name="default:desert_stone_block"})
        minetest.set_node({x=-67, y=14, z=35}, {name="default:desert_stone_block"})
        minetest.set_node({x=-67, y=18, z=35}, {name="default:desert_stone_block"})
        minetest.set_node({x=-68, y=12, z=33}, {name="default:desert_stone_block"})
        minetest.set_node({x=-68, y=16, z=33}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then
        for j=67,74 do
            for i=30,37 do
                for k=9,27 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="air"})
                end
            end
        end
    end
end
function Tower4(v,player)
    if v+0 == 1 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=9, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=9, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=9, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=9, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=9, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=9, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=9, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=9, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=9, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=9, z=36}, {name="default:cobble"})
    elseif v+0 == 2 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=10, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=10, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=10, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=10, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=10, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=10, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=10, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=10, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=10, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=10, z=36}, {name="default:cobble"})
    elseif v+0 == 3 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=11, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=11, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=11, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=11, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=11, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=11, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=11, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=11, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=11, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=11, z=36}, {name="default:cobble"})
    elseif v+0 == 4 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=12, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=12, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=12, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=12, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=12, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=12, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=12, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=12, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=12, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=12, z=36}, {name="default:cobble"})
    elseif v+0 == 5 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=13, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=13, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=13, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=13, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=13, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=13, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=13, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=13, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=13, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=13, z=36}, {name="default:cobble"})
    elseif v+0 == 6 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=14, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=14, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=14, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=14, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=14, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=14, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=14, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=14, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=14, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=14, z=36}, {name="default:cobble"})
    elseif v+0 == 7 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=15, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=15, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=15, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=15, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=15, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=15, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=15, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=15, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=15, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=15, z=36}, {name="default:cobble"})
    elseif v+0 == 8 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=16, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=16, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=16, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=16, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=16, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=16, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=16, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=16, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=16, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=16, z=36}, {name="default:cobble"})
    elseif v+0 == 9 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=17, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=17, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=17, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=17, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=17, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=17, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=17, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=17, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=17, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=17, z=36}, {name="default:cobble"})
    elseif v+0 == 10 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=18, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=18, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=18, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=18, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=18, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=18, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=18, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=18, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=18, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=18, z=36}, {name="default:cobble"})
    elseif v+0 == 11 then
        for i=6,13 do
            minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:cobble"})
        end
        for i=30,37 do
            minetest.set_node({x=-6, y=19, z=i}, {name="default:cobble"})
        end
        minetest.set_node({x=-7, y=19, z=30}, {name="default:cobble"})
        minetest.set_node({x=-8, y=19, z=30}, {name="default:cobble"})
        minetest.set_node({x=-9, y=19, z=31}, {name="default:cobble"})
        minetest.set_node({x=-10, y=19, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=19, z=32}, {name="default:cobble"})
        minetest.set_node({x=-12, y=19, z=33}, {name="default:cobble"})
        minetest.set_node({x=-12, y=19, z=34}, {name="default:cobble"})
        minetest.set_node({x=-13, y=19, z=35}, {name="default:cobble"})
        minetest.set_node({x=-13, y=19, z=36}, {name="default:cobble"})
    elseif v+0 == 12 then
        for j=6,13 do
            for i=30,37 do
                minetest.set_node({x=j*(-1), y=20, z=i}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-13, y=20, z=30}, {name="air"})
        minetest.set_node({x=-13, y=20, z=31}, {name="air"})
        minetest.set_node({x=-13, y=20, z=32}, {name="air"})
        minetest.set_node({x=-12, y=20, z=30}, {name="air"})
        minetest.set_node({x=-12, y=20, z=31}, {name="air"})
        minetest.set_node({x=-11, y=20, z=30}, {name="air"})
    elseif v+0 == 13 then
        for i=6,13 do
            if i%2 == 0 then
                minetest.set_node({x=i*(-1), y=21, z=37}, {name="default:cobble"})
            end
        end
        for i=30,37 do
            if i%2 == 1 then
                minetest.set_node({x=-6, y=21, z=i}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-12, y=21, z=33}, {name="default:cobble"})
        minetest.set_node({x=-11, y=21, z=32}, {name="default:cobble"})
        minetest.set_node({x=-10, y=21, z=31}, {name="default:cobble"})
    elseif v+0 == 14 then
        minetest.set_node({x=-12, y=22, z=33}, {name="default:cobble"})
        minetest.set_node({x=-11, y=22, z=32}, {name="default:cobble"})
        minetest.set_node({x=-10, y=22, z=31}, {name="default:cobble"})
        minetest.set_node({x=-6, y=22, z=37}, {name="default:cobble"})
        minetest.set_node({x=-12, y=22, z=37}, {name="default:cobble"})
        minetest.set_node({x=-6, y=22, z=31}, {name="default:cobble"})
        minetest.set_node({x=-12, y=23, z=33}, {name="default:cobble"})
        minetest.set_node({x=-11, y=23, z=32}, {name="default:cobble"})
        minetest.set_node({x=-10, y=23, z=31}, {name="default:cobble"})
        minetest.set_node({x=-6, y=23, z=37}, {name="default:cobble"})
        minetest.set_node({x=-12, y=23, z=37}, {name="default:cobble"})
        minetest.set_node({x=-6, y=23, z=31}, {name="default:cobble"})
        minetest.set_node({x=-11, y=23, z=37}, {name="default:cobble"})
        minetest.set_node({x=-7, y=23, z=37}, {name="default:cobble"})
        minetest.set_node({x=-6, y=23, z=36}, {name="default:cobble"})
        minetest.set_node({x=-6, y=23, z=32}, {name="default:cobble"})
    elseif v+0 == 15 then
        minetest.set_node({x=-11, y=24, z=32}, {name="default:cobble"})
        for i=33,37 do
            minetest.set_node({x=-12, y=24, z=i}, {name="default:cobble"})
        end
        for i=31,37 do
            minetest.set_node({x=-6, y=24, z=i}, {name="default:cobble"})
        end
        for i=6,12 do
            minetest.set_node({x=i*(-1), y=24, z=37}, {name="default:cobble"})
        end
        for i=6,10 do
            minetest.set_node({x=i*(-1), y=24, z=31}, {name="default:cobble"})
        end
    elseif v+0 == 16 then
        for i=33,36 do
            minetest.set_node({x=-11, y=25, z=i}, {name="default:cobble"})
        end
        for i=32,36 do
            minetest.set_node({x=-7, y=25, z=i}, {name="default:cobble"})
        end
        for i=7,11 do
            minetest.set_node({x=i*(-1), y=25, z=36}, {name="default:cobble"})
        end
        for i=7,10 do
            minetest.set_node({x=i*(-1), y=25, z=32}, {name="default:cobble"})
        end
    elseif v+0 == 17 then
        for i=33,35 do
            minetest.set_node({x=-8, y=26, z=i}, {name="default:cobble"})
            minetest.set_node({x=-10, y=26, z=i}, {name="default:cobble"})
        end
        for i=8,10 do
            minetest.set_node({x=i*(-1), y=26, z=35}, {name="default:cobble"})
            minetest.set_node({x=i*(-1), y=26, z=33}, {name="default:cobble"})
        end
        minetest.set_node({x=-9, y=27, z=34}, {name="default:cobble"})
    elseif v+0 == 18 then
        minetest.set_node({x=-7, y=21, z=34}, {name="castrum:castrum_knight1"})
        minetest.set_node({x=-9, y=21, z=36}, {name="castrum:castrum_knight1"})
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=34}, above={x=-7, y=21, z=34}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=34}, above={x=-7, y=21, z=34}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=34}, above={x=-7, y=21, z=34}}, 1)
        screwdriver_handler(player, {type="node", under={x=-9, y=21, z=36}, above={x=-9, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-9, y=21, z=36}, above={x=-9, y=21, z=36}}, 1)
    elseif v+0 == 19 then
        for i=30,37 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=20, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=16, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=12, z=i}, {name="default:stone_block"})
            end
        end
        for i=30,37 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=17, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=15, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=13, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=11, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=9, z=i}, {name="default:stone_block"})
            end
        end
        for i=30,37 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=18, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=14, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=10, z=i}, {name="default:stone_block"})
            end
        end
        for i=6,13 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:stone_block"})
            end
        end
        for i=6,13 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:stone_block"})
            end
        end
        for i=6,13 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:stone_block"})
            end
        end

        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-7, y=k, z=30}, {name="default:stone_block"})
                minetest.set_node({x=-9, y=k, z=31}, {name="default:stone_block"})
                minetest.set_node({x=-11, y=k, z=32}, {name="default:stone_block"})
                minetest.set_node({x=-12, y=k, z=34}, {name="default:stone_block"})
                minetest.set_node({x=-13, y=k, z=36}, {name="default:stone_block"})
            end
        end
        minetest.set_node({x=-8, y=10, z=30}, {name="default:stone_block"})
        minetest.set_node({x=-8, y=14, z=30}, {name="default:stone_block"})
        minetest.set_node({x=-8, y=18, z=30}, {name="default:stone_block"})
        minetest.set_node({x=-10, y=12, z=31}, {name="default:stone_block"})
        minetest.set_node({x=-10, y=16, z=31}, {name="default:stone_block"})
        minetest.set_node({x=-13, y=10, z=35}, {name="default:stone_block"})
        minetest.set_node({x=-13, y=14, z=35}, {name="default:stone_block"})
        minetest.set_node({x=-13, y=18, z=35}, {name="default:stone_block"})
        minetest.set_node({x=-12, y=12, z=33}, {name="default:stone_block"})
        minetest.set_node({x=-12, y=16, z=33}, {name="default:stone_block"})
    elseif v+0 == 20 then
        for j=6,13 do
            for i=30,37 do
                for k=9,27 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 21 then
        for i=30,37 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=20, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=16, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=12, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=30,37 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=17, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=15, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=13, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=11, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=9, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=30,37 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=18, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=14, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=10, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=6,13 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:desert_cobble"})
            end
        end
        for i=6,13 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:desert_cobble"})
            end
        end
        for i=6,13 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:desert_cobble"})
            end
        end

        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-7, y=k, z=30}, {name="default:desert_cobble"})
                minetest.set_node({x=-9, y=k, z=31}, {name="default:desert_cobble"})
                minetest.set_node({x=-11, y=k, z=32}, {name="default:desert_cobble"})
                minetest.set_node({x=-12, y=k, z=34}, {name="default:desert_cobble"})
                minetest.set_node({x=-13, y=k, z=36}, {name="default:desert_cobble"})
            end
        end
        minetest.set_node({x=-8, y=10, z=30}, {name="default:desert_cobble"})
        minetest.set_node({x=-8, y=14, z=30}, {name="default:desert_cobble"})
        minetest.set_node({x=-8, y=18, z=30}, {name="default:desert_cobble"})
        minetest.set_node({x=-10, y=12, z=31}, {name="default:desert_cobble"})
        minetest.set_node({x=-10, y=16, z=31}, {name="default:desert_cobble"})
        minetest.set_node({x=-13, y=10, z=35}, {name="default:desert_cobble"})
        minetest.set_node({x=-13, y=14, z=35}, {name="default:desert_cobble"})
        minetest.set_node({x=-13, y=18, z=35}, {name="default:desert_cobble"})
        minetest.set_node({x=-12, y=12, z=33}, {name="default:desert_cobble"})
        minetest.set_node({x=-12, y=16, z=33}, {name="default:desert_cobble"})
	elseif v+0 == 22 then
        for j=6,13 do
            for i=30,37 do
                for k=9,27 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 23 then
        for i=30,37 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=20, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=16, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=12, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=30,37 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=17, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=15, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=13, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=11, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=9, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=30,37 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=18, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=14, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=10, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=6,13 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:desert_stone_block"})
            end
        end
        for i=6,13 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:desert_stone_block"})
            end
        end
        for i=6,13 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:desert_stone_block"})
            end
        end

        for k=9,20 do
            if k%2 == 1 then
                minetest.set_node({x=-7, y=k, z=30}, {name="default:desert_stone_block"})
                minetest.set_node({x=-9, y=k, z=31}, {name="default:desert_stone_block"})
                minetest.set_node({x=-11, y=k, z=32}, {name="default:desert_stone_block"})
                minetest.set_node({x=-12, y=k, z=34}, {name="default:desert_stone_block"})
                minetest.set_node({x=-13, y=k, z=36}, {name="default:desert_stone_block"})
            end
        end
        minetest.set_node({x=-8, y=10, z=30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-8, y=14, z=30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-8, y=18, z=30}, {name="default:desert_stone_block"})
        minetest.set_node({x=-10, y=12, z=31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-10, y=16, z=31}, {name="default:desert_stone_block"})
        minetest.set_node({x=-13, y=10, z=35}, {name="default:desert_stone_block"})
        minetest.set_node({x=-13, y=14, z=35}, {name="default:desert_stone_block"})
        minetest.set_node({x=-13, y=18, z=35}, {name="default:desert_stone_block"})
        minetest.set_node({x=-12, y=12, z=33}, {name="default:desert_stone_block"})
        minetest.set_node({x=-12, y=16, z=33}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then
        for j=6,13 do
            for i=30,37 do
                for k=9,27 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="air"})
                end
            end
        end
    end
end
function Wall_east(v,player)
    if v+0 == 1 then
        for i=0,29 do
            minetest.set_node({x=-6, y=9, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=9, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 2 then
        for i=0,29 do
            minetest.set_node({x=-6, y=10, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=10, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 3 then
        for i=0,29 do
            minetest.set_node({x=-6, y=11, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=11, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 4 then
        for i=0,29 do
            minetest.set_node({x=-6, y=12, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=12, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for i=0,29 do
            minetest.set_node({x=-6, y=13, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=13, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 6 then
        for i=0,29 do
            minetest.set_node({x=-6, y=14, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=14, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 7 then
        for i=0,29 do
            minetest.set_node({x=-6, y=15, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=15, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 8 then
        for i=0,29 do
            minetest.set_node({x=-6, y=16, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=16, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 9 then
        for i=0,29 do
            minetest.set_node({x=-6, y=17, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=17, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 10 then
        for i=0,29 do
            minetest.set_node({x=-6, y=18, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=18, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 11 then
        for i=0,29 do
            minetest.set_node({x=-6, y=19, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-6, y=19, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 12 then
        for j=6,9 do
            for i=0,29 do
                minetest.set_node({x=j*(-1), y=20, z=i}, {name="default:cobble"})
            end
            for i=0,23 do
                minetest.set_node({x=j*(-1), y=20, z=i*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 13 then
        for i=0,29 do
            if i%2 == 1 then
                minetest.set_node({x=-6, y=21, z=i}, {name="default:cobble"})
            end
        end
        for i=0,23 do
            if i%2 == 1 then
                minetest.set_node({x=-6, y=21, z=i*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 14 then
        minetest.set_node({x=-7, y=21, z=-21}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-7, y=21, z=-17}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-7, y=21, z=-13}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-7, y=21, z=19}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-7, y=21, z=23}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-7, y=21, z=27}, {name="castrum:castrum_knight2"})
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-21}, above={x=-7, y=21, z=-21}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-17}, above={x=-7, y=21, z=-17}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-13}, above={x=-7, y=21, z=-13}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=19}, above={x=-7, y=21, z=19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=23}, above={x=-7, y=21, z=23}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=27}, above={x=-7, y=21, z=27}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-21}, above={x=-7, y=21, z=-21}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-17}, above={x=-7, y=21, z=-17}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-13}, above={x=-7, y=21, z=-13}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=19}, above={x=-7, y=21, z=19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=23}, above={x=-7, y=21, z=23}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=27}, above={x=-7, y=21, z=27}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-21}, above={x=-7, y=21, z=-21}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-17}, above={x=-7, y=21, z=-17}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=-13}, above={x=-7, y=21, z=-13}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=19}, above={x=-7, y=21, z=19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=23}, above={x=-7, y=21, z=23}}, 1)
        screwdriver_handler(player, {type="node", under={x=-7, y=21, z=27}, above={x=-7, y=21, z=27}}, 1)
    elseif v+0 == 15 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=20, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=16, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=12, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=20, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=16, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=12, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=17, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=15, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=13, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=11, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=9, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=17, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=15, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=13, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=11, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=9, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=18, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=14, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=10, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=18, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=14, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-6, y=10, z=i*(-1)}, {name="default:stone_block"})
            end
        end
    elseif v+0 == 16 then
        for i=6,9 do
            for k=9,21 do
                for j=0,29 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone_block"})
                    end
                end
                for j=0,23 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 17 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=20, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=16, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=12, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=20, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=16, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=12, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=17, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=15, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=13, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=11, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=9, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=17, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=15, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=13, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=11, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=9, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=18, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=14, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=10, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=18, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=14, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-6, y=10, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
	elseif v+0 == 18 then
        for i=6,9 do
            for k=9,21 do
                for j=0,29 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:desert_cobble"})
                    end
                end
                for j=0,23 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 19 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=20, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=16, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=12, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=20, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=16, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=12, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=17, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=15, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=13, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=11, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=9, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-6, y=19, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=17, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=15, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=13, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=11, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=9, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-6, y=18, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=14, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=10, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-6, y=18, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=14, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-6, y=10, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
    elseif v+0 == 0 then
        for i=6,9 do
            for k=9,21 do
                for j=0,29 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
                for j=0,23 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Wall_west(v,player)
    if v+0 == 1 then
        for i=0,29 do
            minetest.set_node({x=-74, y=9, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 2 then
        for i=0,29 do
            minetest.set_node({x=-74, y=10, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 3 then
        for i=0,29 do
            minetest.set_node({x=-74, y=11, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 4 then
        for i=0,29 do
            minetest.set_node({x=-74, y=12, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for i=0,29 do
            minetest.set_node({x=-74, y=13, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 6 then
        for i=0,29 do
            minetest.set_node({x=-74, y=14, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 7 then
        for i=0,29 do
            minetest.set_node({x=-74, y=15, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 8 then
        for i=0,29 do
            minetest.set_node({x=-74, y=16, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 9 then
        for i=0,29 do
            minetest.set_node({x=-74, y=17, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 10 then
        for i=0,29 do
            minetest.set_node({x=-74, y=18, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 11 then
        for i=0,29 do
            minetest.set_node({x=-74, y=19, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 12 then
        for j=71,74 do
            for i=0,29 do
                minetest.set_node({x=j*(-1), y=20, z=i}, {name="default:cobble"})
            end
            for i=0,23 do
                minetest.set_node({x=j*(-1), y=20, z=i*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 13 then
        for i=0,29 do
            if i%2 == 1 then
                minetest.set_node({x=-74, y=21, z=i}, {name="default:cobble"})
            end
        end
        for i=0,23 do
            if i%2 == 1 then
                minetest.set_node({x=-74, y=21, z=i*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 14 then
        minetest.set_node({x=-73, y=21, z=-21}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=-17}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=-13}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=19}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=23}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=27}, {name="castrum:castrum_knight2"})
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=-21}, above={x=-73, y=21, z=-21}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=-17}, above={x=-73, y=21, z=-17}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=-13}, above={x=-73, y=21, z=-13}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=19}, above={x=-73, y=21, z=19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=23}, above={x=-73, y=21, z=23}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=27}, above={x=-73, y=21, z=27}}, 1)
    elseif v+0 == 15 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:stone_block"})
            end
        end
    elseif v+0 == 16 then
        for i=71,74 do
            for k=9,21 do
                for j=0,29 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone_block"})
                    end
                end
                for j=0,23 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 17 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
	elseif v+0 == 18 then
        for i=71,74 do
            for k=9,21 do
                for j=0,29 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:desert_cobble"})
                    end
                end
                for j=0,23 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 19 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
    elseif v+0 == 0 then
        for i=71,74 do
            for k=9,21 do
                for j=0,29 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
                for j=0,23 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    
    end
end
function Wall_north(v,player)
    if v+0 == 1 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 2 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 3 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 4 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 6 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 7 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 8 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 9 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 10 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 11 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 12 then
        for i=14,66 do
            for j=34,37 do
                minetest.set_node({x=i*(-1), y=20, z=j}, {name="default:cobble"})
            end
        end
    elseif v+0 == 13 then
        for i=14,66 do
            if i%2 == 0 then
                minetest.set_node({x=i*(-1), y=21, z=37}, {name="default:cobble"})
            end
        end
    elseif v+0 == 14 then
        minetest.set_node({x=-64, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-60, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-56, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-24, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-20, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-16, y=21, z=36}, {name="castrum:castrum_knight2"})
        screwdriver_handler(player, {type="node", under={x=-64, y=21, z=36}, above={x=-64, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-60, y=21, z=36}, above={x=-60, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-56, y=21, z=36}, above={x=-56, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-24, y=21, z=36}, above={x=-24, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-20, y=21, z=36}, above={x=-20, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-16, y=21, z=36}, above={x=-16, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-64, y=21, z=36}, above={x=-64, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-60, y=21, z=36}, above={x=-60, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-56, y=21, z=36}, above={x=-56, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-24, y=21, z=36}, above={x=-24, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-20, y=21, z=36}, above={x=-20, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-16, y=21, z=36}, above={x=-16, y=21, z=36}}, 1)
    elseif v+0 == 15 then
        for i=14,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:stone_block"})
            end
        end
        for i=14,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:stone_block"})
            end
        end
        for i=14,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:stone_block"})
            end
        end
    elseif v+0 == 16 then
        for i=14,66 do
            for j=34,37 do
                for k=9,21 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 17 then
        for i=14,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:desert_cobble"})
            end
        end
        for i=14,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:desert_cobble"})
            end
        end
        for i=14,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:desert_cobble"})
            end
        end
	elseif v+0 == 18 then
        for i=14,66 do
            for j=34,37 do
                for k=9,21 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 19 then
        for i=14,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:desert_stone_block"})
            end
        end
        for i=14,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:desert_stone_block"})
            end
        end
        for i=14,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:desert_stone_block"})
            end
        end
    elseif v+0 == 0 then
        for i=14,66 do
            for j=34,37 do
                for k=9,21 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
            end
        end
    end
end
function Moat_west(v,player)
    if v+0 == 1 then
        for i=0,31 do
            minetest.set_node({x=-79, y=8, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-79, y=8, z=i}, {name="air"})
        end
    elseif v+0 == 2 then
        for j=78,80 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-79, y=7, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-79, y=7, z=i}, {name="air"})
        end
    elseif v+0 == 3 then
        for j=77,81 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for j=78,80 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-79, y=6, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-79, y=6, z=i}, {name="air"})
        end
    elseif v+0 == 4 then
        for j=76,82 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for j=77,81 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for j=78,80 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-79, y=5, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-79, y=5, z=i}, {name="air"})
        end
    elseif v+0 == 5 then
        for j=75,83 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for j=76,82 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for j=77,81 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for j=78,80 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-79, y=4, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-79, y=4, z=i}, {name="air"})
        end
    elseif v+0 == 6 then
        for j=75,83 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for j=76,82 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for j=77,81 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for j=78,80 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 7 then
        for j=75,83 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for j=76,82 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for j=77,81 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 8 then
        for j=75,83 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for j=76,82 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 9 then
        for j=75,83 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 10 then
        for j=75,83 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="castrum:water"})
            end
        end
	elseif v+0 == 11 then
        for j=75,83 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="castrum:water"})
            end
        end
    elseif v+0 == 0 then
        for k=4,7 do
            for j=75,83 do
                for i=0,31 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone"})
                end
                for i=0,37 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:stone"})
                end
            end
            
        end
        for j=75,83 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="castrum:dirt_with_grass"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="castrum:dirt_with_grass"})
            end
        end
    end
end
function Smithy(v,player)
    if v+0 == 1 then
        for j=62,69 do
            for i=6,14 do
                minetest.set_node({x=j*(-1), y=9, z=i*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-61, y=9, z=-8}, {name="stairs:stair_cobble"})
        minetest.set_node({x=-61, y=9, z=-9}, {name="stairs:stair_cobble"})
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)

        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
    elseif v+0 == 2 then
        for j=62,69 do
            minetest.set_node({x=j*(-1), y=10, z=-11}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=10, z=-6}, {name="default:cobble"})
        end
        for i=6,14 do
            minetest.set_node({x=-69, y=10, z=i*(-1)}, {name="default:cobble"})
        end
        for j=64,69 do
            minetest.set_node({x=j*(-1), y=10, z=-14}, {name="default:cobble"})
        end
        minetest.set_node({x=-62, y=10, z=-10}, {name="default:cobble"})
        minetest.set_node({x=-62, y=10, z=-7}, {name="default:cobble"})
        minetest.set_node({x=-67, y=10, z=-13}, {name="default:cobble"})
        minetest.set_node({x=-67, y=10, z=-12}, {name="default:cobble"})
    elseif v+0 == 3 then
        for j=62,69 do
            minetest.set_node({x=j*(-1), y=11, z=-11}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=11, z=-6}, {name="default:cobble"})
        end
        for i=6,14 do
            minetest.set_node({x=-69, y=11, z=i*(-1)}, {name="default:cobble"})
        end
        for j=65,69 do
            minetest.set_node({x=j*(-1), y=11, z=-14}, {name="default:cobble"})
        end
        minetest.set_node({x=-62, y=11, z=-10}, {name="default:cobble"})
        minetest.set_node({x=-62, y=11, z=-7}, {name="default:cobble"})
        minetest.set_node({x=-62, y=10, z=-9}, {name="doors:door_wood_a"})
        minetest.set_node({x=-62, y=10, z=-8}, {name="doors:door_wood_b"})
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-9}, above={x=-62, y=10, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-9}, above={x=-62, y=10, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-9}, above={x=-62, y=10, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-8}, above={x=-62, y=10, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-8}, above={x=-62, y=10, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-8}, above={x=-62, y=10, z=-8}}, 1)
    elseif v+0 == 4 then
        for j=62,69 do
            minetest.set_node({x=j*(-1), y=12, z=-11}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=12, z=-6}, {name="default:cobble"})
        end
        for i=6,14 do
            minetest.set_node({x=-69, y=12, z=i*(-1)}, {name="default:cobble"})
        end
        for i=6,11 do
            minetest.set_node({x=-62, y=12, z=i*(-1)}, {name="default:cobble"})
        end
        for j=66,69 do
            minetest.set_node({x=j*(-1), y=12, z=-14}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for j=63,68 do
            minetest.set_node({x=j*(-1), y=13, z=-10}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=13, z=-7}, {name="default:cobble"})
        end
        minetest.set_node({x=-63, y=13, z=-9}, {name="default:cobble"})
        minetest.set_node({x=-63, y=13, z=-8}, {name="default:cobble"})
        minetest.set_node({x=-68, y=13, z=-9}, {name="default:cobble"})
        minetest.set_node({x=-68, y=13, z=-8}, {name="default:cobble"})
    elseif v+0 == 6 then
        for j=64,67 do
            minetest.set_node({x=j*(-1), y=14, z=-9}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=14, z=-8}, {name="default:cobble"})
        end
        minetest.set_node({x=-68, y=10, z=-13}, {name="default:lava_source"})
        minetest.set_node({x=-68, y=10, z=-12}, {name="default:lava_source"})
    elseif v+0 == 7 then
        for j=61,69 do
            for i=6,14 do
                for k=9,14 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
        minetest.set_node({x=-61, y=9, z=-8}, {name="stairs:stair_stone_block"})
        minetest.set_node({x=-61, y=9, z=-9}, {name="stairs:stair_stone_block"})
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
	elseif v+0 == 8 then
		for j=61,69 do
            for i=6,14 do
                for k=9,14 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
        minetest.set_node({x=-61, y=9, z=-8}, {name="stairs:stair_desert_cobble"})
        minetest.set_node({x=-61, y=9, z=-9}, {name="stairs:stair_desert_cobble"})
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
    elseif v+0 == 0 then
        for j=61,69 do
            for i=6,14 do
                for k=9,14 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Stable(v,player)
    if v+0 == 1 then
        for j=66,69 do
            minetest.set_node({x=j*(-1), y=9, z=-1}, {name="default:wood"})
            minetest.set_node({x=j*(-1), y=9, z=7}, {name="default:wood"})
        end
        for i=0,6 do
            minetest.set_node({x=-69, y=9, z=i}, {name="default:wood"})
        end
    elseif v+0 == 2 then
        for j=66,69 do
            minetest.set_node({x=j*(-1), y=10, z=-1}, {name="default:wood"})
            minetest.set_node({x=j*(-1), y=10, z=7}, {name="default:wood"})
        end
        for i=0,6 do
            minetest.set_node({x=-69, y=10, z=i}, {name="default:wood"})
        end
    elseif v+0 == 3 then
        for j=66,69 do
            minetest.set_node({x=j*(-1), y=11, z=-1}, {name="default:wood"})
            minetest.set_node({x=j*(-1), y=11, z=7}, {name="default:wood"})
        end
        for i=0,6 do
            minetest.set_node({x=-69, y=11, z=i}, {name="default:wood"})
        end
    elseif v+0 == 4 then
        for j=66,68 do
            minetest.set_node({x=j*(-1), y=12, z=0}, {name="default:wood"})
            minetest.set_node({x=j*(-1), y=12, z=6}, {name="default:wood"})
        end
        for i=1,5 do
            minetest.set_node({x=-68, y=12, z=i}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for i=1,5 do
            minetest.set_node({x=-67, y=13, z=i}, {name="default:wood"})
            minetest.set_node({x=-66, y=13, z=i}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for j=61,65 do
            minetest.set_node({x=j*(-1), y=9, z=-1}, {name="default:fence_wood"})
            minetest.set_node({x=j*(-1), y=9, z=7}, {name="default:fence_wood"})
        end
        for i=0,6 do
            minetest.set_node({x=-61, y=9, z=i}, {name="default:fence_wood"})
        end
        minetest.set_node({x=-61, y=9, z=3}, {name="doors:gate_wood_closed"})
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
    elseif v+0 == 7 then
        minetest.set_node({x=-67, y=9, z=0}, {name="castrum:cobble"})
        minetest.set_node({x=-68, y=9, z=1}, {name="castrum:cobble"})
        minetest.set_node({x=-68, y=9, z=0}, {name="default:river_water_source"})
        minetest.set_node({x=-68, y=9, z=6}, {name="farming:straw"})
        minetest.set_node({x=-68, y=10, z=6}, {name="farming:straw"})
        minetest.set_node({x=-67, y=9, z=6}, {name="farming:straw"})
        minetest.set_node({x=-68, y=9, z=5}, {name="farming:straw"})
	elseif v+0 == 8 then
		for j=61,69 do
            for i=0,7 do
                for k=9,14 do
					if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:junglewood"})
                    end
					if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:fence_wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:fence_junglewood"})
                    end
					if minetest.get_node({x=j*(-1), y=k, z=i}).name == "doors:gate_wood_closed" then
						minetest.set_node({x=j*(-1), y=k, z=i}, {name="doors:gate_junglewood_closed"})
						screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
						screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
						screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
					end
                end
            end
        end
        for j=61,69 do
            for k=9,14 do
                if minetest.get_node({x=j*(-1), y=k, z=-1}).name == "default:wood" then
					minetest.set_node({x=j*(-1), y=k, z=-1}, {name="default:junglewood"})
				end
				if minetest.get_node({x=j*(-1), y=k, z=-1}).name == "default:fence_wood" then
					minetest.set_node({x=j*(-1), y=k, z=-1}, {name="default:fence_junglewood"})
				end
            end
        end
    elseif v+0 == 0 then
        for j=61,69 do
            for i=0,7 do
                for k=9,14 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="air"})
                end
            end
        end
        for j=61,69 do
            for k=9,14 do
                minetest.set_node({x=j*(-1), y=k, z=-1}, {name="air"})
            end
        end
    end
end
function Mine(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-16, y=9, z=-7}, {name="default:stone_with_coal"})
        minetest.set_node({x=-18, y=9, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-17, y=9, z=-13}, {name="default:stone_with_coal"})
        minetest.set_node({x=-14, y=9, z=-11}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=9, z=-8}, {name="default:stone_with_coal"})
        minetest.set_node({x=-11, y=9, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=9, z=-14}, {name="default:stone_with_coal"})
        minetest.set_node({x=-20, y=9, z=-15}, {name="default:chest"})
        screwdriver_handler(player, {type="node", under={x=-20, y=9, z=-15}, above={x=-20, y=9, z=-15}}, 1)
    elseif v+0 == 2 then
        minetest.set_node({x=-17, y=9, z=-7}, {name="default:stone_with_coal"})
        minetest.set_node({x=-16, y=9, z=-6}, {name="default:stone_with_coal"})
        minetest.set_node({x=-15, y=9, z=-7}, {name="default:stone_with_coal"})
        minetest.set_node({x=-16, y=9, z=-8}, {name="default:stone_with_coal"})
        minetest.set_node({x=-16, y=10, z=-7}, {name="default:stone_with_coal"})
        minetest.set_node({x=-19, y=9, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-18, y=9, z=-9}, {name="default:stone_with_coal"})
        minetest.set_node({x=-17, y=9, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-18, y=9, z=-11}, {name="default:stone_with_coal"})
        minetest.set_node({x=-18, y=10, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-18, y=9, z=-13}, {name="default:stone_with_coal"})
        minetest.set_node({x=-17, y=9, z=-12}, {name="default:stone_with_coal"})
        minetest.set_node({x=-16, y=9, z=-13}, {name="default:stone_with_coal"})
        minetest.set_node({x=-17, y=9, z=-14}, {name="default:stone_with_coal"})
        minetest.set_node({x=-17, y=10, z=-13}, {name="default:stone_with_coal"})
        minetest.set_node({x=-15, y=9, z=-11}, {name="default:stone_with_coal"})
        minetest.set_node({x=-14, y=9, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=9, z=-11}, {name="default:stone_with_coal"})
        minetest.set_node({x=-14, y=9, z=-12}, {name="default:stone_with_coal"})
        minetest.set_node({x=-14, y=10, z=-11}, {name="default:stone_with_coal"})
        minetest.set_node({x=-14, y=9, z=-8}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=9, z=-7}, {name="default:stone_with_coal"})
        minetest.set_node({x=-12, y=9, z=-8}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=9, z=-9}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=10, z=-8}, {name="default:stone_with_coal"})
        minetest.set_node({x=-12, y=9, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-11, y=9, z=-9}, {name="default:stone_with_coal"})
        minetest.set_node({x=-11, y=9, z=-11}, {name="default:stone_with_coal"})
        minetest.set_node({x=-11, y=10, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-14, y=9, z=-14}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=9, z=-13}, {name="default:stone_with_coal"})
        minetest.set_node({x=-12, y=9, z=-14}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=10, z=-14}, {name="default:stone_with_coal"})
    elseif v+0 == 3 then
        minetest.set_node({x=-16, y=11, z=-7}, {name="default:stone_with_coal"})
        minetest.set_node({x=-18, y=11, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-17, y=11, z=-13}, {name="default:stone_with_coal"})
        minetest.set_node({x=-14, y=11, z=-11}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=11, z=-8}, {name="default:stone_with_coal"})
        minetest.set_node({x=-11, y=11, z=-10}, {name="default:stone_with_coal"})
        minetest.set_node({x=-13, y=11, z=-14}, {name="default:stone_with_coal"})
        minetest.set_node({x=-19, y=9, z=-12}, {name="default:stone_with_iron"})
        minetest.set_node({x=-18, y=9, z=-8}, {name="default:stone_with_iron"})
        minetest.set_node({x=-15, y=9, z=-9}, {name="default:stone_with_iron"})
        minetest.set_node({x=-15, y=9, z=-13}, {name="default:stone_with_iron"})
        minetest.set_node({x=-14, y=9, z=-6}, {name="default:stone_with_iron"})
        minetest.set_node({x=-12, y=9, z=-12}, {name="default:stone_with_iron"})
        minetest.set_node({x=-11, y=9, z=-7}, {name="default:stone_with_iron"})
	elseif v+0 == 4 then
		minetest.set_node({x=-19, y=10, z=-12}, {name="default:stone_with_iron"})
        minetest.set_node({x=-18, y=10, z=-8}, {name="default:stone_with_iron"})
        minetest.set_node({x=-15, y=10, z=-9}, {name="default:stone_with_iron"})
        minetest.set_node({x=-15, y=10, z=-13}, {name="default:stone_with_iron"})
        minetest.set_node({x=-14, y=10, z=-6}, {name="default:stone_with_iron"})
        minetest.set_node({x=-12, y=10, z=-12}, {name="default:stone_with_iron"})
        minetest.set_node({x=-11, y=10, z=-7}, {name="default:stone_with_iron"})
		minetest.set_node({x=-12, y=9, z=-7}, {name="default:stone_with_iron"})
		minetest.set_node({x=-11, y=9, z=-6}, {name="default:stone_with_iron"})
		minetest.set_node({x=-11, y=9, z=-8}, {name="default:stone_with_iron"})
		minetest.set_node({x=-13, y=9, z=-6}, {name="default:stone_with_iron"})
		minetest.set_node({x=-14, y=9, z=-7}, {name="default:stone_with_iron"})
		minetest.set_node({x=-15, y=9, z=-6}, {name="default:stone_with_iron"})
		minetest.set_node({x=-14, y=9, z=-9}, {name="default:stone_with_iron"})
		minetest.set_node({x=-15, y=9, z=-10}, {name="default:stone_with_iron"})
		minetest.set_node({x=-15, y=9, z=-8}, {name="default:stone_with_iron"})
		minetest.set_node({x=-16, y=9, z=-9}, {name="default:stone_with_iron"})
		minetest.set_node({x=-11, y=9, z=-12}, {name="default:stone_with_iron"})
		minetest.set_node({x=-12, y=9, z=-13}, {name="default:stone_with_iron"})
		minetest.set_node({x=-12, y=9, z=-11}, {name="default:stone_with_iron"})
		minetest.set_node({x=-13, y=9, z=-12}, {name="default:stone_with_iron"})
		minetest.set_node({x=-14, y=9, z=-13}, {name="default:stone_with_iron"})
		minetest.set_node({x=-15, y=9, z=-12}, {name="default:stone_with_iron"})
		minetest.set_node({x=-15, y=9, z=-14}, {name="default:stone_with_iron"})
		minetest.set_node({x=-18, y=9, z=-7}, {name="default:stone_with_iron"})
		minetest.set_node({x=-17, y=9, z=-8}, {name="default:stone_with_iron"})
		minetest.set_node({x=-19, y=9, z=-8}, {name="default:stone_with_iron"})
		minetest.set_node({x=-19, y=9, z=-11}, {name="default:stone_with_iron"})
		minetest.set_node({x=-18, y=9, z=-12}, {name="default:stone_with_iron"})
		minetest.set_node({x=-19, y=9, z=-13}, {name="default:stone_with_iron"})
	elseif v+0 == 5 then
		minetest.set_node({x=-19, y=11, z=-12}, {name="default:stone_with_iron"})
        minetest.set_node({x=-18, y=11, z=-8}, {name="default:stone_with_iron"})
        minetest.set_node({x=-15, y=11, z=-9}, {name="default:stone_with_iron"})
        minetest.set_node({x=-15, y=11, z=-13}, {name="default:stone_with_iron"})
        minetest.set_node({x=-14, y=11, z=-6}, {name="default:stone_with_iron"})
        minetest.set_node({x=-12, y=11, z=-12}, {name="default:stone_with_iron"})
        minetest.set_node({x=-11, y=11, z=-7}, {name="default:stone_with_iron"})
		minetest.set_node({x=-12, y=9, z=-9}, {name="default:stone_with_tin"})
		minetest.set_node({x=-16, y=9, z=-11}, {name="default:stone_with_tin"})
		minetest.set_node({x=-12, y=9, z=-6}, {name="default:stone_with_copper"})
		minetest.set_node({x=-13, y=9, z=-10}, {name="default:stone_with_copper"})
		minetest.set_node({x=-11, y=9, z=-13}, {name="default:stone_with_copper"})
		minetest.set_node({x=-18, y=9, z=-6}, {name="default:stone_with_copper"})
		minetest.set_node({x=-18, y=9, z=-14}, {name="default:stone_with_copper"})
	elseif v+0 == 6 then
		minetest.set_node({x=-12, y=10, z=-9}, {name="default:stone_with_tin"})
		minetest.set_node({x=-16, y=10, z=-11}, {name="default:stone_with_tin"})
		minetest.set_node({x=-12, y=10, z=-6}, {name="default:stone_with_copper"})
		minetest.set_node({x=-13, y=10, z=-10}, {name="default:stone_with_copper"})
		minetest.set_node({x=-11, y=10, z=-13}, {name="default:stone_with_copper"})
		minetest.set_node({x=-18, y=10, z=-6}, {name="default:stone_with_copper"})
		minetest.set_node({x=-18, y=10, z=-14}, {name="default:stone_with_copper"})
		minetest.set_node({x=-11, y=9, z=-14}, {name="default:stone_with_copper"})
		minetest.set_node({x=-17, y=9, z=-6}, {name="default:stone_with_copper"})
		minetest.set_node({x=-19, y=9, z=-6}, {name="default:stone_with_copper"})
		minetest.set_node({x=-19, y=9, z=-14}, {name="default:stone_with_copper"})
		minetest.set_node({x=-16, y=9, z=-10}, {name="default:stone_with_tin"})
		minetest.set_node({x=-16, y=9, z=-12}, {name="default:stone_with_tin"})
		minetest.set_node({x=-17, y=9, z=-11}, {name="default:stone_with_tin"})
    elseif v+0 == 0 then 
        for j=11,19 do
            for i=6,14 do
                for k=9,14 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
        minetest.set_node({x=-20, y=9, z=-15}, {name="air"})
    end
end
function Quarry(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-17, y=9, z=6}, {name="default:stone"})
        minetest.set_node({x=-16, y=9, z=7}, {name="default:stone"})
        minetest.set_node({x=-15, y=9, z=6}, {name="default:stone"})
        minetest.set_node({x=-16, y=9, z=5}, {name="default:stone"})
        minetest.set_node({x=-16, y=10, z=6}, {name="default:stone"})
        minetest.set_node({x=-19, y=9, z=3}, {name="default:stone"})
        minetest.set_node({x=-18, y=9, z=4}, {name="default:stone"})
        minetest.set_node({x=-17, y=9, z=3}, {name="default:stone"})
        minetest.set_node({x=-18, y=9, z=2}, {name="default:stone"})
        minetest.set_node({x=-18, y=10, z=3}, {name="default:stone"})
        minetest.set_node({x=-18, y=9, z=0}, {name="default:stone"})
        minetest.set_node({x=-17, y=9, z=1}, {name="default:stone"})
        minetest.set_node({x=-16, y=9, z=0}, {name="default:stone"})
        minetest.set_node({x=-17, y=9, z=-1}, {name="default:stone"})
        minetest.set_node({x=-17, y=10, z=0}, {name="default:stone"})
        minetest.set_node({x=-15, y=9, z=2}, {name="default:stone"})
        minetest.set_node({x=-14, y=9, z=3}, {name="default:stone"})
        minetest.set_node({x=-13, y=9, z=2}, {name="default:stone"})
        minetest.set_node({x=-14, y=9, z=1}, {name="default:stone"})
        minetest.set_node({x=-14, y=10, z=2}, {name="default:stone"})
        minetest.set_node({x=-14, y=9, z=5}, {name="default:stone"})
        minetest.set_node({x=-13, y=9, z=6}, {name="default:stone"})
        minetest.set_node({x=-12, y=9, z=5}, {name="default:stone"})
        minetest.set_node({x=-13, y=9, z=4}, {name="default:stone"})
        minetest.set_node({x=-13, y=10, z=5}, {name="default:stone"})
        minetest.set_node({x=-12, y=9, z=3}, {name="default:stone"})
        minetest.set_node({x=-11, y=9, z=4}, {name="default:stone"})
        minetest.set_node({x=-11, y=9, z=2}, {name="default:stone"})
        minetest.set_node({x=-11, y=10, z=3}, {name="default:stone"})
        minetest.set_node({x=-14, y=9, z=-1}, {name="default:stone"})
        minetest.set_node({x=-13, y=9, z=0}, {name="default:stone"})
        minetest.set_node({x=-12, y=9, z=-1}, {name="default:stone"})
        minetest.set_node({x=-13, y=10, z=-1}, {name="default:stone"})
    elseif v+0 == 2 then
        minetest.set_node({x=-16, y=11, z=6}, {name="default:stone"})
        minetest.set_node({x=-18, y=11, z=3}, {name="default:stone"})
        minetest.set_node({x=-17, y=11, z=0}, {name="default:stone"})
        minetest.set_node({x=-14, y=11, z=2}, {name="default:stone"})
        minetest.set_node({x=-13, y=11, z=5}, {name="default:stone"})
        minetest.set_node({x=-11, y=11, z=3}, {name="default:stone"})
        minetest.set_node({x=-13, y=11, z=-1}, {name="default:stone"})
        minetest.set_node({x=-19, y=9, z=1}, {name="default:desert_stone"})
        minetest.set_node({x=-18, y=9, z=5}, {name="default:desert_stone"})
        minetest.set_node({x=-15, y=9, z=4}, {name="default:desert_stone"})
        minetest.set_node({x=-15, y=9, z=0}, {name="default:desert_stone"})
        minetest.set_node({x=-14, y=9, z=7}, {name="default:desert_stone"})
        minetest.set_node({x=-12, y=9, z=1}, {name="default:desert_stone"})
        minetest.set_node({x=-11, y=9, z=6}, {name="default:desert_stone"})
	elseif v+0 == 3 then
        minetest.set_node({x=-19, y=10, z=1}, {name="default:desert_stone"})
        minetest.set_node({x=-18, y=10, z=5}, {name="default:desert_stone"})
        minetest.set_node({x=-15, y=10, z=4}, {name="default:desert_stone"})
        minetest.set_node({x=-15, y=10, z=0}, {name="default:desert_stone"})
        minetest.set_node({x=-14, y=10, z=7}, {name="default:desert_stone"})
        minetest.set_node({x=-12, y=10, z=1}, {name="default:desert_stone"})
        minetest.set_node({x=-11, y=10, z=6}, {name="default:desert_stone"})
		minetest.set_node({x=-11, y=9, z=7}, {name="default:desert_stone"})
		minetest.set_node({x=-11, y=9, z=5}, {name="default:desert_stone"})
		minetest.set_node({x=-12, y=9, z=6}, {name="default:desert_stone"})
		minetest.set_node({x=-13, y=9, z=7}, {name="default:desert_stone"})
		minetest.set_node({x=-15, y=9, z=7}, {name="default:desert_stone"})
		minetest.set_node({x=-14, y=9, z=6}, {name="default:desert_stone"})
		minetest.set_node({x=-13, y=9, z=1}, {name="default:desert_stone"})
		minetest.set_node({x=-11, y=9, z=1}, {name="default:desert_stone"})
		minetest.set_node({x=-12, y=9, z=2}, {name="default:desert_stone"})
		minetest.set_node({x=-12, y=9, z=0}, {name="default:desert_stone"})
		minetest.set_node({x=-14, y=9, z=4}, {name="default:desert_stone"})
		minetest.set_node({x=-16, y=9, z=4}, {name="default:desert_stone"})
		minetest.set_node({x=-15, y=9, z=3}, {name="default:desert_stone"})
		minetest.set_node({x=-15, y=9, z=5}, {name="default:desert_stone"})
		minetest.set_node({x=-14, y=9, z=0}, {name="default:desert_stone"})
		minetest.set_node({x=-15, y=9, z=1}, {name="default:desert_stone"})
		minetest.set_node({x=-15, y=9, z=-1}, {name="default:desert_stone"})
		minetest.set_node({x=-17, y=9, z=5}, {name="default:desert_stone"})
		minetest.set_node({x=-19, y=9, z=5}, {name="default:desert_stone"})
		minetest.set_node({x=-18, y=9, z=6}, {name="default:desert_stone"})
		minetest.set_node({x=-18, y=9, z=1}, {name="default:desert_stone"})
		minetest.set_node({x=-19, y=9, z=2}, {name="default:desert_stone"})
		minetest.set_node({x=-19, y=9, z=0}, {name="default:desert_stone"})
	elseif v+0 == 4 then
		minetest.set_node({x=-19, y=11, z=1}, {name="default:desert_stone"})
        minetest.set_node({x=-18, y=11, z=5}, {name="default:desert_stone"})
        minetest.set_node({x=-15, y=11, z=4}, {name="default:desert_stone"})
        minetest.set_node({x=-15, y=11, z=0}, {name="default:desert_stone"})
        minetest.set_node({x=-14, y=11, z=7}, {name="default:desert_stone"})
        minetest.set_node({x=-12, y=11, z=1}, {name="default:desert_stone"})
        minetest.set_node({x=-11, y=11, z=6}, {name="default:desert_stone"})
		minetest.set_node({x=-12, y=9, z=7}, {name="default:obsidian"})
		minetest.set_node({x=-12, y=9, z=4}, {name="default:obsidian"})
		minetest.set_node({x=-11, y=9, z=0}, {name="default:obsidian"})
		minetest.set_node({x=-13, y=9, z=3}, {name="default:obsidian"})
		minetest.set_node({x=-16, y=9, z=2}, {name="default:obsidian"})
		minetest.set_node({x=-18, y=9, z=7}, {name="default:obsidian"})
		minetest.set_node({x=-18, y=9, z=-1}, {name="default:obsidian"})
	elseif v+0 == 5 then
		minetest.set_node({x=-12, y=10, z=7}, {name="default:obsidian"})
		minetest.set_node({x=-12, y=10, z=4}, {name="default:obsidian"})
		minetest.set_node({x=-11, y=10, z=0}, {name="default:obsidian"})
		minetest.set_node({x=-13, y=10, z=3}, {name="default:obsidian"})
		minetest.set_node({x=-16, y=10, z=2}, {name="default:obsidian"})
		minetest.set_node({x=-18, y=10, z=7}, {name="default:obsidian"})
		minetest.set_node({x=-18, y=10, z=-1}, {name="default:obsidian"})
		minetest.set_node({x=-11, y=9, z=-1}, {name="default:obsidian"})
		minetest.set_node({x=-16, y=9, z=3}, {name="default:obsidian"})
		minetest.set_node({x=-16, y=9, z=1}, {name="default:obsidian"})
		minetest.set_node({x=-17, y=9, z=2}, {name="default:obsidian"})
		minetest.set_node({x=-17, y=9, z=7}, {name="default:obsidian"})
		minetest.set_node({x=-19, y=9, z=7}, {name="default:obsidian"})
		minetest.set_node({x=-19, y=9, z=-1}, {name="default:obsidian"})
	elseif v+0 == 6 then
		minetest.set_node({x=-12, y=11, z=7}, {name="default:obsidian"})
		minetest.set_node({x=-12, y=11, z=4}, {name="default:obsidian"})
		minetest.set_node({x=-11, y=11, z=0}, {name="default:obsidian"})
		minetest.set_node({x=-13, y=11, z=3}, {name="default:obsidian"})
		minetest.set_node({x=-16, y=11, z=2}, {name="default:obsidian"})
		minetest.set_node({x=-18, y=11, z=7}, {name="default:obsidian"})
		minetest.set_node({x=-18, y=11, z=-1}, {name="default:obsidian"})
    elseif v+0 == 0 then
        for j=11,19 do
            for i=0,7 do
                for k=9,14 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="air"})
                end
            end
        end
        for j=11,19 do
            for k=9,14 do
                minetest.set_node({x=j*(-1), y=k, z=-1}, {name="air"})
            end
        end
        minetest.set_node({x=-16, y=9, z=6}, {name="default:stone"})
        minetest.set_node({x=-18, y=9, z=3}, {name="default:stone"})
        minetest.set_node({x=-17, y=9, z=0}, {name="default:stone"})
        minetest.set_node({x=-14, y=9, z=2}, {name="default:stone"})
        minetest.set_node({x=-13, y=9, z=5}, {name="default:stone"})
        minetest.set_node({x=-11, y=9, z=3}, {name="default:stone"})
        minetest.set_node({x=-13, y=9, z=-1}, {name="default:stone"})
    end
end
function Tree(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-15, y=9, z=16}, {name="default:tree"})
        minetest.set_node({x=-15, y=10, z=16}, {name="default:leaves"})
        minetest.set_node({x=-14, y=9, z=16}, {name="default:leaves"})
        minetest.set_node({x=-16, y=9, z=16}, {name="default:leaves"})
        minetest.set_node({x=-15, y=9, z=15}, {name="default:leaves"})
        minetest.set_node({x=-15, y=9, z=17}, {name="default:leaves"})
        minetest.set_node({x=-20, y=9, z=11}, {name="default:chest"})
        screwdriver_handler(player, {type="node", under={x=-20, y=9, z=11}, above={x=-20, y=9, z=11}}, 1)
    elseif v+0 == 2 then
        minetest.set_node({x=-15, y=10, z=16}, {name="default:tree"})
        minetest.set_node({x=-15, y=11, z=16}, {name="default:tree"})
        minetest.set_node({x=-15, y=12, z=16}, {name="default:leaves"})
        minetest.set_node({x=-14, y=11, z=16}, {name="default:leaves"})
        minetest.set_node({x=-16, y=11, z=16}, {name="default:leaves"})
        minetest.set_node({x=-15, y=11, z=17}, {name="default:leaves"})
        minetest.set_node({x=-15, y=11, z=15}, {name="default:leaves"})
        minetest.set_node({x=-14, y=11, z=15}, {name="default:leaves"})
        minetest.set_node({x=-14, y=11, z=17}, {name="default:leaves"})
        minetest.set_node({x=-16, y=11, z=15}, {name="default:leaves"})
        minetest.set_node({x=-16, y=11, z=17}, {name="default:leaves"})
        minetest.set_node({x=-14, y=9, z=16}, {name="air"})
        minetest.set_node({x=-16, y=9, z=16}, {name="air"})
        minetest.set_node({x=-15, y=9, z=15}, {name="air"})
        minetest.set_node({x=-15, y=9, z=17}, {name="air"})
    elseif v+0 == 3 then
        minetest.set_node({x=-15, y=12, z=16}, {name="default:tree"})
        minetest.set_node({x=-14, y=11, z=16}, {name="air"})
        minetest.set_node({x=-16, y=11, z=16}, {name="air"})
        minetest.set_node({x=-15, y=11, z=17}, {name="air"})
        minetest.set_node({x=-15, y=11, z=15}, {name="air"})
        minetest.set_node({x=-14, y=11, z=15}, {name="air"})
        minetest.set_node({x=-14, y=11, z=17}, {name="air"})
        minetest.set_node({x=-16, y=11, z=15}, {name="air"})
        minetest.set_node({x=-16, y=11, z=17}, {name="air"})
        minetest.set_node({x=-14, y=12, z=16}, {name="default:leaves"})
        minetest.set_node({x=-16, y=12, z=16}, {name="default:leaves"})
        minetest.set_node({x=-15, y=12, z=17}, {name="default:leaves"})
        minetest.set_node({x=-15, y=12, z=15}, {name="default:leaves"})
        minetest.set_node({x=-14, y=12, z=15}, {name="default:leaves"})
        minetest.set_node({x=-14, y=12, z=17}, {name="default:leaves"})
        minetest.set_node({x=-16, y=12, z=15}, {name="default:leaves"})
        minetest.set_node({x=-16, y=12, z=17}, {name="default:leaves"})
        minetest.set_node({x=-17, y=12, z=16}, {name="default:leaves"})
        minetest.set_node({x=-13, y=12, z=16}, {name="default:leaves"})
        minetest.set_node({x=-15, y=12, z=14}, {name="default:leaves"})
        minetest.set_node({x=-15, y=12, z=18}, {name="default:leaves"})
        minetest.set_node({x=-15, y=13, z=16}, {name="default:leaves"})
        minetest.set_node({x=-14, y=13, z=16}, {name="default:leaves"})
        minetest.set_node({x=-16, y=13, z=16}, {name="default:leaves"})
        minetest.set_node({x=-15, y=13, z=17}, {name="default:leaves"})
        minetest.set_node({x=-15, y=13, z=15}, {name="default:leaves"})
        minetest.set_node({x=-12, y=9, z=19}, {name="default:jungletree"})
        minetest.set_node({x=-12, y=10, z=19}, {name="default:jungleleaves"})
        minetest.set_node({x=-11, y=9, z=19}, {name="default:jungleleaves"})
        minetest.set_node({x=-13, y=9, z=19}, {name="default:jungleleaves"})
        minetest.set_node({x=-12, y=9, z=18}, {name="default:jungleleaves"})
        minetest.set_node({x=-12, y=9, z=20}, {name="default:jungleleaves"})
	elseif v+0 == 4 then
        minetest.set_node({x=-12, y=10, z=19}, {name="default:jungletree"})
		minetest.set_node({x=-12, y=11, z=19}, {name="default:jungletree"})
		minetest.set_node({x=-11, y=11, z=18}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=11, z=18}, {name="default:jungleleaves"})
		minetest.set_node({x=-13, y=11, z=18}, {name="default:jungleleaves"})
		minetest.set_node({x=-11, y=11, z=19}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=11, z=19}, {name="default:jungletree"})
		minetest.set_node({x=-13, y=11, z=19}, {name="default:jungleleaves"})
		minetest.set_node({x=-11, y=11, z=20}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=11, z=20}, {name="default:jungleleaves"})
		minetest.set_node({x=-13, y=11, z=20}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=12, z=19}, {name="default:jungleleaves"})
        minetest.set_node({x=-11, y=9, z=19}, {name="air"})
        minetest.set_node({x=-13, y=9, z=19}, {name="air"})
        minetest.set_node({x=-12, y=9, z=18}, {name="air"})
        minetest.set_node({x=-12, y=9, z=20}, {name="air"})
	elseif v+0 == 5 then
		minetest.set_node({x=-12, y=12, z=19}, {name="default:jungletree"})
		minetest.set_node({x=-11, y=11, z=18}, {name="air"})
		minetest.set_node({x=-12, y=11, z=18}, {name="air"})
		minetest.set_node({x=-13, y=11, z=18}, {name="air"})
		minetest.set_node({x=-11, y=11, z=19}, {name="air"})
		minetest.set_node({x=-13, y=11, z=19}, {name="air"})
		minetest.set_node({x=-11, y=11, z=20}, {name="air"})
		minetest.set_node({x=-12, y=11, z=20}, {name="air"})
		minetest.set_node({x=-13, y=11, z=20}, {name="air"})
		minetest.set_node({x=-11, y=12, z=18}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=12, z=18}, {name="default:jungleleaves"})
		minetest.set_node({x=-13, y=12, z=18}, {name="default:jungleleaves"})
		minetest.set_node({x=-11, y=12, z=19}, {name="default:jungleleaves"})
		minetest.set_node({x=-13, y=12, z=19}, {name="default:jungleleaves"})
		minetest.set_node({x=-11, y=12, z=20}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=12, z=20}, {name="default:jungleleaves"})
		minetest.set_node({x=-13, y=12, z=20}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=13, z=19}, {name="default:jungleleaves"})
		minetest.set_node({x=-14, y=12, z=19}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=12, z=17}, {name="default:jungleleaves"})
		minetest.set_node({x=-13, y=13, z=19}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=13, z=18}, {name="default:jungleleaves"})
		minetest.set_node({x=-11, y=13, z=19}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=13, z=20}, {name="default:jungleleaves"})
		minetest.set_node({x=-12, y=9, z=13}, {name="default:pine_tree"})
		minetest.set_node({x=-12, y=9, z=14}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=9, z=12}, {name="default:pine_needles"})
		minetest.set_node({x=-11, y=9, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-13, y=9, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=10, z=13}, {name="default:pine_needles"})
	elseif v+0 == 6 then
		minetest.set_node({x=-12, y=10, z=13}, {name="default:pine_tree"})
		minetest.set_node({x=-12, y=11, z=13}, {name="default:pine_tree"})
		
		minetest.set_node({x=-13, y=11, z=14}, {name="default:pine_needles"})
		minetest.set_node({x=-11, y=11, z=14}, {name="default:pine_needles"})
		minetest.set_node({x=-11, y=11, z=12}, {name="default:pine_needles"})
		minetest.set_node({x=-13, y=11, z=12}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=11, z=14}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=11, z=12}, {name="default:pine_needles"})
		minetest.set_node({x=-11, y=11, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-13, y=11, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=12, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=9, z=14}, {name="air"})
		minetest.set_node({x=-12, y=9, z=12}, {name="air"})
		minetest.set_node({x=-11, y=9, z=13}, {name="air"})
		minetest.set_node({x=-13, y=9, z=13}, {name="air"})
	elseif v+0 == 7 then
		minetest.set_node({x=-12, y=12, z=13}, {name="default:pine_tree"})
		minetest.set_node({x=-12, y=11, z=14}, {name="air"})
		minetest.set_node({x=-12, y=11, z=12}, {name="air"})
		minetest.set_node({x=-11, y=11, z=14}, {name="air"})
		minetest.set_node({x=-11, y=11, z=13}, {name="air"})
		minetest.set_node({x=-11, y=11, z=12}, {name="air"})
		minetest.set_node({x=-13, y=11, z=14}, {name="air"})
		minetest.set_node({x=-13, y=11, z=13}, {name="air"})
		minetest.set_node({x=-13, y=11, z=12}, {name="air"})
		minetest.set_node({x=-13, y=12, z=14}, {name="default:pine_needles"})
		minetest.set_node({x=-11, y=12, z=14}, {name="default:pine_needles"})
		minetest.set_node({x=-11, y=12, z=12}, {name="default:pine_needles"})
		minetest.set_node({x=-13, y=12, z=12}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=12, z=14}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=12, z=12}, {name="default:pine_needles"})
		minetest.set_node({x=-11, y=12, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-13, y=12, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=13, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-11, y=13, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-13, y=13, z=13}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=13, z=12}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=13, z=14}, {name="default:pine_needles"})
		minetest.set_node({x=-12, y=12, z=15}, {name="default:pine_needles"})
		minetest.set_node({x=-14, y=12, z=13}, {name="default:pine_needles"})
		
		
		minetest.set_node({x=-18, y=9, z=19}, {name="default:acacia_tree"})
		minetest.set_node({x=-18, y=9, z=20}, {name="default:acacia_leaves"})
		minetest.set_node({x=-18, y=9, z=18}, {name="default:acacia_leaves"})
		minetest.set_node({x=-17, y=9, z=19}, {name="default:acacia_leaves"})
		minetest.set_node({x=-19, y=9, z=19}, {name="default:acacia_leaves"})
		minetest.set_node({x=-18, y=10, z=19}, {name="default:acacia_leaves"})
    elseif v+0 == 0 then
        for j=11,19 do
            for i=12,20 do
                for k=9,14 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="air"})
                end
            end
        end
        minetest.set_node({x=-20, y=9, z=11}, {name="air"})
    end
end
function Pier(v,player)
    if v+0 == 1 then
        for j=4,8 do
            for i=52,53 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-53}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-53}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-53}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-53}, {name="default:wood"})
    elseif v+0 == 2 then
        for j=4,8 do
            for i=54,56 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-56}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-56}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-56}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-56}, {name="default:wood"})
    elseif v+0 == 3 then
        for j=4,8 do
            for i=57,59 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-59}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-59}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-59}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-59}, {name="default:wood"})
    elseif v+0 == 4 then
        for j=4,8 do
            for i=60,62 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-62}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-62}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-62}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-62}, {name="default:wood"})
    elseif v+0 == 5 then
        for j=4,8 do
            for i=63,65 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-65}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-65}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-65}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-65}, {name="default:wood"})
        minetest.set_node({x=-8, y=8, z=-58}, {name="castrum:ship1"})
    elseif v+0 == 6 then
        for j=4,8 do
            for i=52,65 do
                for k=6,8 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:junglewood"})
                    end
                end
            end
        end
        for j=121,125 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
                    end
                end
            end
        end
	elseif v+0 == 7 then
        for j=4,8 do
            for i=52,65 do
                for k=6,8 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:junglewood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:pine_wood"})
                    end
                end
            end
        end
        for j=121,125 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
                    end
                end
            end
        end
		for j=309,313 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for j=4,8 do
            for i=52,65 do
                for k=6,7 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:water_source"})
                end
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
        end
        for j=121,125 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" or minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:wood"})
                    end
                end
            end
        end
		for j=309,313 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
                    end
                end
            end
        end
    end
end
function Ship1(v,player)
    if v+0 == 1 then
        for j=11,15 do
            for i=54,62 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-12, y=7, z=-63}, {name="default:wood"})
        minetest.set_node({x=-13, y=7, z=-63}, {name="default:wood"})
        minetest.set_node({x=-14, y=7, z=-63}, {name="default:wood"})
        minetest.set_node({x=-13, y=7, z=-64}, {name="default:wood"})
    elseif v+0 == 2 then
        for j=10,16 do
            minetest.set_node({x=j*(-1), y=8, z=-54}, {name="default:wood"})
        end
        for j=11,15 do
            minetest.set_node({x=j*(-1), y=9, z=-53}, {name="default:wood"})
        end
        for i=55,62 do
            minetest.set_node({x=-10, y=8, z=i*(-1)}, {name="default:wood"})
            minetest.set_node({x=-16, y=8, z=i*(-1)}, {name="default:wood"})
        end
        minetest.set_node({x=-16, y=9, z=-54}, {name="default:wood"})
        minetest.set_node({x=-10, y=9, z=-54}, {name="default:wood"})
        minetest.set_node({x=-11, y=8, z=-63}, {name="default:wood"})
        minetest.set_node({x=-12, y=8, z=-64}, {name="default:wood"})
        minetest.set_node({x=-13, y=8, z=-65}, {name="default:wood"})
        minetest.set_node({x=-14, y=8, z=-64}, {name="default:wood"})
        minetest.set_node({x=-15, y=8, z=-63}, {name="default:wood"})
    elseif v+0 == 3 then
        for i=55,62 do
            minetest.set_node({x=-10, y=9, z=i*(-1)}, {name="default:fence_wood"})
            minetest.set_node({x=-16, y=9, z=i*(-1)}, {name="default:fence_wood"})
        end
        for j=11,15 do
            minetest.set_node({x=j*(-1), y=10, z=-53}, {name="default:fence_wood"})
        end
        minetest.set_node({x=-16, y=10, z=-54}, {name="default:fence_wood"})
        minetest.set_node({x=-10, y=10, z=-54}, {name="default:fence_wood"})
        minetest.set_node({x=-11, y=9, z=-63}, {name="default:fence_wood"})
        minetest.set_node({x=-12, y=9, z=-64}, {name="default:fence_wood"})
        minetest.set_node({x=-13, y=9, z=-65}, {name="default:fence_wood"})
        minetest.set_node({x=-14, y=9, z=-64}, {name="default:fence_wood"})
        minetest.set_node({x=-15, y=9, z=-63}, {name="default:fence_wood"})
        minetest.set_node({x=-10, y=9, z=-58}, {name="air"})
    elseif v+0 == 4 then
        for k=8,15 do
            minetest.set_node({x=-13, y=k, z=-58}, {name="default:wood"})
        end
        minetest.set_node({x=-10, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-11, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-12, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-14, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-15, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-16, y=15, z=-58}, {name="default:fence_wood"})
    elseif v+0 == 5 then
        for j=10,16 do
            minetest.set_node({x=j*(-1), y=15, z=-59}, {name="wool:white"})
            minetest.set_node({x=j*(-1), y=14, z=-60}, {name="wool:white"})
            minetest.set_node({x=j*(-1), y=13, z=-60}, {name="wool:white"})
            minetest.set_node({x=j*(-1), y=12, z=-59}, {name="wool:white"})
        end
    elseif v+0 == 6 then
        for j=10,16 do
            for i=53,65 do
                for k=7,15 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:junglewood"})
                    end
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_junglewood"})
                    end
                end
            end
        end
        for j=127,133 do
            for i=29,51 do
                for k=7,15 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
                    end
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for j=10,16 do
            for i=53,65 do
                for k=8,15 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:water_source"})
            end
        end
        for j=127,133 do
            for i=29,51 do
                for k=7,15 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:wood"})
                    end
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:fence_wood"})
                    end
                end
            end
        end
    end
end
function Ship2(v,player)
    if v+0 == 1 then
        for j=162,168 do
            for i=40,48 do
                minetest.set_node({x=j, y=7, z=i}, {name="default:wood"})
            end
        end
    elseif v+0 == 2 then
        for j=162,168 do
            for i=49,51 do
                minetest.set_node({x=j, y=7, z=i}, {name="default:wood"})
            end
        end
		for j=163,167 do
            for i=52,53 do
                minetest.set_node({x=j, y=7, z=i}, {name="default:wood"})
            end
        end
		for j=164,166 do
            for i=54,55 do
                minetest.set_node({x=j, y=7, z=i}, {name="default:wood"})
            end
        end
		minetest.set_node({x=165, y=7, z=56}, {name="default:wood"})
		minetest.set_node({x=165, y=7, z=57}, {name="default:wood"})
    elseif v+0 == 3 then
        for i=41,48 do
            minetest.set_node({x=169, y=8, z=i}, {name="default:wood"})
			minetest.set_node({x=161, y=8, z=i}, {name="default:wood"})
        end
		minetest.set_node({x=162, y=8, z=40}, {name="default:wood"})
		minetest.set_node({x=168, y=8, z=40}, {name="default:wood"})
		for j=163,167 do
            minetest.set_node({x=j, y=8, z=39}, {name="default:wood"})
        end
		minetest.set_node({x=165, y=8, z=40}, {name="default:wood"})
    elseif v+0 == 4 then
        for i=49,51 do
            minetest.set_node({x=169, y=8, z=i}, {name="default:wood"})
			minetest.set_node({x=161, y=8, z=i}, {name="default:wood"})
        end
		minetest.set_node({x=168, y=8, z=52}, {name="default:wood"})
		minetest.set_node({x=162, y=8, z=52}, {name="default:wood"})
		minetest.set_node({x=167, y=8, z=54}, {name="default:wood"})
		minetest.set_node({x=163, y=8, z=54}, {name="default:wood"})
		minetest.set_node({x=166, y=8, z=56}, {name="default:wood"})
		minetest.set_node({x=164, y=8, z=56}, {name="default:wood"})
		minetest.set_node({x=165, y=8, z=57}, {name="default:wood"})
		minetest.set_node({x=165, y=8, z=58}, {name="default:wood"})
    elseif v+0 == 5 then
		minetest.set_node({x=162, y=9, z=40}, {name="default:wood"})
		minetest.set_node({x=168, y=9, z=40}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=41}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=41}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=43}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=43}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=45}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=45}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=47}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=47}, {name="default:wood"})
		for j=163,167 do
            minetest.set_node({x=j, y=9, z=39}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        minetest.set_node({x=161, y=9, z=49}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=49}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=51}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=51}, {name="default:wood"})
		minetest.set_node({x=162, y=9, z=52}, {name="default:wood"})
		minetest.set_node({x=168, y=9, z=52}, {name="default:wood"})
		minetest.set_node({x=162, y=9, z=53}, {name="default:wood"})
		minetest.set_node({x=168, y=9, z=53}, {name="default:wood"})
		minetest.set_node({x=163, y=9, z=54}, {name="default:wood"})
		minetest.set_node({x=167, y=9, z=54}, {name="default:wood"})
		minetest.set_node({x=163, y=9, z=55}, {name="default:wood"})
		minetest.set_node({x=167, y=9, z=55}, {name="default:wood"})
		minetest.set_node({x=164, y=9, z=56}, {name="default:wood"})
		minetest.set_node({x=166, y=9, z=56}, {name="default:wood"})
		minetest.set_node({x=164, y=9, z=57}, {name="default:wood"})
		minetest.set_node({x=166, y=9, z=57}, {name="default:wood"})
		minetest.set_node({x=165, y=9, z=58}, {name="default:wood"})
		minetest.set_node({x=165, y=9, z=59}, {name="default:wood"})
	elseif v+0 == 7 then
		minetest.set_node({x=162, y=10, z=40}, {name="default:wood"})
		minetest.set_node({x=168, y=10, z=40}, {name="default:wood"})
		for j=163,167 do
            minetest.set_node({x=j, y=10, z=39}, {name="default:wood"})
        end
	elseif v+0 == 8 then
		minetest.set_node({x=167, y=8, z=40}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=167, y=8, z=40}, above={x=167, y=8, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=167, y=8, z=40}, above={x=167, y=8, z=40}}, 1)
		minetest.set_node({x=166, y=8, z=40}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=166, y=8, z=40}, above={x=166, y=8, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=166, y=8, z=40}, above={x=166, y=8, z=40}}, 1)
		minetest.set_node({x=164, y=8, z=40}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=40}, above={x=164, y=8, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=40}, above={x=164, y=8, z=40}}, 1)
		minetest.set_node({x=163, y=8, z=40}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=40}, above={x=163, y=8, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=40}, above={x=163, y=8, z=40}}, 1)
		minetest.set_node({x=168, y=8, z=41}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=41}, above={x=168, y=8, z=41}}, 1)
		minetest.set_node({x=168, y=8, z=43}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=43}, above={x=168, y=8, z=43}}, 1)
		minetest.set_node({x=168, y=8, z=44}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=44}, above={x=168, y=8, z=44}}, 1)
		minetest.set_node({x=168, y=8, z=45}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=45}, above={x=168, y=8, z=45}}, 1)
		minetest.set_node({x=168, y=8, z=47}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=47}, above={x=168, y=8, z=47}}, 1)
		minetest.set_node({x=162, y=8, z=41}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=41}, above={x=162, y=8, z=41}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=41}, above={x=162, y=8, z=41}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=41}, above={x=162, y=8, z=41}}, 1)
		minetest.set_node({x=162, y=8, z=43}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=43}, above={x=162, y=8, z=43}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=43}, above={x=162, y=8, z=43}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=43}, above={x=162, y=8, z=43}}, 1)
		minetest.set_node({x=162, y=8, z=45}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=45}, above={x=162, y=8, z=45}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=45}, above={x=162, y=8, z=45}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=45}, above={x=162, y=8, z=45}}, 1)
		minetest.set_node({x=162, y=8, z=47}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=47}, above={x=162, y=8, z=47}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=47}, above={x=162, y=8, z=47}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=47}, above={x=162, y=8, z=47}}, 1)
	elseif v+0 == 9 then
		minetest.set_node({x=168, y=8, z=49}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=49}, above={x=168, y=8, z=49}}, 1)
		minetest.set_node({x=168, y=8, z=51}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=51}, above={x=168, y=8, z=51}}, 1)
		minetest.set_node({x=167, y=8, z=52}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=167, y=8, z=52}, above={x=167, y=8, z=52}}, 1)
		minetest.set_node({x=167, y=8, z=53}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=167, y=8, z=53}, above={x=167, y=8, z=53}}, 1)
		minetest.set_node({x=166, y=8, z=54}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=166, y=8, z=54}, above={x=166, y=8, z=54}}, 1)
		minetest.set_node({x=166, y=8, z=55}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=166, y=8, z=55}, above={x=166, y=8, z=55}}, 1)
		minetest.set_node({x=162, y=8, z=49}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=49}, above={x=162, y=8, z=49}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=49}, above={x=162, y=8, z=49}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=49}, above={x=162, y=8, z=49}}, 1)
		minetest.set_node({x=162, y=8, z=51}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=51}, above={x=162, y=8, z=51}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=51}, above={x=162, y=8, z=51}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=51}, above={x=162, y=8, z=51}}, 1)
		minetest.set_node({x=163, y=8, z=52}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=52}, above={x=163, y=8, z=52}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=52}, above={x=163, y=8, z=52}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=52}, above={x=163, y=8, z=52}}, 1)
		minetest.set_node({x=163, y=8, z=53}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=53}, above={x=163, y=8, z=53}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=53}, above={x=163, y=8, z=53}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=53}, above={x=163, y=8, z=53}}, 1)
		minetest.set_node({x=164, y=8, z=54}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=54}, above={x=163, y=8, z=54}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=54}, above={x=163, y=8, z=54}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=54}, above={x=163, y=8, z=54}}, 1)
		minetest.set_node({x=164, y=8, z=55}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=55}, above={x=163, y=8, z=55}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=55}, above={x=163, y=8, z=55}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=55}, above={x=163, y=8, z=55}}, 1)
		minetest.set_node({x=165, y=8, z=56}, {name="stairs:stair_castrum_wood"})
	elseif v+0 == 10 then
		minetest.set_node({x=162, y=11, z=40}, {name="default:fence_wood"})
		minetest.set_node({x=168, y=11, z=40}, {name="default:fence_wood"})
		for j=163,167 do
            minetest.set_node({x=j, y=11, z=39}, {name="default:fence_wood"})
        end
		for i=41,48 do
            minetest.set_node({x=161, y=10, z=i}, {name="default:fence_wood"})
			minetest.set_node({x=169, y=10, z=i}, {name="default:fence_wood"})
        end
		minetest.set_node({x=169, y=10, z=44}, {name="air"})
	elseif v+0 == 11 then
		for i=49,51 do
            minetest.set_node({x=161, y=10, z=i}, {name="default:fence_wood"})
			minetest.set_node({x=169, y=10, z=i}, {name="default:fence_wood"})
        end
		minetest.set_node({x=162, y=10, z=52}, {name="default:fence_wood"})
		minetest.set_node({x=168, y=10, z=52}, {name="default:fence_wood"})
		minetest.set_node({x=162, y=10, z=53}, {name="default:fence_wood"})
		minetest.set_node({x=168, y=10, z=53}, {name="default:fence_wood"})
		minetest.set_node({x=163, y=10, z=54}, {name="default:fence_wood"})
		minetest.set_node({x=167, y=10, z=54}, {name="default:fence_wood"})
		minetest.set_node({x=163, y=10, z=55}, {name="default:fence_wood"})
		minetest.set_node({x=167, y=10, z=55}, {name="default:fence_wood"})
		minetest.set_node({x=164, y=10, z=56}, {name="default:fence_wood"})
		minetest.set_node({x=166, y=10, z=56}, {name="default:fence_wood"})
		minetest.set_node({x=164, y=10, z=57}, {name="default:fence_wood"})
		minetest.set_node({x=166, y=10, z=57}, {name="default:fence_wood"})
		minetest.set_node({x=165, y=10, z=58}, {name="default:fence_wood"})
		minetest.set_node({x=165, y=10, z=59}, {name="default:fence_wood"})
	elseif v+0 == 12 then
		for k=8,14 do
            minetest.set_node({x=165, y=k, z=49}, {name="default:wood"})
        end
		minetest.set_node({x=166, y=14, z=49}, {name="default:fence_wood"})
		minetest.set_node({x=167, y=14, z=49}, {name="default:fence_wood"})
		minetest.set_node({x=164, y=14, z=49}, {name="default:fence_wood"})
		minetest.set_node({x=163, y=14, z=49}, {name="default:fence_wood"})
	elseif v+0 == 13 then
		for k=8,16 do
            minetest.set_node({x=165, y=k, z=43}, {name="default:wood"})
        end
	elseif v+0 == 14 then
		minetest.set_node({x=166, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=167, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=168, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=169, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=161, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=162, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=163, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=164, y=16, z=43}, {name="default:fence_wood"})
		
		minetest.set_node({x=165, y=7, z=44}, {name="castrum:sail1"})
		minetest.set_node({x=165, y=7, z=50}, {name="castrum:sail2"})
		
		minetest.set_node({x=168, y=7, z=42}, {name="castrum:cannon1"})
		minetest.set_node({x=168, y=7, z=46}, {name="castrum:comming_soon"})
		minetest.set_node({x=168, y=7, z=48}, {name="castrum:comming_soon"})
		minetest.set_node({x=168, y=7, z=50}, {name="castrum:comming_soon"})
		
		minetest.set_node({x=162, y=7, z=42}, {name="castrum:cannon2"})
		minetest.set_node({x=162, y=7, z=44}, {name="castrum:comming_soon"})
		minetest.set_node({x=162, y=7, z=46}, {name="castrum:comming_soon"})
		minetest.set_node({x=162, y=7, z=48}, {name="castrum:comming_soon"})
		minetest.set_node({x=162, y=7, z=50}, {name="castrum:comming_soon"})
		minetest.set_node({x=165, y=9, z=40}, {name="castrum:pirate_captain"})
		screwdriver_handler(player, {type="node", under={x=165, y=9, z=40}, above={x=165, y=9, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=165, y=9, z=40}, above={x=165, y=9, z=40}}, 1)
    elseif v+0 == 0 then
        for j=161,169 do
            for i=39,59 do
				for k=8,16 do
					minetest.set_node({x=j, y=k, z=i}, {name="air"})
				end
				minetest.set_node({x=j, y=7, z=i}, {name="default:water_source"})
            end
        end
    end
end
function Lake(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-31, y=8, z=-55}, {name="default:water_source"})
        minetest.set_node({x=-34, y=9, z=-58}, {name="default:chest"})
        screwdriver_handler(player, {type="node", under={x=-34, y=9, z=-58}, above={x=-34, y=9, z=-58}}, 1)
    elseif v+0 == 2 then
        minetest.set_node({x=-30, y=8, z=-55}, {name="default:water_source"})
        minetest.set_node({x=-32, y=8, z=-55}, {name="default:water_source"})
        minetest.set_node({x=-31, y=8, z=-56}, {name="default:water_source"})
        minetest.set_node({x=-31, y=8, z=-54}, {name="default:water_source"})
    elseif v+0 == 3 then
        minetest.set_node({x=-32, y=8, z=-54}, {name="default:water_source"})
        minetest.set_node({x=-33, y=8, z=-55}, {name="default:water_source"})
        minetest.set_node({x=-32, y=8, z=-56}, {name="default:water_source"})
        minetest.set_node({x=-31, y=8, z=-57}, {name="default:water_source"})
        minetest.set_node({x=-30, y=8, z=-56}, {name="default:water_source"})
        minetest.set_node({x=-29, y=8, z=-55}, {name="default:water_source"})
        minetest.set_node({x=-30, y=8, z=-54}, {name="default:water_source"})
        minetest.set_node({x=-31, y=8, z=-53}, {name="default:water_source"})
	elseif v+0 == 4 then
        minetest.set_node({x=-30, y=8, z=-53}, {name="default:water_source"})
        minetest.set_node({x=-29, y=8, z=-54}, {name="default:water_source"})
        minetest.set_node({x=-29, y=8, z=-56}, {name="default:water_source"})
        minetest.set_node({x=-30, y=8, z=-57}, {name="default:water_source"})
		
        minetest.set_node({x=-32, y=8, z=-57}, {name="default:water_source"})
        minetest.set_node({x=-33, y=8, z=-56}, {name="default:water_source"})
        minetest.set_node({x=-33, y=8, z=-54}, {name="default:water_source"})
        minetest.set_node({x=-32, y=8, z=-53}, {name="default:water_source"})
    elseif v+0 == 0 then 
        for j=29,33 do
            for i=53,57 do
                for k=8,8 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="castrum:dirt_with_grass"})
                end
            end
        end
        minetest.set_node({x=-34, y=9, z=-58}, {name="air"})
    end
end
function Lake2(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-31, y=8, z=-64}, {name="default:river_water_source"})
        minetest.set_node({x=-34, y=9, z=-67}, {name="default:chest"})
        screwdriver_handler(player, {type="node", under={x=-34, y=9, z=-67}, above={x=-34, y=9, z=-67}}, 1)
    elseif v+0 == 2 then
        minetest.set_node({x=-30, y=8, z=-64}, {name="default:river_water_source"})
        minetest.set_node({x=-32, y=8, z=-64}, {name="default:river_water_source"})
        minetest.set_node({x=-31, y=8, z=-65}, {name="default:river_water_source"})
        minetest.set_node({x=-31, y=8, z=-63}, {name="default:river_water_source"})
	elseif v+0 == 3 then
        minetest.set_node({x=-29, y=8, z=-64}, {name="default:river_water_source"})
        minetest.set_node({x=-30, y=8, z=-65}, {name="default:river_water_source"})
        minetest.set_node({x=-31, y=8, z=-66}, {name="default:river_water_source"})
        minetest.set_node({x=-32, y=8, z=-65}, {name="default:river_water_source"})
		minetest.set_node({x=-33, y=8, z=-64}, {name="default:river_water_source"})
		minetest.set_node({x=-32, y=8, z=-63}, {name="default:river_water_source"})
		minetest.set_node({x=-31, y=8, z=-62}, {name="default:river_water_source"})
		minetest.set_node({x=-30, y=8, z=-63}, {name="default:river_water_source"})
	elseif v+0 == 4 then
		minetest.set_node({x=-29, y=8, z=-63}, {name="default:river_water_source"})
		minetest.set_node({x=-30, y=8, z=-62}, {name="default:river_water_source"})
		minetest.set_node({x=-32, y=8, z=-62}, {name="default:river_water_source"})
		minetest.set_node({x=-33, y=8, z=-63}, {name="default:river_water_source"})
		minetest.set_node({x=-29, y=8, z=-63}, {name="default:river_water_source"})
		minetest.set_node({x=-33, y=8, z=-65}, {name="default:river_water_source"})
		minetest.set_node({x=-32, y=8, z=-66}, {name="default:river_water_source"})
		minetest.set_node({x=-30, y=8, z=-66}, {name="default:river_water_source"})
		minetest.set_node({x=-29, y=8, z=-65}, {name="default:river_water_source"})
    elseif v+0 == 0 then 
        for j=29,33 do
            for i=62,66 do
                for k=8,8 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="castrum:dirt_with_grass"})
                end
            end
        end
        minetest.set_node({x=-34, y=9, z=-67}, {name="air"})
    end
end
function Barracks(v,player)
    if v+0 == 1 then
        for j=37,43 do
            for i=25,31 do
                minetest.set_node({x=j*(-1), y=9, z=i}, {name="default:cobble"})
            end
        end
    elseif v+0 == 2 then 
        for i=25,30 do
            minetest.set_node({x=-43, y=10, z=i}, {name="default:cobble"})
            minetest.set_node({x=-37, y=10, z=i}, {name="default:cobble"})
        end
        for j=38,42 do
            minetest.set_node({x=j*(-1), y=10, z=31}, {name="default:cobble"})
        end
    elseif v+0 == 3 then 
        for i=26,30 do
            minetest.set_node({x=-43, y=11, z=i}, {name="default:cobble"})
            minetest.set_node({x=-37, y=11, z=i}, {name="default:cobble"})
        end
        for j=38,42 do
            minetest.set_node({x=j*(-1), y=11, z=31}, {name="default:cobble"})
        end
    elseif v+0 == 4 then 
        for i=27,30 do
            minetest.set_node({x=-43, y=12, z=i}, {name="default:cobble"})
            minetest.set_node({x=-37, y=12, z=i}, {name="default:cobble"})
        end
        for j=38,42 do
            minetest.set_node({x=j*(-1), y=12, z=31}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for j=38,42 do
            for i=27,30 do
                minetest.set_node({x=j*(-1), y=13, z=i}, {name="default:cobble"})
            end
        end
    elseif v+0 == 6 then
        minetest.set_node({x=-42, y=10, z=28}, {name="castrum:knight1_sit"})
        minetest.set_node({x=-40, y=10, z=30}, {name="castrum:knight1_sit"})
        minetest.set_node({x=-38, y=10, z=28}, {name="castrum:knight1_sit"})
        minetest.set_node({x=-40, y=10, z=28}, {name="castrum:fire"})
        screwdriver_handler(player, {type="node", under={x=-38, y=10, z=28}, above={x=-38, y=10, z=28}}, 1)
        screwdriver_handler(player, {type="node", under={x=-42, y=10, z=28}, above={x=-42, y=10, z=28}}, 1)
        screwdriver_handler(player, {type="node", under={x=-42, y=10, z=28}, above={x=-42, y=10, z=28}}, 1)
        screwdriver_handler(player, {type="node", under={x=-42, y=10, z=28}, above={x=-42, y=10, z=28}}, 1)
    elseif v+0 == 7 then
        for j=37,43 do
            for i=25,31 do
                for k=9,13 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:stone_block"})
                    end
                end
            end
        end
	elseif v+0 == 8 then
        for j=37,43 do
            for i=25,31 do
                for k=9,13 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:desert_cobble"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for j=37,43 do
            for i=25,31 do
                for k=9,13 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="air"})
                end
            end
        end
    end
end
function Camp1(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-63, y=9, z=-57}, {name="castrum:fire"})
    elseif v+0 == 0 then 
        for j=59,67 do
            for i=53,61 do
                for k=9,9 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Camp2(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-63, y=9, z=-70}, {name="castrum:fire"})
    elseif v+0 == 0 then 
        for j=59,67 do
            for i=66,74 do
                for k=9,9 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Camp3(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-85, y=9, z=-57}, {name="castrum:fire"})
    elseif v+0 == 0 then 
        for j=81,89 do
            for i=53,61 do
                for k=9,9 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Island_Walle(v,player)
    if v+0 == 1 then
        for i=0,33 do
            minetest.set_node({x=178, y=9, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=9, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        for i=0,33 do
            minetest.set_node({x=178, y=10, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=10, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 3 then
        for i=0,33 do
            minetest.set_node({x=178, y=11, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=11, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 4 then
        for i=0,33 do
            minetest.set_node({x=178, y=12, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=12, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for i=0,33 do
            minetest.set_node({x=178, y=13, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=13, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
        for i=0,33 do
            minetest.set_node({x=178, y=14, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=14, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 7 then
        for i=0,33 do
            if i%2 == 1 then
                minetest.set_node({x=178, y=15, z=i}, {name="default:sandstone"})
            end
        end
        for i=0,27 do
            if i%2 == 1 then
                minetest.set_node({x=178, y=15, z=i*(-1)}, {name="default:sandstone"})
            end
        end
	elseif v+0 == 8 then
		for i=0,33 do
            if i%4 == 1 then
                minetest.set_node({x=178, y=12, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%4 == 3 then
                minetest.set_node({x=178, y=12, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
        for i=0,33 do
            if i%2 == 0 then
                minetest.set_node({x=178, y=13, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=11, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=9, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%2 == 0 then
                minetest.set_node({x=178, y=13, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=11, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=9, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
        for i=0,33 do
            if i%4 == 3 then
                minetest.set_node({x=178, y=14, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=10, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%4 == 1 then
                minetest.set_node({x=178, y=14, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=10, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
    elseif v+0 == 0 then
        for i=0,33 do
            for k=9,15 do
                minetest.set_node({x=178, y=k, z=i}, {name="air"})
            end
        end
        for i=0,27 do
            for k=9,15 do
                minetest.set_node({x=178, y=k, z=i*(-1)}, {name="air"})
            end
        end
    end
end
function Island_Wallw(v,player)
    if v+0 == 1 then
        for i=0,33 do
            minetest.set_node({x=118, y=9, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=118, y=9, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        for i=0,33 do
            minetest.set_node({x=118, y=10, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=118, y=10, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 3 then
        for i=0,33 do
            minetest.set_node({x=118, y=11, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=118, y=11, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 4 then
        for i=0,33 do
            minetest.set_node({x=118, y=12, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=118, y=12, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for i=0,33 do
            minetest.set_node({x=118, y=13, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=118, y=13, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
        for i=0,33 do
            minetest.set_node({x=118, y=14, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=118, y=14, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 7 then
        for i=0,33 do
            if i%2 == 1 then
                minetest.set_node({x=118, y=15, z=i}, {name="default:sandstone"})
            end
        end
        for i=0,27 do
            if i%2 == 1 then
                minetest.set_node({x=118, y=15, z=i*(-1)}, {name="default:sandstone"})
            end
        end
	elseif v+0 == 8 then
		for i=0,33 do
            if i%4 == 1 then
                minetest.set_node({x=118, y=12, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%4 == 3 then
                minetest.set_node({x=118, y=12, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
        for i=0,33 do
            if i%2 == 0 then
                minetest.set_node({x=118, y=13, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=118, y=11, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=118, y=9, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%2 == 0 then
                minetest.set_node({x=118, y=13, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=118, y=11, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=118, y=9, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
        for i=0,33 do
            if i%4 == 3 then
                minetest.set_node({x=118, y=14, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=118, y=10, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%4 == 1 then
                minetest.set_node({x=118, y=14, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=118, y=10, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
    elseif v+0 == 0 then
        for i=0,33 do
            for k=9,15 do
                minetest.set_node({x=118, y=k, z=i}, {name="air"})
            end
        end
        for i=0,27 do
            for k=9,15 do
                minetest.set_node({x=118, y=k, z=i*(-1)}, {name="air"})
            end
        end
    end
end
function Island_Walls(v,player)
    if v+0 == 1 then
        for i=119,177 do
            minetest.set_node({x=i, y=9, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        for i=119,177 do
            minetest.set_node({x=i, y=10, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 3 then
        for i=119,177 do
            minetest.set_node({x=i, y=11, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 4 then
        for i=119,177 do
            minetest.set_node({x=i, y=12, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for i=119,177 do
            minetest.set_node({x=i, y=13, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
        for i=119,177 do
            minetest.set_node({x=i, y=14, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 7 then
        for i=119,177 do
            if i%2 == 0 then
                minetest.set_node({x=i, y=15, z=-27}, {name="default:sandstone"})
            end
        end
	elseif v+0 == 8 then
        for i=119,177 do
            if i%4 == 2 then
                minetest.set_node({x=i, y=12, z=-27}, {name="default:desert_sandstone"})
            end
        end
        for i=119,177 do
            if i%2 == 1 then
                minetest.set_node({x=i, y=13, z=-27}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=11, z=-27}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=9, z=-27}, {name="default:desert_sandstone"})
            end
        end
        for i=119,177 do
            if i%4 == 0 then
                minetest.set_node({x=i, y=14, z=-27}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=10, z=-27}, {name="default:desert_sandstone"})
            end
        end
    elseif v+0 == 0 then
        for i=119,177 do
            for k=9,15 do
                minetest.set_node({x=i, y=k, z=-27}, {name="air"})
            end
        end
    end
end
function Island_Walln(v,player)
    if v+0 == 1 then
        for i=151,177 do
            minetest.set_node({x=i, y=9, z=33}, {name="default:sandstone"})
        end
        for i=119,145 do
            minetest.set_node({x=i, y=9, z=33}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        for i=151,177 do
            minetest.set_node({x=i, y=10, z=33}, {name="default:sandstone"})
        end
        for i=119,145 do
            minetest.set_node({x=i, y=10, z=33}, {name="default:sandstone"})
        end
    elseif v+0 == 3 then
        for i=151,177 do
            minetest.set_node({x=i, y=11, z=33}, {name="default:sandstone"})
        end
        for i=119,145 do
            minetest.set_node({x=i, y=11, z=33}, {name="default:sandstone"})
        end
    elseif v+0 == 4 then
        for i=151,177 do
            minetest.set_node({x=i, y=12, z=33}, {name="default:sandstone"})
        end
        for i=119,145 do
            minetest.set_node({x=i, y=12, z=33}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for i=150,177 do
            minetest.set_node({x=i, y=13, z=33}, {name="default:sandstone"})
        end
        for i=119,146 do
            minetest.set_node({x=i, y=13, z=33}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
        for i=119,177 do
            minetest.set_node({x=i, y=14, z=33}, {name="default:sandstone"})
        end
    elseif v+0 == 7 then
        for i=119,177 do
            if i%2 == 0 then
                minetest.set_node({x=i, y=15, z=33}, {name="default:sandstone"})
            end
        end
	elseif v+0 == 8 then
        for i=119,145 do
            if i%4 == 2 then
                minetest.set_node({x=i, y=12, z=33}, {name="default:desert_sandstone"})
            end
        end
        for i=151,177 do
            if i%4 == 2 then
                minetest.set_node({x=i, y=12, z=33}, {name="default:desert_sandstone"})

            end
        end
        for i=119,145 do
            if i%2 == 1 then
                minetest.set_node({x=i, y=13, z=33}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=11, z=33}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=9, z=33}, {name="default:desert_sandstone"})
            end
        end
        for i=151,177 do
            if i%2 == 1 then
                minetest.set_node({x=i, y=13, z=33}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=11, z=33}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=9, z=33}, {name="default:desert_sandstone"})
            end
        end
        for i=119,145 do
            if i%4 == 0 then
                minetest.set_node({x=i, y=14, z=33}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=10, z=33}, {name="default:desert_sandstone"})
            end
        end
        for i=151,177 do
            if i%4 == 0 then
                minetest.set_node({x=i, y=14, z=33}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=10, z=33}, {name="default:desert_sandstone"})
            end
        end
		minetest.set_node({x=148, y=14, z=33}, {name="default:desert_sandstone"})
    elseif v+0 == 0 then
        for i=119,177 do
            for k=9,15 do
                minetest.set_node({x=i, y=k, z=33}, {name="air"})
            end
        end
    end
end
function Island_Fountain(v,player)
    if v+0 == 1 then
        for i=147,149 do
            for j=0,6 do
                minetest.set_node({x=i, y=9, z=j}, {name="default:sandstone"})
            end
        end
        for i=145,151 do
            for j=2,4 do
                minetest.set_node({x=i, y=9, z=j}, {name="default:sandstone"})
            end
        end
    elseif v+0 == 2 then
        minetest.set_node({x=150, y=9, z=5}, {name="default:sandstone"})
        minetest.set_node({x=146, y=9, z=5}, {name="default:sandstone"})
        minetest.set_node({x=150, y=9, z=1}, {name="default:sandstone"})
        minetest.set_node({x=146, y=9, z=1}, {name="default:sandstone"})
        minetest.set_node({x=150, y=10, z=5}, {name="default:sandstone"})
        minetest.set_node({x=146, y=10, z=5}, {name="default:sandstone"})
        minetest.set_node({x=150, y=10, z=1}, {name="default:sandstone"})
        minetest.set_node({x=146, y=10, z=1}, {name="default:sandstone"})
        minetest.set_node({x=148, y=10, z=3}, {name="default:sandstone"})
    elseif v+0 == 3 then
        minetest.set_node({x=149, y=10, z=6}, {name="default:sandstone"})
        minetest.set_node({x=148, y=10, z=6}, {name="default:sandstone"})
        minetest.set_node({x=147, y=10, z=6}, {name="default:sandstone"})
        minetest.set_node({x=149, y=10, z=0}, {name="default:sandstone"})
        minetest.set_node({x=148, y=10, z=0}, {name="default:sandstone"})
        minetest.set_node({x=147, y=10, z=0}, {name="default:sandstone"})
        minetest.set_node({x=145, y=10, z=2}, {name="default:sandstone"})
        minetest.set_node({x=145, y=10, z=3}, {name="default:sandstone"})
        minetest.set_node({x=145, y=10, z=4}, {name="default:sandstone"})
        minetest.set_node({x=151, y=10, z=2}, {name="default:sandstone"})
        minetest.set_node({x=151, y=10, z=3}, {name="default:sandstone"})
        minetest.set_node({x=151, y=10, z=4}, {name="default:sandstone"})
    elseif v+0 == 4 then
        minetest.set_node({x=148, y=11, z=3}, {name="default:sandstone"})
        minetest.set_node({x=148, y=12, z=3}, {name="default:sandstone"})
        minetest.set_node({x=148, y=13, z=3}, {name="default:water_source"})
	elseif v+0 == 5 then
		minetest.set_node({x=148, y=10, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=147, y=9, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=149, y=9, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=146, y=10, z=5}, {name="default:desert_sandstone"})
		minetest.set_node({x=150, y=10, z=5}, {name="default:desert_sandstone"})
		minetest.set_node({x=145, y=9, z=4}, {name="default:desert_sandstone"})
		minetest.set_node({x=151, y=9, z=4}, {name="default:desert_sandstone"})
		minetest.set_node({x=145, y=10, z=3}, {name="default:desert_sandstone"})
		minetest.set_node({x=151, y=10, z=3}, {name="default:desert_sandstone"})
		minetest.set_node({x=145, y=9, z=2}, {name="default:desert_sandstone"})
		minetest.set_node({x=151, y=9, z=2}, {name="default:desert_sandstone"})
		minetest.set_node({x=146, y=10, z=1}, {name="default:desert_sandstone"})
		minetest.set_node({x=150, y=10, z=1}, {name="default:desert_sandstone"})
		minetest.set_node({x=147, y=9, z=0}, {name="default:desert_sandstone"})
		minetest.set_node({x=149, y=9, z=0}, {name="default:desert_sandstone"})
		minetest.set_node({x=148, y=10, z=0}, {name="default:desert_sandstone"})
    elseif v+0 == 0 then
        for i=145,151 do
            for k=9,13 do
                for j=0,6 do
                    minetest.set_node({x=i, y=k, z=j}, {name="air"})
                end
            end
        end
    end
end
function Sandmine(v,player)
    if v+0 == 1 then
        minetest.set_node({x=129, y=9, z=10}, {name="default:sandstone"})
        minetest.set_node({x=131, y=9, z=10}, {name="default:sandstone"})
        minetest.set_node({x=130, y=9, z=9}, {name="default:sandstone"})
        minetest.set_node({x=130, y=9, z=11}, {name="default:sandstone"})
        minetest.set_node({x=130, y=10, z=10}, {name="default:sandstone"})
        minetest.set_node({x=127, y=9, z=7}, {name="default:sandstone"})
        minetest.set_node({x=129, y=9, z=7}, {name="default:sandstone"})
        minetest.set_node({x=128, y=9, z=6}, {name="default:sandstone"})
        minetest.set_node({x=128, y=9, z=8}, {name="default:sandstone"})
        minetest.set_node({x=128, y=10, z=7}, {name="default:sandstone"})
        minetest.set_node({x=128, y=9, z=13}, {name="default:sandstone"})
        minetest.set_node({x=130, y=9, z=13}, {name="default:sandstone"})
        minetest.set_node({x=129, y=9, z=12}, {name="default:sandstone"})
        minetest.set_node({x=129, y=9, z=14}, {name="default:sandstone"})
        minetest.set_node({x=129, y=10, z=13}, {name="default:sandstone"})
        minetest.set_node({x=125, y=9, z=11}, {name="default:sandstone"})
        minetest.set_node({x=127, y=9, z=11}, {name="default:sandstone"})
        minetest.set_node({x=126, y=9, z=10}, {name="default:sandstone"})
        minetest.set_node({x=126, y=9, z=12}, {name="default:sandstone"})
        minetest.set_node({x=126, y=10, z=11}, {name="default:sandstone"})
        minetest.set_node({x=124, y=9, z=8}, {name="default:sandstone"})
        minetest.set_node({x=126, y=9, z=8}, {name="default:sandstone"})
        minetest.set_node({x=125, y=9, z=7}, {name="default:sandstone"})
        minetest.set_node({x=125, y=9, z=9}, {name="default:sandstone"})
        minetest.set_node({x=125, y=10, z=8}, {name="default:sandstone"})
        minetest.set_node({x=124, y=9, z=14}, {name="default:sandstone"})
        minetest.set_node({x=125, y=9, z=13}, {name="default:sandstone"})
        minetest.set_node({x=126, y=9, z=14}, {name="default:sandstone"})
        minetest.set_node({x=125, y=10, z=14}, {name="default:sandstone"})
        minetest.set_node({x=123, y=9, z=9}, {name="default:sandstone"})
        minetest.set_node({x=123, y=9, z=11}, {name="default:sandstone"})
        minetest.set_node({x=124, y=9, z=10}, {name="default:sandstone"})
        minetest.set_node({x=123, y=10, z=10}, {name="default:sandstone"})
    elseif v+0 == 2 then
        minetest.set_node({x=130, y=11, z=10}, {name="default:sandstone"})
        minetest.set_node({x=128, y=11, z=7}, {name="default:sandstone"})
        minetest.set_node({x=129, y=11, z=13}, {name="default:sandstone"})
        minetest.set_node({x=126, y=11, z=11}, {name="default:sandstone"})
        minetest.set_node({x=125, y=11, z=8}, {name="default:sandstone"})
        minetest.set_node({x=125, y=11, z=14}, {name="default:sandstone"})
        minetest.set_node({x=123, y=11, z=10}, {name="default:sandstone"})
        minetest.set_node({x=131, y=9, z=12}, {name="default:desert_sandstone"})
        minetest.set_node({x=130, y=9, z=8}, {name="default:desert_sandstone"})
        minetest.set_node({x=127, y=9, z=9}, {name="default:desert_sandstone"})
        minetest.set_node({x=127, y=9, z=13}, {name="default:desert_sandstone"})
        minetest.set_node({x=126, y=9, z=6}, {name="default:desert_sandstone"})
        minetest.set_node({x=124, y=9, z=12}, {name="default:desert_sandstone"})
        minetest.set_node({x=123, y=9, z=7}, {name="default:desert_sandstone"})
	elseif v+0 == 3 then
        minetest.set_node({x=131, y=10, z=12}, {name="default:desert_sandstone"})
        minetest.set_node({x=130, y=10, z=8}, {name="default:desert_sandstone"})
        minetest.set_node({x=127, y=10, z=9}, {name="default:desert_sandstone"})
        minetest.set_node({x=127, y=10, z=13}, {name="default:desert_sandstone"})
        minetest.set_node({x=126, y=10, z=6}, {name="default:desert_sandstone"})
        minetest.set_node({x=124, y=10, z=12}, {name="default:desert_sandstone"})
        minetest.set_node({x=123, y=10, z=7}, {name="default:desert_sandstone"}) 
		minetest.set_node({x=123, y=9, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=123, y=9, z=8}, {name="default:desert_sandstone"})
		minetest.set_node({x=124, y=9, z=7}, {name="default:desert_sandstone"})
		minetest.set_node({x=124, y=9, z=11}, {name="default:desert_sandstone"})
		minetest.set_node({x=124, y=9, z=13}, {name="default:desert_sandstone"})
		minetest.set_node({x=123, y=9, z=12}, {name="default:desert_sandstone"})
		minetest.set_node({x=125, y=9, z=12}, {name="default:desert_sandstone"})
		minetest.set_node({x=126, y=9, z=7}, {name="default:desert_sandstone"})
		minetest.set_node({x=127, y=9, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=125, y=9, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=127, y=9, z=8}, {name="default:desert_sandstone"})
		minetest.set_node({x=127, y=9, z=10}, {name="default:desert_sandstone"})
		minetest.set_node({x=126, y=9, z=9}, {name="default:desert_sandstone"})
		minetest.set_node({x=128, y=9, z=9}, {name="default:desert_sandstone"})
		minetest.set_node({x=126, y=9, z=13}, {name="default:desert_sandstone"})
		minetest.set_node({x=127, y=9, z=14}, {name="default:desert_sandstone"})
		minetest.set_node({x=127, y=9, z=12}, {name="default:desert_sandstone"})
		minetest.set_node({x=130, y=9, z=7}, {name="default:desert_sandstone"})
		minetest.set_node({x=131, y=9, z=8}, {name="default:desert_sandstone"})
		minetest.set_node({x=129, y=9, z=8}, {name="default:desert_sandstone"})
		minetest.set_node({x=130, y=9, z=12}, {name="default:desert_sandstone"})
		minetest.set_node({x=131, y=9, z=13}, {name="default:desert_sandstone"})
		minetest.set_node({x=131, y=9, z=11}, {name="default:desert_sandstone"})
	elseif v+0 == 4 then
		minetest.set_node({x=131, y=11, z=12}, {name="default:desert_sandstone"})
        minetest.set_node({x=130, y=11, z=8}, {name="default:desert_sandstone"})
        minetest.set_node({x=127, y=11, z=9}, {name="default:desert_sandstone"})
        minetest.set_node({x=127, y=11, z=13}, {name="default:desert_sandstone"})
        minetest.set_node({x=126, y=11, z=6}, {name="default:desert_sandstone"})
        minetest.set_node({x=124, y=11, z=12}, {name="default:desert_sandstone"})
        minetest.set_node({x=123, y=11, z=7}, {name="default:desert_sandstone"})
		
		minetest.set_node({x=123, y=9, z=13}, {name="default:silver_sandstone"}) 
		minetest.set_node({x=123, y=9, z=13}, {name="default:silver_sandstone"})
		minetest.set_node({x=124, y=9, z=6}, {name="default:silver_sandstone"})
		minetest.set_node({x=124, y=9, z=9}, {name="default:silver_sandstone"})
		minetest.set_node({x=125, y=9, z=10}, {name="default:silver_sandstone"})
		minetest.set_node({x=128, y=9, z=11}, {name="default:silver_sandstone"})
		minetest.set_node({x=130, y=9, z=6}, {name="default:silver_sandstone"})
		minetest.set_node({x=130, y=9, z=14}, {name="default:silver_sandstone"})
    elseif v+0 == 0 then
        for j=123,131 do
            for i=6,14 do
                for k=9,14 do
                    minetest.set_node({x=j, y=k, z=i}, {name="air"})
                end
            end
        end
        minetest.set_node({x=130, y=9, z=10}, {name="default:sandstone"})
        minetest.set_node({x=128, y=9, z=7}, {name="default:sandstone"})
        minetest.set_node({x=129, y=9, z=13}, {name="default:sandstone"})
        minetest.set_node({x=126, y=9, z=11}, {name="default:sandstone"})
        minetest.set_node({x=125, y=9, z=8}, {name="default:sandstone"})
        minetest.set_node({x=125, y=9, z=14}, {name="default:sandstone"})
        minetest.set_node({x=123, y=9, z=10}, {name="default:sandstone"})
    end
end
function Battleground(v,player)
    if v+0 == 1 then
        for j=72,76 do
            for i=80,84 do
                minetest.set_node({x=j*(-1), y=9, z=i*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 2 then
        for j=72,76 do
            for i=80,84 do
                minetest.set_node({x=j*(-1), y=10, z=i*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-74, y=10, z=-80}, {name="air"})
    elseif v+0 == 3 then
        minetest.set_node({x=-72, y=11, z=-80}, {name="default:cobble"})
        minetest.set_node({x=-72, y=11, z=-82}, {name="default:cobble"})
        minetest.set_node({x=-72, y=11, z=-84}, {name="default:cobble"})
        minetest.set_node({x=-74, y=11, z=-84}, {name="default:cobble"})
        minetest.set_node({x=-76, y=11, z=-84}, {name="default:cobble"})
        minetest.set_node({x=-76, y=11, z=-82}, {name="default:cobble"})
        minetest.set_node({x=-76, y=11, z=-80}, {name="default:cobble"})
    elseif v+0 == 4 then
        minetest.set_node({x=-72, y=12, z=-80}, {name="castrum:fire"})
        minetest.set_node({x=-72, y=12, z=-82}, {name="castrum:fire"})
        minetest.set_node({x=-72, y=12, z=-84}, {name="castrum:fire"})
        minetest.set_node({x=-74, y=12, z=-84}, {name="castrum:fire"})
        minetest.set_node({x=-76, y=12, z=-84}, {name="castrum:fire"})
        minetest.set_node({x=-76, y=12, z=-82}, {name="castrum:fire"})
        minetest.set_node({x=-76, y=12, z=-80}, {name="castrum:fire"})
        minetest.set_node({x=-74, y=11, z=-81}, {name="castrum:knight_dark"})
        screwdriver_handler(player, {type="node", under={x=-74, y=11, z=-81}, above={x=-74, y=11, z=-81}}, 1)
        screwdriver_handler(player, {type="node", under={x=-74, y=11, z=-81}, above={x=-74, y=11, z=-81}}, 1)
    elseif v+0 == 5 then
        minetest.set_node({x=-72, y=11, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=11, z=-82}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=11, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-74, y=11, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=11, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=11, z=-82}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=11, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=9, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=9, z=-82}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=9, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-74, y=9, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=9, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=9, z=-82}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=9, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-74, y=9, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-73, y=10, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-75, y=10, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=10, z=-81}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=10, z=-83}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=10, z=-81}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=10, z=-83}, {name="default:stone_block"})
        minetest.set_node({x=-73, y=10, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-75, y=10, z=-84}, {name="default:stone_block"})
    elseif v+0 == 6 then 
        for j=72,76 do
            for i=80,84 do
                for k=9,12 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
	elseif v+0 == 7 then
        minetest.set_node({x=-72, y=11, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=11, z=-82}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=11, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-74, y=11, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=11, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=11, z=-82}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=11, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=9, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=9, z=-82}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=9, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-74, y=9, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=9, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=9, z=-82}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=9, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-74, y=9, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-73, y=10, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-75, y=10, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=10, z=-81}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=10, z=-83}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=10, z=-81}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=10, z=-83}, {name="default:desert_cobble"})
        minetest.set_node({x=-73, y=10, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-75, y=10, z=-84}, {name="default:desert_cobble"})
	elseif v+0 == 8 then 
        for j=72,76 do
            for i=80,84 do
                for k=9,12 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 9 then 
        minetest.set_node({x=-72, y=11, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=11, z=-82}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=11, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-74, y=11, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=11, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=11, z=-82}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=11, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=9, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=9, z=-82}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=9, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-74, y=9, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=9, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=9, z=-82}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=9, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-74, y=9, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-73, y=10, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-75, y=10, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=10, z=-81}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=10, z=-83}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=10, z=-81}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=10, z=-83}, {name="default:desert_stone_block"})
        minetest.set_node({x=-73, y=10, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-75, y=10, z=-84}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then 
        for j=72,76 do
            for i=80,84 do
                for k=9,12 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Island_Battleground(v,player)
    if v+0 == 1 then
        for j=180,184 do
            for i=42,46 do
                minetest.set_node({x=j, y=9, z=i}, {name="default:sandstone"})
            end
        end
    elseif v+0 == 2 then
        for j=180,184 do
            for i=42,46 do
                minetest.set_node({x=j, y=10, z=i}, {name="default:sandstone"})
            end
        end
        minetest.set_node({x=180, y=10, z=44}, {name="air"})
    elseif v+0 == 3 then
        minetest.set_node({x=180, y=11, z=46}, {name="default:sandstone"})
        minetest.set_node({x=182, y=11, z=46}, {name="default:sandstone"})
        minetest.set_node({x=184, y=11, z=46}, {name="default:sandstone"})
        minetest.set_node({x=184, y=11, z=44}, {name="default:sandstone"})
        minetest.set_node({x=184, y=11, z=42}, {name="default:sandstone"})
        minetest.set_node({x=182, y=11, z=42}, {name="default:sandstone"})
        minetest.set_node({x=180, y=11, z=42}, {name="default:sandstone"})
    elseif v+0 == 4 then
        minetest.set_node({x=180, y=12, z=46}, {name="castrum:fire"})
        minetest.set_node({x=182, y=12, z=46}, {name="castrum:fire"})
        minetest.set_node({x=184, y=12, z=46}, {name="castrum:fire"})
        minetest.set_node({x=184, y=12, z=44}, {name="castrum:fire"})
        minetest.set_node({x=184, y=12, z=42}, {name="castrum:fire"})
        minetest.set_node({x=182, y=12, z=42}, {name="castrum:fire"})
        minetest.set_node({x=180, y=12, z=42}, {name="castrum:fire"})
        minetest.set_node({x=182, y=11, z=44}, {name="castrum:skeleton_captain"})
        screwdriver_handler(player, {type="node", under={x=182, y=11, z=44}, above={x=182, y=11, z=44}}, 1)
    elseif v+0 == 0 then 
        for j=180,184 do
            for i=42,46 do
                for k=9,12 do
                    minetest.set_node({x=j, y=k, z=i}, {name="air"})
                end
            end
        end
    end
end
function Island_Smithy(v,player)
    if v+0 == 1 then
        for j=166,173 do
            for i=20,28 do
                minetest.set_node({x=j, y=9, z=i}, {name="default:sandstone"})
            end
        end
        minetest.set_node({x=165, y=9, z=23}, {name="stairs:stair_sandstone"})
        minetest.set_node({x=165, y=9, z=22}, {name="stairs:stair_sandstone"})
        screwdriver_handler(player, {type="node", under={x=165, y=9, z=23}, above={x=165, y=9, z=23}}, 1)
        screwdriver_handler(player, {type="node", under={x=165, y=9, z=22}, above={x=165, y=9, z=22}}, 1)
    elseif v+0 == 2 then
        for j=166,173 do
            minetest.set_node({x=j, y=10, z=20}, {name="default:sandstone"})
            minetest.set_node({x=j, y=10, z=25}, {name="default:sandstone"})
        end
        for i=20,28 do
            minetest.set_node({x=173, y=10, z=i}, {name="default:sandstone"})
        end
        for j=167,173 do
            minetest.set_node({x=j, y=10, z=28}, {name="default:sandstone"})
        end
        minetest.set_node({x=166, y=10, z=21}, {name="default:sandstone"})
        minetest.set_node({x=166, y=10, z=24}, {name="default:sandstone"})
        minetest.set_node({x=171, y=10, z=27}, {name="default:sandstone"})
        minetest.set_node({x=171, y=10, z=26}, {name="default:sandstone"})
    elseif v+0 == 3 then
        for j=166,173 do
            minetest.set_node({x=j, y=11, z=20}, {name="default:sandstone"})
            minetest.set_node({x=j, y=11, z=25}, {name="default:sandstone"})
        end
        for i=20,28 do
            minetest.set_node({x=173, y=11, z=i}, {name="default:sandstone"})
        end
        for j=168,173 do
            minetest.set_node({x=j, y=11, z=28}, {name="default:sandstone"})
        end
        minetest.set_node({x=166, y=11, z=21}, {name="default:sandstone"})
        minetest.set_node({x=166, y=11, z=24}, {name="default:sandstone"})
        minetest.set_node({x=166, y=10, z=22}, {name="doors:door_wood_b"})
        minetest.set_node({x=166, y=10, z=23}, {name="doors:door_wood_a"})
        screwdriver_handler(player, {type="node", under={x=166, y=10, z=22}, above={x=166, y=10, z=22}}, 1)
        screwdriver_handler(player, {type="node", under={x=166, y=10, z=23}, above={x=166, y=10, z=23}}, 1)
    elseif v+0 == 4 then
        for j=166,173 do
            minetest.set_node({x=j, y=12, z=20}, {name="default:sandstone"})
            minetest.set_node({x=j, y=12, z=25}, {name="default:sandstone"})
        end
        for i=20,28 do
            minetest.set_node({x=173, y=12, z=i}, {name="default:sandstone"})
        end
        for i=20,25 do
            minetest.set_node({x=166, y=12, z=i}, {name="default:sandstone"})
        end
        for j=169,173 do
            minetest.set_node({x=j, y=12, z=28}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for j=167,172 do
            minetest.set_node({x=j, y=13, z=21}, {name="default:sandstone"})
            minetest.set_node({x=j, y=13, z=24}, {name="default:sandstone"})
        end
        for i=21,24 do
            minetest.set_node({x=167, y=13, z=i}, {name="default:sandstone"})
            minetest.set_node({x=172, y=13, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
        for j=168,171 do
            minetest.set_node({x=j, y=14, z=22}, {name="default:sandstone"})
            minetest.set_node({x=j, y=14, z=23}, {name="default:sandstone"})
        end
        minetest.set_node({x=172, y=10, z=27}, {name="default:lava_source"})
        minetest.set_node({x=172, y=10, z=26}, {name="default:lava_source"})
    elseif v+0 == 0 then
        for j=165,173 do
            for i=20,28 do
                for k=9,14 do
                    minetest.set_node({x=j, y=k, z=i}, {name="air"})
                end
            end
        end
    end
end
function Cactusfarm(v,player)
    if v+0 == 1 then
        minetest.set_node({x=130, y=9, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=130, y=9, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=9, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=9, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=127, y=9, z=-4}, {name="castrum:cactus"})
        minetest.set_node({x=127, y=10, z=-4}, {name="castrum:cactus"})
        minetest.set_node({x=132, y=9, z=1}, {name="default:chest"})
        screwdriver_handler(player, {type="node", under={x=132, y=9, z=1}, above={x=132, y=9, z=1}}, 1)
        screwdriver_handler(player, {type="node", under={x=132, y=9, z=1}, above={x=132, y=9, z=1}}, 1)
        screwdriver_handler(player, {type="node", under={x=132, y=9, z=1}, above={x=132, y=9, z=1}}, 1)
    elseif v+0 == 2 then
        minetest.set_node({x=130, y=10, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=130, y=10, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=10, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=10, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=127, y=11, z=-4}, {name="castrum:cactus"})
	elseif v+0 == 3 then
		minetest.set_node({x=130, y=11, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=130, y=11, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=11, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=11, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=127, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=126, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=128, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=12, z=-3}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=12, z=-5}, {name="castrum:cactus"})
	elseif v+0 == 4 then
		minetest.set_node({x=129, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=12, z=-2}, {name="castrum:cactus"})
		minetest.set_node({x=125, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=12, z=-6}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=13, z=-4}, {name="castrum:cactus"})
	elseif v+0 == 5 then
		minetest.set_node({x=129, y=13, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=13, z=-2}, {name="castrum:cactus"})
		minetest.set_node({x=125, y=13, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=13, z=-6}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=14, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=130, y=12, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=130, y=12, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=12, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=12, z=-7}, {name="castrum:cactus"})
    elseif v+0 == 0 then
        for j=123,131 do
            for i=0,8 do
                for k=9,14 do
                    minetest.set_node({x=j, y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
        minetest.set_node({x=132, y=9, z=1}, {name="air"})
    end
end
function Mountain_Fountain(v,player)
    if v+0 == 1 then
        for i=334,338 do
            for j=3,5 do
                minetest.set_node({x=i, y=40, z=j*(-1)}, {name="default:mossycobble"})
            end
        end
        for i=335,337 do
            minetest.set_node({x=i, y=40, z=-2}, {name="default:mossycobble"})
			minetest.set_node({x=i, y=40, z=-6}, {name="default:mossycobble"})
        end
    elseif v+0 == 2 then
        minetest.set_node({x=334, y=41, z=-3}, {name="default:mossycobble"})
		minetest.set_node({x=334, y=41, z=-4}, {name="default:mossycobble"})
		minetest.set_node({x=334, y=41, z=-5}, {name="default:mossycobble"})
		minetest.set_node({x=338, y=41, z=-3}, {name="default:mossycobble"})
		minetest.set_node({x=338, y=41, z=-4}, {name="default:mossycobble"})
		minetest.set_node({x=338, y=41, z=-5}, {name="default:mossycobble"})
		minetest.set_node({x=335, y=41, z=-2}, {name="default:mossycobble"})
		minetest.set_node({x=336, y=41, z=-2}, {name="default:mossycobble"})
		minetest.set_node({x=337, y=41, z=-2}, {name="default:mossycobble"})
		minetest.set_node({x=335, y=41, z=-6}, {name="default:mossycobble"})
		minetest.set_node({x=336, y=41, z=-6}, {name="default:mossycobble"})
		minetest.set_node({x=337, y=41, z=-6}, {name="default:mossycobble"})
    elseif v+0 == 3 then
        minetest.set_node({x=336, y=41, z=-4}, {name="default:mossycobble"})
        minetest.set_node({x=336, y=42, z=-4}, {name="default:mossycobble"})
        minetest.set_node({x=336, y=43, z=-4}, {name="default:water_source"})
    elseif v+0 == 0 then
        for i=334,338 do
            for k=40,43 do
                for j=2,6 do
                    minetest.set_node({x=i, y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Mountain_Quarry(v,player)
    if v+0 == 1 then
        minetest.set_node({x=349, y=40, z=-9}, {name="default:mossycobble"})
		minetest.set_node({x=349, y=40, z=-7}, {name="default:mossycobble"})
		minetest.set_node({x=350, y=40, z=-8}, {name="default:mossycobble"})
		minetest.set_node({x=348, y=40, z=-8}, {name="default:mossycobble"})
		minetest.set_node({x=349, y=41, z=-8}, {name="default:mossycobble"})
		
		minetest.set_node({x=347, y=40, z=-12}, {name="default:mossycobble"})
		minetest.set_node({x=347, y=40, z=-10}, {name="default:mossycobble"})
		minetest.set_node({x=348, y=40, z=-11}, {name="default:mossycobble"})
		minetest.set_node({x=346, y=40, z=-11}, {name="default:mossycobble"})
		minetest.set_node({x=347, y=41, z=-11}, {name="default:mossycobble"})
		
		minetest.set_node({x=348, y=40, z=-15}, {name="default:mossycobble"})
		minetest.set_node({x=348, y=40, z=-13}, {name="default:mossycobble"})
		minetest.set_node({x=349, y=40, z=-14}, {name="default:mossycobble"})
		minetest.set_node({x=347, y=40, z=-14}, {name="default:mossycobble"})
		minetest.set_node({x=348, y=41, z=-14}, {name="default:mossycobble"})
		
		minetest.set_node({x=351, y=40, z=-11}, {name="default:mossycobble"})
		minetest.set_node({x=351, y=40, z=-13}, {name="default:mossycobble"})
		minetest.set_node({x=350, y=40, z=-12}, {name="default:mossycobble"})
		minetest.set_node({x=352, y=40, z=-12}, {name="default:mossycobble"})
		minetest.set_node({x=351, y=41, z=-12}, {name="default:mossycobble"})
		
		minetest.set_node({x=352, y=40, z=-10}, {name="default:mossycobble"})
		minetest.set_node({x=352, y=40, z=-8}, {name="default:mossycobble"})
		minetest.set_node({x=351, y=40, z=-9}, {name="default:mossycobble"})
		minetest.set_node({x=353, y=40, z=-9}, {name="default:mossycobble"})
		minetest.set_node({x=352, y=41, z=-9}, {name="default:mossycobble"})
		
		minetest.set_node({x=352, y=40, z=-14}, {name="default:mossycobble"})
		minetest.set_node({x=351, y=40, z=-15}, {name="default:mossycobble"})
		minetest.set_node({x=353, y=40, z=-15}, {name="default:mossycobble"})
		minetest.set_node({x=352, y=41, z=-15}, {name="default:mossycobble"})
		
		minetest.set_node({x=354, y=40, z=-12}, {name="default:mossycobble"})
		minetest.set_node({x=354, y=40, z=-10}, {name="default:mossycobble"})
		minetest.set_node({x=353, y=40, z=-11}, {name="default:mossycobble"})
		minetest.set_node({x=354, y=41, z=-11}, {name="default:mossycobble"})
    elseif v+0 == 0 then
        for i=346,354 do
            for k=40,43 do
                for j=7,15 do
                    minetest.set_node({x=i, y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
		minetest.set_node({x=349, y=40, z=-8}, {name="default:mossycobble"})
		minetest.set_node({x=347, y=40, z=-11}, {name="default:mossycobble"})
		minetest.set_node({x=348, y=40, z=-14}, {name="default:mossycobble"})
		minetest.set_node({x=351, y=40, z=-12}, {name="default:mossycobble"})
		minetest.set_node({x=352, y=40, z=-9}, {name="default:mossycobble"})
		minetest.set_node({x=352, y=40, z=-15}, {name="default:mossycobble"})
		minetest.set_node({x=354, y=40, z=-11}, {name="default:mossycobble"})
    end
end
function Mountain_Smithy(v,player)
    if v+0 == 1 then
        for j=318,325 do
            for i=7,15 do
                minetest.set_node({x=j, y=40, z=i*(-1)}, {name="default:mossycobble"})
            end
        end
        minetest.set_node({x=326, y=40, z=-10}, {name="stairs:stair_mossycobble"})
        minetest.set_node({x=326, y=40, z=-9}, {name="stairs:stair_mossycobble"})
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-10}, above={x=326, y=40, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-10}, above={x=326, y=40, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-10}, above={x=326, y=40, z=-10}}, 1)

        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-9}, above={x=326, y=40, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-9}, above={x=326, y=40, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-9}, above={x=326, y=40, z=-9}}, 1)
    elseif v+0 == 2 then
        for j=318,325 do
            minetest.set_node({x=j, y=41, z=-12}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=41, z=-7}, {name="default:mossycobble"})
        end
		
        for i=7,15 do
            minetest.set_node({x=318, y=41, z=i*(-1)}, {name="default:mossycobble"})
        end
        for j=318,324 do
            minetest.set_node({x=j, y=41, z=-15}, {name="default:mossycobble"})
        end
        minetest.set_node({x=325, y=41, z=-8}, {name="default:mossycobble"})
        minetest.set_node({x=325, y=41, z=-11}, {name="default:mossycobble"})
        minetest.set_node({x=320, y=41, z=-14}, {name="default:mossycobble"})
        minetest.set_node({x=320, y=41, z=-13}, {name="default:mossycobble"})
    elseif v+0 == 3 then
        for j=318,325 do
            minetest.set_node({x=j, y=42, z=-12}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=42, z=-7}, {name="default:mossycobble"})
        end
        for i=7,15 do
            minetest.set_node({x=318, y=42, z=i*(-1)}, {name="default:mossycobble"})
        end
        for j=318,323 do
            minetest.set_node({x=j, y=42, z=-15}, {name="default:mossycobble"})
        end
        minetest.set_node({x=325, y=42, z=-8}, {name="default:mossycobble"})
        minetest.set_node({x=325, y=42, z=-11}, {name="default:mossycobble"})
        minetest.set_node({x=325, y=41, z=-10}, {name="doors:door_wood_a"})
        minetest.set_node({x=325, y=41, z=-9}, {name="doors:door_wood_b"})
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-10}, above={x=325, y=41, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-10}, above={x=325, y=41, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-10}, above={x=325, y=41, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-9}, above={x=325, y=41, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-9}, above={x=325, y=41, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-9}, above={x=325, y=41, z=-9}}, 1)
    elseif v+0 == 4 then
		for j=318,325 do
            minetest.set_node({x=j, y=43, z=-12}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=43, z=-7}, {name="default:mossycobble"})
        end
        for i=7,15 do
            minetest.set_node({x=318, y=43, z=i*(-1)}, {name="default:mossycobble"})
        end
        for j=318,322 do
            minetest.set_node({x=j, y=43, z=-15}, {name="default:mossycobble"})
        end
        for i=7,12 do
            minetest.set_node({x=325, y=43, z=i*(-1)}, {name="default:mossycobble"})
        end
    elseif v+0 == 5 then
        for j=319,324 do
            minetest.set_node({x=j, y=44, z=-11}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=44, z=-8}, {name="default:mossycobble"})
        end
        minetest.set_node({x=324, y=44, z=-10}, {name="default:mossycobble"})
        minetest.set_node({x=324, y=44, z=-9}, {name="default:mossycobble"})
        minetest.set_node({x=319, y=44, z=-10}, {name="default:mossycobble"})
        minetest.set_node({x=319, y=44, z=-9}, {name="default:mossycobble"})
    elseif v+0 == 6 then
        for j=320,323 do
            minetest.set_node({x=j, y=45, z=-10}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=45, z=-9}, {name="default:mossycobble"})
        end
        minetest.set_node({x=319, y=41, z=-14}, {name="default:lava_source"})
        minetest.set_node({x=319, y=41, z=-13}, {name="default:lava_source"})
    elseif v+0 == 0 then
        for j=318,326 do
            for i=7,15 do
                for k=40,45 do
                    minetest.set_node({x=j, y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Farm(v,player)
    if v+0 == 1 then
        minetest.set_node({x=350, y=39, z=3}, {name="default:water_source"})
		minetest.set_node({x=351, y=39, z=3}, {name="farming:soil_wet"})
		minetest.set_node({x=349, y=39, z=3}, {name="farming:soil_wet"})
		minetest.set_node({x=349, y=39, z=4}, {name="farming:soil_wet"})
		minetest.set_node({x=350, y=39, z=4}, {name="farming:soil_wet"})
		minetest.set_node({x=351, y=39, z=4}, {name="farming:soil_wet"})
		minetest.set_node({x=349, y=39, z=2}, {name="farming:soil_wet"})
		minetest.set_node({x=350, y=39, z=2}, {name="farming:soil_wet"})
		minetest.set_node({x=351, y=39, z=2}, {name="farming:soil_wet"})
		
		minetest.set_node({x=351, y=40, z=3}, {name="farming:cotton_8"})
		minetest.set_node({x=349, y=40, z=3}, {name="farming:cotton_8"})
		minetest.set_node({x=349, y=40, z=4}, {name="farming:cotton_8"})
		minetest.set_node({x=350, y=40, z=4}, {name="farming:cotton_8"})
		minetest.set_node({x=351, y=40, z=4}, {name="farming:cotton_8"})
		minetest.set_node({x=349, y=40, z=2}, {name="farming:cotton_8"})
		minetest.set_node({x=350, y=40, z=2}, {name="farming:cotton_8"})
		minetest.set_node({x=351, y=40, z=2}, {name="farming:cotton_8"})
        minetest.set_node({x=345, y=40, z=-2}, {name="default:chest"})
		screwdriver_handler(player, {type="node", under={x=345, y=40, z=-2}, above={x=345, y=40, z=-2}}, 1)
    elseif v+0 == 0 then
        for j=346,354 do
            for i=0,7 do
                minetest.set_node({x=j, y=39, z=i}, {name="default:stone"})
            end
			minetest.set_node({x=j, y=39, z=-1}, {name="default:stone"})
        end
		for j=346,354 do
            for i=0,7 do
                minetest.set_node({x=j, y=40, z=i}, {name="air"})
            end
			minetest.set_node({x=j, y=40, z=-1}, {name="air"})
        end
        minetest.set_node({x=345, y=40, z=-2}, {name="air"})
    end
end
function Island_Home1(v,player)
    if v+0 == 1 then
        minetest.set_node({x=144, y=9, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=9, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=9, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=144, y=9, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=145, y=9, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=137, y=9, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=139,143 do
            minetest.set_node({x=i, y=9, z=-22}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        minetest.set_node({x=144, y=10, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=10, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=10, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=144, y=10, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=145, y=10, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=137, y=10, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=139,143 do
            minetest.set_node({x=i, y=10, z=-22}, {name="default:sandstone"})
        end
		minetest.set_node({x=145, y=10, z=-17}, {name="default:glass"})
		minetest.set_node({x=145, y=10, z=-18}, {name="default:glass"})
		minetest.set_node({x=141, y=10, z=-22}, {name="default:glass"})
		minetest.set_node({x=137, y=10, z=-17}, {name="default:glass"})
		minetest.set_node({x=137, y=10, z=-18}, {name="default:glass"})
    elseif v+0 == 3 then
        minetest.set_node({x=144, y=11, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=11, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=11, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=144, y=11, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=145, y=11, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=137, y=11, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=139,143 do
            minetest.set_node({x=i, y=11, z=-22}, {name="default:sandstone"})
        end
	elseif v+0 == 4 then
        minetest.set_node({x=143, y=12, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=139, y=12, z=-14}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=144, y=12, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=138, y=12, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=139,143 do
            minetest.set_node({x=i, y=12, z=-21}, {name="default:sandstone"})
        end
	elseif v+0 == 5 then
		for j=14,20 do
            for i=139,143 do
				minetest.set_node({x=i, y=13, z=j*(-1)}, {name="default:sandstone"})
			end
        end
		minetest.set_node({x=143, y=13, z=-14}, {name="air"})
		minetest.set_node({x=139, y=13, z=-14}, {name="air"})
		minetest.set_node({x=141, y=13, z=-18}, {name="air"})
		minetest.set_node({x=141, y=9, z=-18}, {name="castrum:fire"})
    elseif v+0 == 0 then
        for i=137,145 do
            for k=9,13 do
                for j=14,22 do
                    minetest.set_node({x=i, y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end
function Island_Pier(v,player)
    if v+0 == 1 then
        for j=171,175 do
            for i=38,40 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=40}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=40}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=40}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=40}, {name="default:wood"})
    elseif v+0 == 2 then
        for j=171,175 do
            for i=41,43 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=43}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=43}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=43}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=43}, {name="default:wood"})
    elseif v+0 == 3 then
        for j=171,175 do
            for i=44,46 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=46}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=46}, {name="default:wood"})
    elseif v+0 == 4 then
        for j=171,175 do
            for i=47,49 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=49}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=49}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=49}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=49}, {name="default:wood"})
    elseif v+0 == 5 then
        for j=171,175 do
            for i=50,52 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=52}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=52}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=52}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=52}, {name="default:wood"})
	elseif v+0 == 6 then
        for j=171,175 do
            for i=53,55 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=55}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=55}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=55}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=55}, {name="default:wood"})
	elseif v+0 == 7 then
        for j=171,175 do
            for i=56,58 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=58}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=58}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=58}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=58}, {name="default:wood"})
		minetest.set_node({x=171, y=8, z=44}, {name="castrum:ship2"})
		minetest.set_node({x=175, y=8, z=44}, {name="castrum:comming_soon"})
    elseif v+0 == 0 then
        for j=171,175 do
            for i=38,58 do
                for k=6,7 do
                    minetest.set_node({x=j, y=k, z=i}, {name="default:water_source"})
                end
                minetest.set_node({x=j, y=8, z=i}, {name="air"})
            end
        end
    end
end
function Island_Pier2(v,player)
    if v+0 == 1 then
        for j=176,178 do
            for i=42,46 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=178, y=7, z=42}, {name="default:wood"})
        minetest.set_node({x=178, y=6, z=42}, {name="default:wood"})
        minetest.set_node({x=178, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=178, y=6, z=46}, {name="default:wood"})
    elseif v+0 == 2 then
        for j=179,181 do
            for i=42,46 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=181, y=7, z=42}, {name="default:wood"})
        minetest.set_node({x=181, y=6, z=42}, {name="default:wood"})
        minetest.set_node({x=181, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=181, y=6, z=46}, {name="default:wood"})
    elseif v+0 == 3 then
        for j=182,184 do
            for i=42,46 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=184, y=7, z=42}, {name="default:wood"})
        minetest.set_node({x=184, y=6, z=42}, {name="default:wood"})
        minetest.set_node({x=184, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=184, y=6, z=46}, {name="default:wood"})
		minetest.set_node({x=179, y=8, z=44}, {name="castrum:comming_soon"})
    elseif v+0 == 0 then
        for j=176,184 do
            for i=42,46 do
                for k=6,7 do
                    minetest.set_node({x=j, y=k, z=i}, {name="default:water_source"})
                end
                minetest.set_node({x=j, y=8, z=i}, {name="air"})
            end
        end
    end
end
function Island_Barracks(v,player)
    if v+0 == 1 then
        for j=165,173 do
            for i=6,14 do
                minetest.set_node({x=j, y=9, z=i}, {name="default:sandstone"})
            end
        end
    elseif v+0 == 2 then 
        for j=165,171 do
            minetest.set_node({x=j, y=10, z=6}, {name="default:sandstone"})
			minetest.set_node({x=j, y=10, z=14}, {name="default:sandstone"})
        end
		minetest.set_node({x=172, y=10, z=7}, {name="default:sandstone"})
		minetest.set_node({x=172, y=10, z=13}, {name="default:sandstone"})
        for i=8,12 do
            minetest.set_node({x=173, y=10, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 3 then 
        for j=166,171 do
            minetest.set_node({x=j, y=11, z=6}, {name="default:sandstone"})
			minetest.set_node({x=j, y=11, z=14}, {name="default:sandstone"})
        end
		minetest.set_node({x=172, y=11, z=7}, {name="default:sandstone"})
		minetest.set_node({x=172, y=11, z=13}, {name="default:sandstone"})
        for i=8,12 do
            minetest.set_node({x=173, y=11, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 4 then 
        for j=167,171 do
            minetest.set_node({x=j, y=12, z=6}, {name="default:sandstone"})
			minetest.set_node({x=j, y=12, z=14}, {name="default:sandstone"})
        end
		minetest.set_node({x=172, y=12, z=7}, {name="default:sandstone"})
		minetest.set_node({x=172, y=12, z=13}, {name="default:sandstone"})
        for i=8,12 do
            minetest.set_node({x=173, y=12, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for j=168,171 do
            minetest.set_node({x=j, y=13, z=6}, {name="default:sandstone"})
			minetest.set_node({x=j, y=13, z=14}, {name="default:sandstone"})
        end
		minetest.set_node({x=172, y=13, z=7}, {name="default:sandstone"})
		minetest.set_node({x=172, y=13, z=13}, {name="default:sandstone"})
        for i=8,12 do
            minetest.set_node({x=173, y=13, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
		for j=168,172 do
            for i=7,13 do
                minetest.set_node({x=j, y=14, z=i}, {name="default:sandstone"})
            end
        end
		minetest.set_node({x=172, y=14, z=7}, {name="air"})
		minetest.set_node({x=172, y=14, z=13}, {name="air"})
		minetest.set_node({x=169, y=10, z=10}, {name="castrum:fire"})
    elseif v+0 == 7 then
        for j=37,43 do
            for i=25,31 do
                for k=9,13 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:stone_block"})
                    end
                end
            end
        end
	elseif v+0 == 8 then
        for j=37,43 do
            for i=25,31 do
                for k=9,13 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:desert_cobble"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for j=165,173 do
            for i=6,14 do
                for k=9,14 do
                    minetest.set_node({x=j, y=k, z=i}, {name="air"})
                end
            end
        end
    end
end
function Sail1(v,player)
    if v+0 == 1 then
        for j=161,169 do
			minetest.set_node({x=j, y=16, z=44}, {name="wool:white"})
			minetest.set_node({x=j, y=15, z=45}, {name="wool:white"})
			minetest.set_node({x=j, y=14, z=45}, {name="wool:white"})
			minetest.set_node({x=j, y=13, z=45}, {name="wool:white"})
			minetest.set_node({x=j, y=12, z=44}, {name="wool:white"})
        end
    elseif v+0 == 0 then 
        for j=161,169 do
			minetest.set_node({x=j, y=16, z=44}, {name="air"})
			minetest.set_node({x=j, y=15, z=45}, {name="air"})
			minetest.set_node({x=j, y=14, z=45}, {name="air"})
			minetest.set_node({x=j, y=13, z=45}, {name="air"})
			minetest.set_node({x=j, y=12, z=44}, {name="air"})
        end
    end
end
function Sail2(v,player)
    if v+0 == 1 then
        for j=163,167 do
			minetest.set_node({x=j, y=14, z=50}, {name="wool:white"})
			minetest.set_node({x=j, y=13, z=51}, {name="wool:white"})
			minetest.set_node({x=j, y=12, z=51}, {name="wool:white"})
			minetest.set_node({x=j, y=11, z=50}, {name="wool:white"})
        end
    elseif v+0 == 0 then 
        for j=163,167 do
			minetest.set_node({x=j, y=14, z=50}, {name="air"})
			minetest.set_node({x=j, y=13, z=51}, {name="air"})
			minetest.set_node({x=j, y=12, z=51}, {name="air"})
			minetest.set_node({x=j, y=11, z=50}, {name="air"})
        end
    end
end
function Cannon1(v,player)
    if v+0 == 1 then
		minetest.set_node({x=169, y=9, z=42}, {name="castrum:cannon_1_1"})
		screwdriver_handler(player, {type="node", under={x=169, y=9, z=42}, above={x=169, y=9, z=42}}, 1)
    elseif v+0 == 0 then 
        minetest.set_node({x=169, y=9, z=42}, {name="air"})
    end
end
function Cannon2(v,player)
    if v+0 == 1 then
		minetest.set_node({x=161, y=9, z=42}, {name="castrum:cannon_1_1"})
		screwdriver_handler(player, {type="node", under={x=161, y=9, z=42}, above={x=161, y=9, z=42}}, 1)
		screwdriver_handler(player, {type="node", under={x=161, y=9, z=42}, above={x=161, y=9, z=42}}, 1)
		screwdriver_handler(player, {type="node", under={x=161, y=9, z=42}, above={x=161, y=9, z=42}}, 1)
    elseif v+0 == 0 then 
        minetest.set_node({x=161, y=9, z=42}, {name="air"})
    end
end
function Bridge_Status(player)
    file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	local level = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "r")
	local status = file:read("*l")
    file:close()
    if tonumber(level) < 9 then
        minetest.chat_send_player(player:get_player_name(), "build bridge first")
    elseif tonumber(level) == 9 then
        if tonumber(status) == 0 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("1")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
                end
            end
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:wood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
        elseif tonumber(status) == 1 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("0")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
                end
            end
            minetest.set_node({x=-40, y=8, z=-36}, {name="castrum:bridge"})
            for j=36,44 do
                for k=9,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="air"})
                end
            end
        end
    elseif tonumber(level) == 10 then
        if tonumber(status) == 0 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("1")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
                end
            end
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:junglewood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
        elseif tonumber(status) == 1 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("0")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:junglewood"})
                end
            end
            minetest.set_node({x=-40, y=8, z=-36}, {name="castrum:bridge"})
            for j=36,44 do
                for k=9,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="air"})
                end
            end
        end
	elseif tonumber(level) == 11 then
        if tonumber(status) == 0 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("1")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
                end
            end
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:pine_wood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
        elseif tonumber(status) == 1 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("0")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:pine_wood"})
                end
            end
            minetest.set_node({x=-40, y=8, z=-36}, {name="castrum:bridge"})
            for j=36,44 do
                for k=9,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="air"})
                end
            end
        end
    end
end
function Add_knight(player,lv,state)
    if state == true then
        file = io.open(minetest.get_worldpath().."/SAVE/Knight_"..lv..".txt", "r")
	    local knights = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Knight_"..lv..".txt", "w")
	    file:write(tonumber(knights)+1)
	    file:close()
        Update_knight(player)
    end
end
local knight_pos = {
    {1,  -65, -54, 0},
    {2,  -64, -54, 0},
    {3,  -63, -54, 0},
    {4,  -62, -54, 0},
    {5,  -61, -54, 0},
    {6,  -60, -55, 1},
    {7,  -60, -56, 1},
    {8,  -60, -57, 1},
    {9,  -60, -58, 1},
    {10, -60, -59, 1},
    {11, -61, -60, 2},
    {12, -62, -60, 2},
    {13, -63, -60, 2},
    {14, -64, -60, 2},
    {15, -65, -60, 2},
    {16, -66, -59, 3},
    {17, -66, -58, 3},
    {18, -66, -57, 3},
    {19, -66, -56, 3},
    {20, -66, -55, 3},
    {21, -65, -67, 0},
    {22, -64, -67, 0},
    {23, -63, -67, 0},
	{24, -62, -67, 0},
	{25, -61, -67, 0},
	{26, -60, -68, 1},
	{27, -60, -69, 1},
	{28, -60, -70, 1},
	{29, -60, -71, 1},
	{30, -60, -72, 1},
	{31, -61, -73, 2},
	{32, -62, -73, 2},
	{33, -63, -73, 2},
	{34, -64, -73, 2},
	{35, -65, -73, 2},
	{36, -66, -72, 3},
	{37, -66, -71, 3},
	{38, -66, -70, 3},
	{39, -66, -69, 3},
	{40, -66, -68, 3},
	{41, -83, -54, 0},
	{42, -84, -54, 0},
	
}
function Update_knight(player)
    file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	local knight1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Knight_2.txt", "r")
	local knight2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Knight_3.txt", "r")
	local knight3 = file:read("*l")
    file:close()
    for j=59,67 do
        for i=53,61 do
            for k=9,9 do
                minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
            end
        end
    end
    minetest.set_node({x=-63, y=9, z=-57}, {name="castrum:fire"})
    file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	local camp2 = file:read("*l")
    file:close()
    if tonumber(camp2) > 0 then
        for j=59,67 do
            for i=66,74 do
                for k=9,9 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
        minetest.set_node({x=-63, y=9, z=-70}, {name="castrum:fire"})
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	local camp3 = file:read("*l")
    file:close()
    if tonumber(camp3) > 0 then
        for j=59,67 do
            for i=81,89 do
                for k=9,9 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
        minetest.set_node({x=-85, y=9, z=-57}, {name="castrum:fire"})
    end
	
	for i=1,tonumber(knight3) do
		print (i)
        minetest.set_node({x=knight_pos[i][2], y=9, z=knight_pos[i][3]}, {name="castrum:knight_lv3_sit"})
        for j=1,tonumber(knight_pos[i][4]) do
            screwdriver_handler(player, {type="node", under={x=knight_pos[i][2], y=9, z=knight_pos[i][3]}, above={x=knight_pos[i][2], y=9, z=knight_pos[i][3]}}, 1)
        end
    end
    for i=(tonumber(knight3)+1),(tonumber(knight2)+tonumber(knight3)) do
		print (i)
        minetest.set_node({x=knight_pos[i][2], y=9, z=knight_pos[i][3]}, {name="castrum:knight_lv2_sit"})
        for j=1,tonumber(knight_pos[i][4]) do
            screwdriver_handler(player, {type="node", under={x=knight_pos[i][2], y=9, z=knight_pos[i][3]}, above={x=knight_pos[i][2], y=9, z=knight_pos[i][3]}}, 1)
        end
    end
    for i=(tonumber(knight2)+tonumber(knight3)+1),(tonumber(knight1)+tonumber(knight2)+tonumber(knight3)) do
		print (i)
        minetest.set_node({x=knight_pos[i][2], y=9, z=knight_pos[i][3]}, {name="castrum:knight_lv1_sit"})
        for j=1,tonumber(knight_pos[i][4]) do
            screwdriver_handler(player, {type="node", under={x=knight_pos[i][2], y=9, z=knight_pos[i][3]}, above={x=knight_pos[i][2], y=9, z=knight_pos[i][3]}}, 1)
        end
    end
end



function Add_horse(player,lv,state)
    if state == true then
        file = io.open(minetest.get_worldpath().."/SAVE/Horse_"..lv..".txt", "r")
	    local horse = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Horse_"..lv..".txt", "w")
	    file:write(tonumber(horse)+1)
	    file:close()
        Update_horse(player)
    end
end
local horse_pos = {
    {1,  -65, 1,2},
	{2,  -63, 2,2},
}
function Update_horse(player)
    file = io.open(minetest.get_worldpath().."/SAVE/Horse_1.txt", "r")
	local horse1 = file:read("*l")
    file:close()
    for j=62,65 do
		for i=0,6 do
			minetest.set_node({x=j*(-1), y=9, z=i}, {name="air"})
		end
	end
    for i=1,tonumber(horse1) do
        minetest.set_node({x=horse_pos[i][2], y=9, z=horse_pos[i][3]}, {name="castrum:horse1"})
		screwdriver_handler(player, {type="node", under={x=horse_pos[i][2], y=9, z=horse_pos[i][3]}, above={x=horse_pos[i][2], y=9, z=horse_pos[i][3]}}, 1)
		screwdriver_handler(player, {type="node", under={x=horse_pos[i][2], y=9, z=horse_pos[i][3]}, above={x=horse_pos[i][2], y=9, z=horse_pos[i][3]}}, 1)
    end
end


function Add_pirate(player,lv,state)
    if state == true then
        file = io.open(minetest.get_worldpath().."/SAVE/Pirate_"..lv..".txt", "r")
	    local pirate = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Pirate_"..lv..".txt", "w")
	    file:write(tonumber(pirate)+1)
	    file:close()
        Update_pirate(player)
    end
end
local pirate_pos = {
    {1,  168, 12,0},
	{2,  169, 12,0},
}
function Update_pirate(player)
    file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
	local pirate1 = file:read("*l")
    file:close()
    for j=168,171 do
		for i=8,12 do
			minetest.set_node({x=j, y=10, z=i}, {name="air"})
		end
	end
    for i=1,tonumber(pirate1) do
        minetest.set_node({x=pirate_pos[i][2], y=10, z=pirate_pos[i][3]}, {name="castrum:pirate_lv1_sit"})
		for j=1,tonumber(pirate_pos[i][4]) do
			screwdriver_handler(player, {type="node", under={x=pirate_pos[i][2], y=10, z=pirate_pos[i][3]}, above={x=pirate_pos[i][2], y=10, z=pirate_pos[i][3]}}, 1)
		end
    end
	minetest.set_node({x=169, y=10, z=10}, {name="castrum:fire"})
end
function Item_Remove(player,item,num)
	local num2 = math.floor(num/99)
	for i=1,num2 do
		local test = player:get_inventory():remove_item("main", item.." 99"):get_count()
	end
	local num3 = num2*99
	local num4 = num-num3
	local test2 = player:get_inventory():remove_item("main", item.." "..num4):get_count()
end
function Item_Remove2(player,list,item)
	items = {}
	for i in item:gmatch("%S+") do 
		table.insert(items, i) 
	end
	local num2 = math.floor(tonumber(items[2])/99)
	for i=1,num2 do
		local test = player:get_inventory():remove_item(list, items[1].." 99"):get_count()
	end
	local num3 = num2*99
	local num4 = tonumber(items[2])-num3
	local test2 = player:get_inventory():remove_item(list, items[1].." "..num4):get_count()
end
function nextrange(x, max)
	x = x + 1
	if x > max then
		x = 0
	end
	return x
end
function screwdriver_handler(user, pointed_thing, mode)
    if pointed_thing.type ~= "node" then
		return
	end
	local pos = pointed_thing.under
	local keys = user:get_player_control()
	local player_name = user:get_player_name()

	if minetest.is_protected(pos, user:get_player_name()) then
		minetest.record_protection_violation(pos, user:get_player_name())
		return
	end

	local node = minetest.get_node(pos)
	local ndef = minetest.registered_nodes[node.name]
	if not ndef or not ndef.paramtype2 == "facedir" or
			(ndef.drawtype == "nodebox" and
			not ndef.node_box.type == "fixed") or
			node.param2 == nil then
		return
	end

	-- Set param2
	local n = node.param2
	local axisdir = math.floor(n / 4)
	local rotation = n - axisdir * 4
	if mode == 1 then
		n = axisdir * 4 + nextrange(rotation, 3)
	elseif mode == 3 then
		n = nextrange(axisdir, 5) * 4
	end
	
	node.param2 = n
	minetest.swap_node(pos, node)
end
local home1 = {}
home1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "8 Cobblestone"
        need2 = "10 Wooden Planks"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 6 then
        label = (level-5).."/4"
        label2 = "Upgrade"
        need1 = "64 Cobblestone"
        need2 = "80 Jungle Wood Planks"
        need3 = "Fountain lv.2"
	elseif tonumber(level) == 7 then
        label = (level-5).."/4"
        label2 = "Upgrade"
        need1 = "128 Cobblestone"
        need2 = "160 Pine Wood Planks"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 8 then
        label = (level-5).."/4"
        label2 = "Upgrade"
        need1 = "256 Cobblestone"
        need2 = "320 Acacia Wood Planks"
        need3 = "Fountain lv.6"
    else
        label = (level-5).."/4"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local home2 = {}
home2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "8 Cobblestone"
        need2 = "10 Wooden Planks"
        need3 = "Fountain lv.3"
    elseif tonumber(level) == 6 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "64 Cobblestone"
        need2 = "80 Jungle Wood Planks"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 7 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "128 Cobblestone"
        need2 = "160 Pine Wood Planks"
        need3 = "Fountain lv.6"
    else
        label = (level-5).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local home3 = {}
home3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "8 Cobblestone"
        need2 = "10 Wooden Planks"
        need3 = "Fountain lv.5"
	elseif tonumber(level) == 6 then
        label = (level-5).."/2"
        label2 = "Upgrade"
        need1 = "64 Cobblestone"
        need2 = "80 Jungle Wood Planks"
        need3 = "Fountain lv.6"
    else
        label = (level-5).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local bridge = {}
bridge.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 9 then
        label = "not build yet ("..math.floor((level/9)*100).."%)"
        label2 = "Build"
        need1 = "3 Wooden Planks"
		need2 = "Fountain lv.1"
    elseif tonumber(level) == 9 then
        label = (level-8).."/3"
        label2 = "Upgrade"
        need1 = "27 Jungle Wood Planks"
		need2 = "Fountain lv.3"
	elseif tonumber(level) == 10 then
        label = (level-8).."/3"
        label2 = "Upgrade"
        need1 = "108 Pine Wood Planks"
		need2 = "Fountain lv.5"
    else
        label = (level-8).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local moats = {}
moats.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 9 then
        label = "not build yet ("..math.floor((level/9)*100).."%)"
        label2 = "Build"
        need1 = "3 Stone Shovel"
        need2 = "Bridge lv.1"
    elseif tonumber(level) == 9 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "27 Steel Shovel"
        need2 = "30 Water Buckets"
        need3 = "Bridge lv.2"
	elseif tonumber(level) == 10 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "54 Bronze Shovel"
        need2 = "60 Water Buckets"
        need3 = "Bridge lv.3"
    else
        label = (level-8).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local moate = {}
moate.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Moate.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 9 then
        label = "not build yet ("..math.floor((level/9)*100).."%)"
        label2 = "Build"
        need1 = "3 Stone Shovel"
        need2 = "Bridge lv.1"
    elseif tonumber(level) == 9 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "27 Steel Shovel"
        need2 = "30 Water Buckets"
        need3 = "Bridge lv.2"
	elseif tonumber(level) == 10 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "54 Bronze Shovel"
        need2 = "60 Water Buckets"
        need3 = "Bridge lv.3"
    else
        label = (level-8).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local moatw = {}
moatw.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Moatw.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 9 then
        label = "not build yet ("..math.floor((level/9)*100).."%)"
        label2 = "Build"
        need1 = "3 Stone Shovel"
        need2 = "Bridge lv.1"
    elseif tonumber(level) == 9 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "27 Steel Shovel"
        need2 = "30 Water Buckets"
        need3 = "Bridge lv.2"
	elseif tonumber(level) == 10 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "54 Bronze Shovel"
        need2 = "60 Water Buckets"
        need3 = "Bridge lv.3"
    else
        label = (level-8).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local moatn = {}
moatn.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Moatn.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 9 then
        label = "not build yet ("..math.floor((level/9)*100).."%)"
        label2 = "Build"
        need1 = "3 Stone Shovel"
        need2 = "Bridge lv.1"
    elseif tonumber(level) == 9 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "27 Steel Shovel"
        need2 = "30 Water Buckets"
        need3 = "Bridge lv.2"
	elseif tonumber(level) == 10 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "54 Bronze Shovel"
        need2 = "60 Water Buckets"
        need3 = "Bridge lv.3"
    else
        label = (level-8).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local walls = {}
walls.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Walls.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 14 then
        label = "not build yet ("..math.floor((level/14)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 14 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    elseif tonumber(level) == 16 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 17 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 18 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-13).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local wallw = {}
wallw.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Wallw.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 14 then
        label = "not build yet ("..math.floor((level/14)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 14 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    elseif tonumber(level) == 16 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 17 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 18 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-13).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local walln = {}
walln.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Walln.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 14 then
        label = "not build yet ("..math.floor((level/14)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 14 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    elseif tonumber(level) == 16 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 17 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 18 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-13).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local walle = {}
walle.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 14 then
        label = "not build yet ("..math.floor((level/14)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 14 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.3"
    elseif tonumber(level) == 16 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 17 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 18 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-13).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local fountain = {}
fountain.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 4 then
        label = "not build yet ("..math.floor((level/4)*100).."%)"
        label2 = "Build"
        need1 = "10 Cobblestone"
		need2 = "Walls and Towers lv.1"
    elseif tonumber(level) == 4 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "25 Cobblestone"
        need2 = "8 Stone Pickaxe"
        need3 = "Walls and Towers lv.2"
		need4 = "Moats lv.1"
    elseif tonumber(level) == 5 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "100 Cobblestone"
        need2 = "32 Stone Pickaxe"
        need3 = "Walls and Towers lv.3"
    elseif tonumber(level) == 6 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "100 Desert Cobblestone"
        need2 = "32 Steel Pickaxe"
        need3 = "Walls and Towers lv.4"
        need4 = "Moats lv.2"
	elseif tonumber(level) == 7 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "400 Desert Cobblestone"
        need2 = "64 Steel Pickaxe"
        need3 = "Walls and Towers lv.5"
	elseif tonumber(level) == 8 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "600 Desert Cobblestone"
        need2 = "64 Bronze Pickaxe"
        need3 = "Walls and Towers lv.6"
		need4 = "Moats lv.3"
    else
        label = (level-3).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local tower1 = {}
tower1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Tower1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 18 then
        label = "not build yet ("..math.floor((level/18)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 18 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 19 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    elseif tonumber(level) == 20 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 21 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 22 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-17).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local tower2 = {}
tower2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Tower2.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 18 then
        label = "not build yet ("..math.floor((level/18)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 18 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 19 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    elseif tonumber(level) == 20 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 21 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 22 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-17).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local tower3 = {}
tower3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Tower3.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 18 then
        label = "not build yet ("..math.floor((level/18)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 18 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 19 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    elseif tonumber(level) == 20 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 21 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 22 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-17).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local tower4 = {}
tower4.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Tower4.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 18 then
        label = "not build yet ("..math.floor((level/18)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 18 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 19 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    elseif tonumber(level) == 20 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 21 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 22 then
        label = (level-17).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-17).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local smithy = {}
smithy.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "8 Cobblestone"
        need2 = "6 Wooden Planks"
		need3 = "Fountain lv.1"
    elseif tonumber(level) == 6 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "80 Cobblestone"
        need2 = "60 Wooden Planks"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 7 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "80 Desert Cobblestone"
        need2 = "60 Jungle Wood Planks"
        need3 = "Fountain lv.5"
    else
        label = (level-5).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
    if tonumber(level) > 5 then
        formspec = formspec.."button[0,3;5,1;;Crafting]"
    end
    formspec = formspec--.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local stable = {}
stable.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 7 then
        label = "not build yet ("..math.floor((level/7)*100).."%)"
        label2 = "Build"
        need1 = "100 Wooden Planks"
        need2 = "25 River Water Buckets"
		need3 = "Fountain lv.4"
	elseif tonumber(level) == 7 then
        label = (level-6).."/2"
        label2 = "Upgrade"
        need1 = "400 Jungle Wood Planks"
        need2 = "100 River Water Buckets"
		need3 = "Fountain lv.6"
    else
        label = (level-6).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
		--.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
		if tonumber(level) > 6 then
            formspec = formspec.."button[0,3;5,1;;Get Horse]"
        end
	return formspec			
end
local horse = {}
horse.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    max = 0
    max1 = 0
    max2 = 0
    file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	local stable = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Horse_1.txt", "r")
	local horse_1 = file:read("*l")
    file:close()
    if player:get_attribute("4item") ~= nil then
        item = player:get_attribute("4item")
    end
    if player:get_attribute("4need1") ~= nil then
        need1 = player:get_attribute("4need1")
    end
    if player:get_attribute("4need2") ~= nil then
        need2 = player:get_attribute("4need2")
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[3.9,0.5;You have:"..horse_1.."/"..(stable-6).."]"
        .."button[0,2;5,1;;Get Horse]"
        .."button[0,3;1,1;;Horse\nlv.1]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
	return formspec			
end
local mine = {}
mine.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Mine.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Fountain lv.3"
    elseif tonumber(level) == 1 then
        label = (level).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
    elseif tonumber(level) == 2 then
        label = (level).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
	elseif tonumber(level) == 3 then
        label = (level).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
	elseif tonumber(level) == 4 then
        label = (level).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
	elseif tonumber(level) == 5 then
        label = (level).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 6"
    else
        label = (level).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local quarry = {}
quarry.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "r")
	local level = file:read("*l")
    file:close()
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) == 0 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 1 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
	elseif tonumber(level) == 2 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
	elseif tonumber(level) == 3 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
	elseif tonumber(level) == 4 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
	elseif tonumber(level) == 5 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 6"
    else
        label = (level+1).."/7"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local tree = {}
tree.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Tree.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Fountain lv.1"
    elseif tonumber(level) == 1 then
        label = (level).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 2 then
        label = (level).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
	elseif tonumber(level) == 3 then
        label = (level).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
	elseif tonumber(level) == 4 then
        label = (level).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
	elseif tonumber(level) == 5 then
        label = (level).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
	elseif tonumber(level) == 6 then
        label = (level).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 6"
    else
        label = (level).."/7"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local pier = {}
pier.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 5 then
        label = "not build yet ("..math.floor((level/5)*100).."%)"
        label2 = "Build"
        need1 = "5 Wooden Planks"
    elseif tonumber(level) == 5 then
        label = (level-4).."/3"
        label2 = "Upgrade"
        need1 = "25 Jungle Wood Planks"
	elseif tonumber(level) == 6 then
        label = (level-4).."/3"
        label2 = "Upgrade"
        need1 = "100 Pine Wood Planks"
    else
        label = (level-4).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local ship1 = {}
ship1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 5 then
        label = "not build yet ("..math.floor((level/5)*100).."%)"
        label2 = "Build"
        need1 = "10 Wooden Planks"
        need2 = "Fountain lv.2"
    elseif tonumber(level) == 5 then
        label = (level-4).."/2"
        label2 = "Upgrade"
        need1 = "50 Jungle Wood Planks"
        need2 = "Fountain lv.4"
    else
        label = (level-4).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
		if tonumber(level) > 5 then
			formspec = formspec.."button[0,3;2.5,1;;Go to Island]"
			formspec = formspec.."button[2.5,3;2.5,1;;Go to Mountain]"
        elseif tonumber(level) > 4 then
            formspec = formspec.."button[0,3;5,1;;Go to Island]"
		
        end
        formspec = formspec--.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local craft = {}
craft.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    if player:get_attribute("item") ~= nil then
        item = player:get_attribute("item")
    end
    if player:get_attribute("need1") ~= nil then
        need1 = player:get_attribute("need1")
    end
    if player:get_attribute("need2") ~= nil then
        need2 = player:get_attribute("need2")
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "r")
	local level = file:read("*l")
    file:close()
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."button[0,2;5,1;;Craft]"
        .."button[0,3;1,1;;Soul]"
        .."button[1,3;1,1;;Steel\nIngot]"
		.."button[2,3;1,1;;Bronze\nIngot]"
        .."button[0,4;1,1;;Stone\nShovel]"
        .."button[1,4;1,1;;Stone\nPickaxe]"
        .."button[2,4;1,1;;Stone\nSword]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
        if tonumber(level) > 6 then
            formspec = formspec .."button[0,5;1,1;;Steel\nShovel]"
                .."button[1,5;1,1;;Steel\nPickaxe]"
                .."button[2,5;1,1;;Steel\nSword]"
        end
		if tonumber(level) > 7 then
            formspec = formspec .."button[0,6;1,1;;Bronze\nShovel]"
                .."button[1,6;1,1;;Bronze\nPickaxe]"
                .."button[2,6;1,1;;Bronze\nSword]"
        end
	return formspec			
end
local lake = {}
lake.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Lake.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Fountain lv.2"
    elseif tonumber(level) == 1 then
        label = (level).."/4"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 2 then
        label = (level).."/4"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
	elseif tonumber(level) == 3 then
        label = (level).."/4"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
    else
        label = (level).."/4"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local lake2 = {}
lake2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Lake2.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Fountain lv.4"
    elseif tonumber(level) == 1 then
        label = (level).."/4"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
	elseif tonumber(level) == 2 then
        label = (level).."/4"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
	elseif tonumber(level) == 3 then
        label = (level).."/4"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
    else
        label = (level).."/4"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local barracks = {}
barracks.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "20 Cobblestone"
        need2 = "20 Wooden Planks"
		need3 = "Fountain lv.1"
    elseif tonumber(level) == 6 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "50 Water Buckets"
        need2 = "200 Cobblestone"
        need3 = "200 Wooden Planks"
        need4 = "Fountain lv.3"
	elseif tonumber(level) == 7 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "50 River Water Buckets"
        need2 = "400 Desert Cobblestone"
        need3 = "400 Jungle Wood Planks"
        need4 = "Fountain lv.5"
    else
        label = (level-5).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        if tonumber(level) > 5 then
            formspec = formspec.."button[0,3;5,1;;Get Knights]"
        end
        formspec = formspec--.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local camp1 = {}
camp1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Home 1 lv.1"
    else
        label = (level).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local camp2 = {}
camp2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Home 2 lv.1"
        need2 = "Camp 1 lv.1"
    else
        label = (level).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local camp3 = {}
camp3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Home 3 lv.1"
        need2 = "Camp 2 lv.1"
    else
        label = (level).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local knight = {}
knight.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    max = 0
    max1 = 0
    max2 = 0
    file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	local home1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "r")
	local home2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "r")
	local home3 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "r")
	local barracks = file:read("*l")
    file:close()
    if tonumber(home1) == 6 then
        max1 = max1+8
    elseif tonumber(home1) == 7 then
        max1 = max1+11
	elseif tonumber(home1) == 8 then
        max1 = max1+14
	elseif tonumber(home1) == 9 then
        max1 = max1+17
    end
    if tonumber(home2) == 6 then
        max1 = max1+8
    elseif tonumber(home2) == 7 then
        max1 = max1+11
	elseif tonumber(home2) == 8 then
        max1 = max1+14
    end
	if tonumber(home3) == 6 then
        max1 = max1+8
    elseif tonumber(home3) == 7 then
        max1 = max1+11
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	local camp1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	local camp2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	local camp3 = file:read("*l")
    file:close()
    if tonumber(camp1) == 1 then
        max2 = max2+20
    end
    if tonumber(camp2) == 1 then
        max2 = max2+20
    end
	if tonumber(camp3) == 1 then
        max2 = max2+20
    end
    if max1 > max2 then
        max = max2
    elseif max2 > max1 then
        max = max1
    else
        max = max1
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	local knight_1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Knight_2.txt", "r")
	local knight_2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Knight_3.txt", "r")
	local knight_3 = file:read("*l")
    file:close()
    if player:get_attribute("2item") ~= nil then
        item = player:get_attribute("2item")
    end
    if player:get_attribute("2need1") ~= nil then
        need1 = player:get_attribute("2need1")
    end
    if player:get_attribute("2need2") ~= nil then
        need2 = player:get_attribute("2need2")
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[3.9,0.5;You have:"..(knight_1+knight_2+knight_3).."/"..max.."]"
        .."button[0,2;5,1;;Get Knight]"
        .."button[0,3;1,1;;Knight\nlv.1]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
        if tonumber(barracks) > 6 then
            formspec = formspec.."button[1,3;1,1;;Knight\nlv.2]"
        end
		if tonumber(barracks) > 7 then
            formspec = formspec.."button[2,3;1,1;;Knight\nlv.3]"
        end
	return formspec			
end
local battleground = {}
battleground.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "r")
	local level = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	local chapter = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 4 then
        label = "not build yet ("..math.floor((level/4)*100).."%)"
        label2 = "Build"
		need1 = "4 Cobblestone"
        need2 = "Fountain lv.1"
    elseif tonumber(level) == 4 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
        need2 = "40 Cobblestone"
		need3 = "Fountain lv.2"
    elseif tonumber(level) == 5 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
        need2 = "200 Cobblestone"
		need3 = "Fountain lv.3"
	elseif tonumber(level) == 6 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
        need2 = "200 Desert Cobblestone"
		need3 = "Fountain lv.4"
	elseif tonumber(level) == 7 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
        need2 = "400 Desert Cobblestone"
		need3 = "Fountain lv.5"
	elseif tonumber(level) == 8 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
        need2 = "600 Desert Cobblestone"
		need3 = "Fountain lv.6"
    else
        label = (level-3).."/6"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        if tonumber(chapter) == 1 and tonumber(level) > 3 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 1]"
        elseif tonumber(chapter) == 2 and tonumber(level) > 4 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 2]"
        elseif tonumber(chapter) == 2 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 2 (battleground lv.2 needed)]"
        elseif tonumber(chapter) == 3 and tonumber(level) > 5 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 3]"
        elseif tonumber(chapter) == 3 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 3 (battleground lv.3 needed)]"
		elseif tonumber(chapter) == 4 and tonumber(level) > 6 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 4]"
		elseif tonumber(chapter) == 4 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 4 (battleground lv.4 needed)]"
		elseif tonumber(chapter) == 5 and tonumber(level) > 7 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 5]"
		elseif tonumber(chapter) == 5 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 5 (battleground lv.5 needed)]"	
		elseif tonumber(chapter) == 6 and tonumber(level) > 8 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 6]"
		elseif tonumber(chapter) == 6 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 6 (battleground lv.6 needed)]"	
        end
        formspec = formspec--.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_battleground = {}
island_battleground.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "r")
	local level = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "r")
	local chapter = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 4 then
        label = "not build yet ("..math.floor((level/4)*100).."%)"
        label2 = "Build"
		need1 = "400 Sand"
        need2 = "Island Fountain lv.1"
    else
        label = (level-3).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        if tonumber(chapter) == 1 and tonumber(level) > 3 then
            formspec = formspec.."button[0,3;5,1;;Start Island Chapter 1]"
		elseif tonumber(chapter) == 2 and tonumber(level) > 3 then
			formspec = formspec.."button[0,3;5,1;;Start Island Chapter 2 (comming soon)]"
        end
        formspec = formspec--.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_walle = {}
island_walle.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 7 then
        label = "not build yet ("..math.floor((level/7)*100).."%)"
        label2 = "Build"
        need1 = "3 Sand"
	elseif tonumber(level) == 7 then
        label = (level-6).."/2"
        label2 = "Upgrade"
        need1 = "21 Desert Sand"
		need2 = "Island Fountain lv.1"
    else
        label = (level-6).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_wallw = {}
island_wallw.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 7 then
        label = "not build yet ("..math.floor((level/7)*100).."%)"
        label2 = "Build"
        need1 = "3 Sand"
	elseif tonumber(level) == 7 then
        label = (level-6).."/2"
        label2 = "Upgrade"
        need1 = "21 Desert Sand"
		need2 = "Island Fountain lv.1"
    else
        label = (level-6).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_walls = {}
island_walls.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 7 then
        label = "not build yet ("..math.floor((level/7)*100).."%)"
        label2 = "Build"
        need1 = "3 Sand"
	elseif tonumber(level) == 7 then
        label = (level-6).."/2"
        label2 = "Upgrade"
        need1 = "21 Desert Sand"
		need2 = "Island Fountain lv.1"
    else
        label = (level-6).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_walln = {}
island_walln.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 7 then
        label = "not build yet ("..math.floor((level/7)*100).."%)"
        label2 = "Build"
        need1 = "3 Sand"
	elseif tonumber(level) == 7 then
        label = (level-6).."/2"
        label2 = "Upgrade"
        need1 = "21 Desert Sand"
		need2 = "Island Fountain lv.1"
    else
        label = (level-6).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_ship1 = {}
island_ship1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) == 5 then
        label = (level-4).."/2"
        label2 = "Upgrade"
        need1 = "50 Jungle Wood Planks"
        need2 = "Fountain lv.4"
    else
        label = (level-4).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        .."button[0,3;5,1;;Go Back]"
        --.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local sail1 = {}
sail1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
		need1 = "9 White Wool"
    else
        label = (level).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local sail2 = {}
sail2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
		need1 = "4 White Wool"
    else
        label = (level).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local cannon1 = {}
cannon1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
		need1 = "25 Steel Ingot"
    else
        label = (level).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local cannon2 = {}
cannon2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
		need1 = "25 Steel Ingot"
    else
        label = (level).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_fountain = {}
island_fountain.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 4 then
        label = "not build yet ("..math.floor((level/4)*100).."%)"
        label2 = "Build"
        need1 = "10 Sand"
		need2 = "Island Walls lv.1"
	elseif tonumber(level) == 4 then
        label = (level-3).."/2"
        label2 = "Upgrade"
        need1 = "100 Desert Sand"
		need2 = "Island Fountain lv.1"
    else
        label = (level-3).."/2"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_smithy = {}
island_smithy.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "80 Sand"
        need2 = "60 Wood"
		need3 = "Island Fountain lv.1"
    else
        label = (level-5).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
    if tonumber(level) > 5 then
        formspec = formspec.."button[0,3;5,1;;Crafting]"
    end
	return formspec			
end
local craft2 = {}
craft2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    need3 = ""
    if player:get_attribute("3item") ~= nil then
        item = player:get_attribute("3item")
    end
    if player:get_attribute("3need1") ~= nil then
        need1 = player:get_attribute("3need1")
    end
    if player:get_attribute("3need2") ~= nil then
        need2 = player:get_attribute("3need2")
    end
    if player:get_attribute("3need3") ~= nil then
        need3 = player:get_attribute("3need3")
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."button[0,2;5,1;;Craft]"
        .."button[0,3;1,1;;Glass]"
		.."button[1,3;1,1;;Pirat Soul]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
	return formspec			
end
local sandmine = {}
sandmine.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Sandmine.txt", "r")
	local level = file:read("*l")
    file:close()
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) == 0 then
        label = (level+1).."/5"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
    elseif tonumber(level) == 1 then
        label = (level+1).."/5"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
	elseif tonumber(level) == 2 then
        label = (level+1).."/5"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
	elseif tonumber(level) == 3 then
        label = (level+1).."/5"
        label2 = "Upgrade"
        need1 = "Completed chapter 6"
    else
        label = (level+1).."/5"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local cactusfarm = {}
cactusfarm.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Cactusfarm.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Island Fountain lv.1"
    elseif tonumber(level) == 1 then
        label = (level).."/5"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
	elseif tonumber(level) == 2 then
        label = (level).."/5"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
	elseif tonumber(level) == 3 then
        label = (level).."/5"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
	elseif tonumber(level) == 4 then
        label = (level).."/5"
        label2 = "Upgrade"
        need1 = "Completed chapter 6"
    else
        label = (level).."/5"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_pier = {}
island_pier.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 7 then
        label = "not build yet ("..math.floor((level/7)*100).."%)"
        label2 = "Build"
        need1 = "100 Wooden Planks"
	else
        label = (level-6).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_pier2 = {}
island_pier2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier2.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 3 then
        label = "not build yet ("..math.floor((level/3)*100).."%)"
        label2 = "Build"
        need1 = "100 Wooden Planks"
	else
        label = (level-2).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_barracks = {}
island_barracks.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "200 Sand"
        need2 = "80 Cactus"
		need3 = "Island Fountain lv.2"
    
    else
        label = (level-5).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        if tonumber(level) > 5 then
            formspec = formspec.."button[0,3;5,1;;Get Pirates]"
        end
        formspec = formspec--.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local pirates = {}
pirates.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    max = 0
    max1 = 0
    max2 = 0
    file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
	local pirate_1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "r")
	local home_1 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	local level = file:read("*l")
    file:close()
    if player:get_attribute("5item") ~= nil then
        item = player:get_attribute("5item")
    end
    if player:get_attribute("5need1") ~= nil then
        need1 = player:get_attribute("5need1")
    end
    if player:get_attribute("5need2") ~= nil then
        need2 = player:get_attribute("5need2")
    end
	local num = 0
	
	if home_1+0 == 5 then
		num = num+1
	end
	if level+0 == 6 then
		num = num+1
	end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[3.9,0.5;You have:"..pirate_1.."/"..num.."]"
        .."button[0,2;5,1;;Get Pirate]"
        .."button[0,3;1,1;;Pirate\nlv.1]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
	return formspec			
end
local mountain_quarry = {}
mountain_quarry.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) == 0 then
        label = (level+1).."/2"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
	else
        label = (level+1).."/2"
        label2 = "Upgrade (comming soon)"
    end
	
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local mountain_fountain = {}
mountain_fountain.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 3 then
        label = "not build yet ("..math.floor((level/3)*100).."%)"
        label2 = "Build"
        need1 = "50 Moosy Cobblestone"
    else
        label = (level-2).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local mountain_smithy = {}
mountain_smithy.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "400 Moosy Cobblestone"
        need2 = "300 Wood"
		need3 = "Mountain Fountain lv.1"
    else
        label = (level-5).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
    if tonumber(level) > 5 then
        formspec = formspec.."button[0,3;5,1;;Crafting]"
    end
	return formspec			
end
local craft3 = {}
craft3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    need3 = ""
    if player:get_attribute("6item") ~= nil then
        item = player:get_attribute("6item")
    end
    if player:get_attribute("6need1") ~= nil then
        need1 = player:get_attribute("6need1")
    end
    if player:get_attribute("6need2") ~= nil then
        need2 = player:get_attribute("6need2")
    end
    if player:get_attribute("6need3") ~= nil then
        need3 = player:get_attribute("6need3")
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."button[0,2;5,1;;Craft]"
        .."button[0,3;1,1;;White\nWool]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
	return formspec			
end
local farm = {}
farm.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Farm.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
        need1 = "Mountain Fountain lv.1"
    else
        label = (level).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_home1 = {}
island_home1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 5 then
        label = "not build yet ("..math.floor((level/5)*100).."%)"
        label2 = "Build"
        need1 = "80 Sand"
		need2 = "10 Glass"
		need3 = "Island Fountain lv.1"
    else
        label = (level-4).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local ship2 = {}
ship2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Ship2.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 14 then
        label = "not build yet ("..math.floor((level/14)*100).."%)"
        label2 = "Build"
        need1 = "80 Wooden Planks"
        need2 = "Island Fountain lv.2"
    else
        label = (level-13).."/1"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        --.."button[0,4;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
minetest.register_node("castrum:home_1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Home 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "home1" , home1.get_formspec(player))
    end,
})

minetest.register_node("castrum:home_2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Home 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "home2" , home2.get_formspec(player))
    end,
})

minetest.register_node("castrum:home_3",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Home 3",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "home3" , home3.get_formspec(player))
    end,
})

minetest.register_node("castrum:bridge",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Bridge",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
    end,
})

minetest.register_node("castrum:bridge2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Bridge",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "bridge2" , bridge.get_formspec(player))
    end,
})

minetest.register_node("castrum:moat_south",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Moat South",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "moats" , moats.get_formspec(player))
    end,
})
minetest.register_node("castrum:moat_east",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Moat East",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "moate" , moate.get_formspec(player))
    end,
})
minetest.register_node("castrum:moat_west",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Moat West",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "moatw" , moatw.get_formspec(player))
    end,
})
minetest.register_node("castrum:moat_north",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Moat North",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "moatn" , moatn.get_formspec(player))
    end,
})
minetest.register_node("castrum:wall_south",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Wall South",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "walls" , walls.get_formspec(player))
    end,
})
minetest.register_node("castrum:wall_east",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Wall East",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "walle" , walle.get_formspec(player))
    end,
})
minetest.register_node("castrum:wall_west",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Wall West",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "wallw" , wallw.get_formspec(player))
    end,
})
minetest.register_node("castrum:wall_north",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Wall North",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "walln" , walln.get_formspec(player))
    end,
})
minetest.register_node("castrum:fountain",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Fountain",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "fountain" , fountain.get_formspec(player))
    end,
})
minetest.register_node("castrum:tower1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Tower 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "tower1" , tower1.get_formspec(player))
    end,
})
minetest.register_node("castrum:tower2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Tower 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "tower2" , tower2.get_formspec(player))
    end,
})
minetest.register_node("castrum:tower3",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Tower 3",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "tower3" , tower3.get_formspec(player))
    end,
})
minetest.register_node("castrum:tower4",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Tower 4",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "tower4" , tower4.get_formspec(player))
    end,
})
minetest.register_node("castrum:smithy",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Smithy",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "smithy" , smithy.get_formspec(player))
    end,
})
minetest.register_node("castrum:stable",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Stable",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
    end,
})
minetest.register_node("castrum:mine",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Mine",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mine" , mine.get_formspec(player))
    end,
})
minetest.register_node("castrum:quarry",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Quarry",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "quarry" , quarry.get_formspec(player))
    end,
})
minetest.register_node("castrum:tree",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Tree",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "tree" , tree.get_formspec(player))
    end,
})
minetest.register_node("castrum:pier",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Pier",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "pier" , pier.get_formspec(player))
    end,
})
minetest.register_node("castrum:ship1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Ship 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "ship1" , ship1.get_formspec(player))
    end,
})
minetest.register_node("castrum:lake",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Lake",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "lake" , lake.get_formspec(player))
    end,
})
minetest.register_node("castrum:lake2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Lake 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "lake2" , lake2.get_formspec(player))
    end,
})
minetest.register_node("castrum:barracks",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Barracks",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "barracks" , barracks.get_formspec(player))
    end,
})
minetest.register_node("castrum:camp1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Camp 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "camp1" , camp1.get_formspec(player))
    end,
})
minetest.register_node("castrum:camp2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Camp 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "camp2" , camp2.get_formspec(player))
    end,
})
minetest.register_node("castrum:camp3",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Camp 3",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "camp3" , camp3.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_walle",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Walle",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_walle" , island_walle.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_wallw",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Wallw",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_wallw" , island_wallw.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_walls",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Walls",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_walls" , island_walls.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_walln",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Walln",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_walln" , island_walln.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_fountain",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Fountain",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_fountain" , island_fountain.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_smithy",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Smithy",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_ship1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Ship 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_ship1" , island_ship1.get_formspec(player))
    end,
})
minetest.register_node("castrum:sandmine",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Sandmine",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "sandmine" , sandmine.get_formspec(player))
    end,
})
minetest.register_node("castrum:cactusfarm",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Cactusfarm",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "cactusfarm" , cactusfarm.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_pier",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Pier",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_pier" , island_pier.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_pier2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Pier 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_pier2" , island_pier2.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_barracks",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Barracks",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_barracks" , island_barracks.get_formspec(player))
    end,
})
minetest.register_node("castrum:battleground",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Battleground",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "battleground" , battleground.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_battleground",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Battleground",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_battleground" , island_battleground.get_formspec(player))
    end,
})
minetest.register_node("castrum:bridge_status",{
	tiles  = {"castrum_bridge_status.png"},
	description = "Change Bridge Status",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        Bridge_Status(player)
    end,
})
minetest.register_node("castrum:mountain_quarry",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Mountain Quarry",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mountain_quarry" , mountain_quarry.get_formspec(player))
    end,
})
minetest.register_node("castrum:mountain_fountain",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Mountain Fountain",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mountain_fountain" , mountain_fountain.get_formspec(player))
    end,
})
minetest.register_node("castrum:mountain_smithy",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Mountain Smithy",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mountain_smithy" , mountain_smithy.get_formspec(player))
    end,
})
minetest.register_node("castrum:farm",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Farm",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "farm" , farm.get_formspec(player))
    end,
})
minetest.register_node("castrum:island_home1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Home 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_home1" , island_home1.get_formspec(player))
    end,
})
minetest.register_node("castrum:ship2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Ship 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "ship2" , ship2.get_formspec(player))
    end,
})
minetest.register_node("castrum:sail1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Sail 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "sail1" , sail1.get_formspec(player))
    end,
})
minetest.register_node("castrum:sail2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Sail 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "sail2" , sail2.get_formspec(player))
    end,
})
minetest.register_node("castrum:cannon1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Cannon 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "cannon1" , cannon1.get_formspec(player))
    end,
})
minetest.register_node("castrum:cannon2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Cannon 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "cannon2" , cannon2.get_formspec(player))
    end,
})
minetest.register_node("castrum:fight1",{
	tiles  = {"castrum_fight1.png"},
	description = "Fight 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:fight2",{
	tiles  = {"castrum_fight2.png"},
	description = "Fight 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:sea_fight1",{
	tiles  = {"castrum_fight1.png"},
	description = "Sea Fight 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:test",{
	tiles  = {"castrum_bridge_status.png"},
	description = "Test",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        Chapter_Ship1_2(player)
    end,
})
minetest.register_craftitem("castrum:soul", {
	description = "Soul",
	inventory_image = "castrum_soul.png",
})
minetest.register_craftitem("castrum:pirate_soul", {
	description = "Pirate Soul",
	inventory_image = "castrum_soul2.png",
})
minetest.register_craftitem("castrum:shovel_stone", {
	description = "Stone Shovel",
	inventory_image = "default_tool_stoneshovel.png",
})
minetest.register_craftitem("castrum:sword_stone", {
	description = "Stone Sword",
	inventory_image = "default_tool_stonesword.png",
})
minetest.register_craftitem("castrum:pick_stone", {
	description = "Stone Pickaxe",
	inventory_image = "default_tool_stonepick.png",
})
minetest.register_craftitem("castrum:shovel_steel", {
	description = "Steel Shovel",
	inventory_image = "default_tool_steelshovel.png",
})
minetest.register_craftitem("castrum:sword_steel", {
	description = "Steel Sword",
	inventory_image = "default_tool_steelsword.png",
})
minetest.register_craftitem("castrum:pick_steel", {
	description = "Steel Pickaxe",
	inventory_image = "default_tool_steelpick.png",
})
minetest.register_craftitem("castrum:shovel_bronze", {
	description = "Bronze Shovel",
	inventory_image = "default_tool_bronzeshovel.png",
})
minetest.register_craftitem("castrum:sword_bronze", {
	description = "Bronze Sword",
	inventory_image = "default_tool_bronzesword.png",
})
minetest.register_craftitem("castrum:pick_bronze", {
	description = "Bronze Pickaxe",
	inventory_image = "default_tool_bronzepick.png",
})
minetest.register_craftitem("castrum:bucket_water", {
	description = "Water Bucket",
	inventory_image = "bucket_water.png",
})
minetest.register_craftitem("castrum:bucket_river_water", {
	description = "River Water Bucket",
	inventory_image = "bucket_river_water.png",
})

minetest.register_craftitem("castrum:horse1_item", {
	description = "Horse lv.1",
	inventory_image = "castrum_horse_inv.png",
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.under
		if minetest.get_node(pos).name == "castrum:knight_lv1" then
			itemstack:take_item()
			minetest.set_node(pos, {name="castrum:horse1"})
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name="castrum:knight_lv1_sit"})
			screwdriver_handler(placer, {type="node", under={x=pos.x,y=pos.y+1,z=pos.z}, above={x=pos.x,y=pos.y+1,z=pos.z}}, 1)
			return itemstack
		end
		if minetest.get_node(pos).name == "castrum:knight_lv2" then
			itemstack:take_item()
			minetest.set_node(pos, {name="castrum:horse1"})
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name="castrum:knight_lv2_sit"})
			screwdriver_handler(placer, {type="node", under={x=pos.x,y=pos.y+1,z=pos.z}, above={x=pos.x,y=pos.y+1,z=pos.z}}, 1)
			return itemstack
		end
		if minetest.get_node(pos).name == "castrum:knight_lv3" then
			itemstack:take_item()
			minetest.set_node(pos, {name="castrum:horse1"})
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name="castrum:knight_lv3_sit"})
			screwdriver_handler(placer, {type="node", under={x=pos.x,y=pos.y+1,z=pos.z}, above={x=pos.x,y=pos.y+1,z=pos.z}}, 1)
			return itemstack
		end
	end,
})

minetest.register_craftitem("castrum:horse1_item_1", {
	description = "Horse lv.1 with knight lv.1",
	inventory_image = "castrum_horse_inv.png^castrum_num1.png",
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.under
		if minetest.get_node(pos).name == "castrum:fight1" then
			itemstack:take_item()
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name="castrum:horse1"})
			minetest.set_node({x=pos.x,y=pos.y+2,z=pos.z}, {name="castrum:knight_lv1_sit"})
			screwdriver_handler(placer, {type="node", under={x=pos.x,y=pos.y+2,z=pos.z}, above={x=pos.x,y=pos.y+2,z=pos.z}}, 1)
			local inv = placer:get_inventory()
			Item_Remove2(player, "main", "castrum:knight_lv2")
			local fight = placer:get_attribute("fight")
			placer:set_attribute("fightdig", "false")
			if fight == "true" then
				for j=144,174 do
					for i=51,81 do
						minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
					end
				end
				fight_step2(placer)
			end
			return itemstack
		end
	end,
})
minetest.register_craftitem("castrum:horse1_item_2", {
	description = "Horse lv.1 with knight lv.2",
	inventory_image = "castrum_horse_inv.png^castrum_num2.png",
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.under
		if minetest.get_node(pos).name == "castrum:fight1" then
			itemstack:take_item()
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name="castrum:horse1"})
			minetest.set_node({x=pos.x,y=pos.y+2,z=pos.z}, {name="castrum:knight_lv2_sit"})
			screwdriver_handler(placer, {type="node", under={x=pos.x,y=pos.y+2,z=pos.z}, above={x=pos.x,y=pos.y+2,z=pos.z}}, 1)
			local inv = placer:get_inventory()
			Item_Remove2(player, "main", "castrum:knight_lv2")
			local fight = placer:get_attribute("fight")
			placer:set_attribute("fightdig", "false")
			if fight == "true" then
				for j=144,174 do
					for i=51,81 do
						minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
					end
				end
				fight_step2(placer)
			end
			return itemstack
		end
	end,
})
minetest.register_craftitem("castrum:horse1_item_3", {
	description = "Horse lv.1 with knight lv.3",
	inventory_image = "castrum_horse_inv.png^castrum_num3.png",
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.under
		if minetest.get_node(pos).name == "castrum:fight1" then
			itemstack:take_item()
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name="castrum:horse1"})
			minetest.set_node({x=pos.x,y=pos.y+2,z=pos.z}, {name="castrum:knight_lv3_sit"})
			screwdriver_handler(placer, {type="node", under={x=pos.x,y=pos.y+2,z=pos.z}, above={x=pos.x,y=pos.y+2,z=pos.z}}, 1)
			local inv = placer:get_inventory()
			Item_Remove2(player, "main", "castrum:knight_lv3")
			local fight = placer:get_attribute("fight")
			placer:set_attribute("fightdig", "false")
			if fight == "true" then
				for j=144,174 do
					for i=51,81 do
						minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
					end
				end
				fight_step2(placer)
			end
			return itemstack
		end
	end,
})
stairs.register_stair_and_slab(
	"castrum_wood",
	"default:wood",
	{cracky = 3},
	{"default_wood.png"},
	"Wooden Stair",
	"Wooden Slab",
	default.node_sound_wood_defaults()
)
minetest.register_node("castrum:cobble",{
	tiles  = {"default_cobble.png"},
	description = "Cobble",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:mossy_stone",{
	tiles  = {"castrum_mossy_stone.png"},
	description = "Cobble",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:comming_soon",{
	tiles  = {"castrum_comming_soon.png"},
	description = "Comming soon",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:cactus",{
	tiles = {"default_cactus_top.png", "default_cactus_top.png","default_cactus_side.png"},
	description = "Cactus",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png",{name = "default_dirt.png^default_grass_side.png",tileable_vertical = false}},
	groups = {crumbly = 3},
})
minetest.register_node("castrum:character1", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"character.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})

minetest.register_node("castrum:horse1", {
	description = "Horse lv.1",
	drawtype = "mesh",
	mesh = "horse.obj",
	tiles = {"castrum_horse.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=3},
	
})

minetest.register_node("castrum:castrum_knight1", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:castrum_knight2", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight2.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:knight_dark", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight_dark.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:knight1_sit", {
	description = "character",
	drawtype = "mesh",
	mesh = "character2.obj",
	tiles = {"castrum_knight.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:knight_lv1", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight_lv1.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=3},
})
minetest.register_node("castrum:knight_lv2", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight_lv2.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=3},
})
minetest.register_node("castrum:knight_lv3", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight_lv3.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=3},
})
minetest.register_node("castrum:knight_lv1_sit", {
	description = "character",
	drawtype = "mesh",
	mesh = "character2.obj",
	tiles = {"castrum_knight_lv1.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:knight_lv2_sit", {
	description = "character",
	drawtype = "mesh",
	mesh = "character2.obj",
	tiles = {"castrum_knight_lv2.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:knight_lv3_sit", {
	description = "character",
	drawtype = "mesh",
	mesh = "character2.obj",
	tiles = {"castrum_knight_lv3.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:knight_lv1_dark", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight_lv1_dark.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	--groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:knight_lv2_dark", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight_lv2_dark.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:knight_lv3_dark", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight_lv3_dark.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=2},
})

minetest.register_node("castrum:pirate_lv1", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_pirate_lv1.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=2},
})

minetest.register_node("castrum:pirate_lv1_sit", {
	description = "character",
	drawtype = "mesh",
	mesh = "character2.obj",
	tiles = {"castrum_pirate_lv1.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=2},
})

minetest.register_node("castrum:skeleton_lv1", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_skeleton_lv1.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=2},
})

minetest.register_node("castrum:pirate_captain", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_pirate_captain.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=2},
})

minetest.register_node("castrum:skeleton_captain", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_skeleton_captain.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=2},
})
minetest.register_node("castrum:fire", {
	description = "Fire",
	drawtype = "firelike",
	tiles = {
		{
			name = "fire_basic_flame_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	inventory_image = "fire_basic_flame.png",
	paramtype = "light",
	light_source = 13,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	damage_per_second = 4,
	groups = {igniter = 2, dig_immediate = 3},
	drop = "",
})

minetest.register_node("castrum:water", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "default_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})


minetest.register_node("castrum:cannon_1_1", {
	description = "wooden stand with steel cannon",
	tiles = {"castrum_canon_top_1.png","castrum_canon_side_1.png","default_wood.png","default_wood.png^castrum_rim.png","castrum_canon_top_1.png"},
	mesh = "castrum_cannon.obj",
	selection_box = {type = "fixed",fixed = {
			{-0.2, 0.2, -0.7, 0.2, -0.2, 0.9},
			{0.53, -0.1, 0.1, -0.53, 0.1, -0.1},	
		}
	},
	collision_box = {type = "fixed",fixed = {
			{-0.2, 0.2, -0.7, 0.2, -0.2, 0.9},
			{0.53, -0.1, 0.1, -0.53, 0.1, -0.1},	
		}
	},
	drawtype = "mesh",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
})	


minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "home1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Home1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "home1" , home1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 8")
                    Item_Remove2(player, "main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") then
                    txt = "build fountain first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:junglewood 80")
                    Item_Remove2(player, "main", "default:cobble 64")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") then
                    txt = "upgrade fountain to lv.2 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:cobble 128") and inv:contains_item("main", "default:pine_wood 160") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:pine_wood 160")
					Item_Remove2(player, "main", "default:cobble 128")
                    upgrade = true
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:cobble 128") and inv:contains_item("main", "default:pine_wood 160") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 8 and inv:contains_item("main", "default:cobble 256") and inv:contains_item("main", "default:acacia_wood 320") and tonumber(fountain) > 8 then
                    Item_Remove2(player, "main", "default:acacia_wood 320")
					Item_Remove2(player, "main", "default:cobble 256")
                    upgrade = true
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:cobble 256") and inv:contains_item("main", "default:acacia_wood 320") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 9 and upgrade then
                    Home1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "home1" , home1.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "home2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Home2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "home2" , home2.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:cobble 8")
                    Item_Remove2(player, "main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") then
                    txt = "upgrade fountain to lv.3 first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:junglewood 80")
                    Item_Remove2(player, "main", "default:cobble 64")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:cobble 128") and inv:contains_item("main", "default:pine_wood 160") and tonumber(fountain) > 8 then
                    Item_Remove2(player, "main", "default:pine_wood 160")
					Item_Remove2(player, "main", "default:cobble 128")
                    upgrade = true
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:cobble 128") and inv:contains_item("main", "default:pine_wood 160") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Home2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "home2" , home2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "bridge" then
        for k, v in pairs(fields) do
            if v == "del" then
                Bridge(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
				
                local inv = player:get_inventory()
                local upgrade = false
				local txt = "not enough items"
                if tonumber(level) < 9 and inv:contains_item("main", "default:wood 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:wood 3")
                    upgrade = true
				elseif tonumber(level) < 9 and inv:contains_item("main", "default:wood 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:junglewood 27")
                    upgrade = true
				elseif tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "default:pine_wood 108") and tonumber(fountain) > 7 then
                    Item_Remove2(player, "main", "default:pine_wood 108")
                    upgrade = true
				elseif tonumber(level) == 10 and inv:contains_item("main", "default:pine_wood 108") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 11 and upgrade then
                    Bridge(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "bridge2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Bridge2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
            elseif v == "Upgrade" then
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
				local txt = "not enough items"
                if tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:junglewood 27")
                    upgrade = true
				elseif tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "default:pine_wood 108") and tonumber(fountain) > 7 then
					Item_Remove2(player, "main", "default:pine_wood 108")
                    upgrade = true
				elseif tonumber(level) == 10 and inv:contains_item("main", "default:pine_wood 108") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 11 and upgrade then
                    Bridge2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "moats" then
        for k, v in pairs(fields) do
            if v == "del" then
                Moat_south(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "moats" , moats.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local bridge = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") and tonumber(bridge) > 8 then
                    Item_Remove2(player, "main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    txt = "build bridge first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    Item_Remove2(player, "main", "castrum:shovel_steel 27")
					Item_Remove2(player, "main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") and tonumber(bridge) > 10 then
                    Item_Remove2(player, "main", "castrum:shovel_bronze 54")
					Item_Remove2(player, "main", "castrum:bucket_water 60")
                    upgrade = true
                elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") then
                    txt = "upgrade bridge to lv.3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 11 and upgrade then
                    Moat_south(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "moats" , moats.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "walls" then
        for k, v in pairs(fields) do
            if v == "del" then
                Wall_south(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Walls.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "walls" , walls.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Walls.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 14 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 19 and upgrade then
                    Wall_south(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Walls.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "walls" , walls.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "fountain" then
        for k, v in pairs(fields) do
            if v == "del" then
                Fountain(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "fountain" , fountain.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local level = file:read("*l")
                file:close()

                file = io.open(minetest.get_worldpath().."/SAVE/Tower1.txt", "r")
	            local tower1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Tower2.txt", "r")
	            local tower2 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Tower3.txt", "r")
	            local tower3 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Tower4.txt", "r")
	            local tower4 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Walln.txt", "r")
	            local walln = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Walls.txt", "r")
	            local walls = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "r")
	            local walle = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Wallw.txt", "r")
	            local wallw = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Moate.txt", "r")
	            local moate = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "r")
	            local moats = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Moatn.txt", "r")
	            local moatn = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Moatw.txt", "r")
	            local moatw = file:read("*l")
                file:close()

                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 4 and inv:contains_item("main", "default:cobble 10") and tonumber(tower1) > 17 and tonumber(tower2) > 17 and tonumber(tower3) > 17 and tonumber(tower4) > 17 and tonumber(walle) > 13 and tonumber(wallw) > 13 and tonumber(walln) > 13 and tonumber(walls) > 13 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    upgrade = true
				elseif tonumber(level) < 4 and inv:contains_item("main", "default:cobble 10") then
                    txt = "build walls and towers first"
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 25") and inv:contains_item("main", "castrum:pick_stone 8") and tonumber(tower1) > 18 and tonumber(tower2) > 18 and tonumber(tower3) > 18 and tonumber(tower4) > 18 and tonumber(walle) > 14 and tonumber(wallw) > 14 and tonumber(walln) > 14 and tonumber(walls) > 14 and tonumber(moate) > 8 and tonumber(moatw) > 8 and tonumber(moats) > 8 and tonumber(moatn) > 8 then
                    Item_Remove2(player, "main", "default:cobble 25")
                    Item_Remove2(player, "main", "castrum:pick_stone 8")
                    upgrade = true
				elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 25") and inv:contains_item("main", "castrum:pick_stone 8") and tonumber(tower1) > 18 and tonumber(tower2) > 18 and tonumber(tower3) > 18 and tonumber(tower4) > 18 and tonumber(walle) > 14 and tonumber(wallw) > 14 and tonumber(walln) > 14 and tonumber(walls) > 14 then
                    txt = "upgrade moats to lv.1 first"
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 25") and inv:contains_item("main", "castrum:pick_stone 8") then
                    txt = "upgrade walls and towers to lv.2 first"
					
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 100") and inv:contains_item("main", "castrum:pick_stone 32") and tonumber(tower1) > 19 and tonumber(tower2) > 19 and tonumber(tower3) > 19 and tonumber(tower4) > 19 and tonumber(walle) > 15 and tonumber(wallw) > 15 and tonumber(walln) > 15 and tonumber(walls) > 15 then
                    Item_Remove2(player, "main", "default:cobble 100")
                    Item_Remove2(player, "main", "castrum:pick_stone 32")
                    upgrade = true
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 100") and inv:contains_item("main", "castrum:pick_stone 32") then
                    txt = "upgrade walls and towers to lv.3 first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 100") and inv:contains_item("main", "castrum:pick_steel 32") and tonumber(tower1) > 20 and tonumber(tower2) > 20 and tonumber(tower3) > 20 and tonumber(tower4) > 20 and tonumber(walle) > 16 and tonumber(wallw) > 16 and tonumber(walln) > 16 and tonumber(walls) > 16 and tonumber(moate) > 9 and tonumber(moatw) > 9 and tonumber(moats) > 9 and tonumber(moatn) > 9 then
                    Item_Remove2(player, "main", "default:desert_cobble 100")
                    Item_Remove2(player, "main", "castrum:pick_steel 32")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 100") and inv:contains_item("main", "castrum:pick_steel 32") and tonumber(tower1) > 20 and tonumber(tower2) > 20 and tonumber(tower3) > 20 and tonumber(tower4) > 20 and tonumber(walle) > 16 and tonumber(wallw) > 16 and tonumber(walln) > 16 and tonumber(walls) > 16 then
                    txt = "upgrade moats to lv.2 first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 100") and inv:contains_item("main", "castrum:pick_steel 32") then
                    txt = "upgrade walls and towers to lv.4 first"
				
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 400") and inv:contains_item("main", "castrum:pick_steel 64") and tonumber(tower1) > 21 and tonumber(tower2) > 21 and tonumber(tower3) > 21 and tonumber(tower4) > 21 and tonumber(walle) > 17 and tonumber(wallw) > 17 and tonumber(walln) > 17 and tonumber(walls) > 17 then
					Item_Remove(player,"default:desert_cobble",400)
                    Item_Remove2(player, "main", "castrum:pick_steel 64")
                    upgrade = true
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 400") and inv:contains_item("main", "castrum:pick_steel 64") then
                    txt = "upgrade walls and towers to lv.5 first"
				elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") and inv:contains_item("main", "castrum:pick_bronze 64") and tonumber(tower1) > 22 and tonumber(tower2) > 22 and tonumber(tower3) > 22 and tonumber(tower4) > 22 and tonumber(walle) > 18 and tonumber(wallw) > 18 and tonumber(walln) > 18 and tonumber(walls) > 18 and tonumber(moate) > 10 and tonumber(moatw) > 10 and tonumber(moats) > 10 and tonumber(moatn) > 10 then
                    Item_Remove2(player, "main", "default:desert_cobble 600")
                    Item_Remove2(player, "main", "castrum:pick_bronze 64")
                    upgrade = true
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") and inv:contains_item("main", "castrum:pick_bronze 64") and tonumber(tower1) > 22 and tonumber(tower2) > 22 and tonumber(tower3) > 22 and tonumber(tower4) > 22 and tonumber(walle) > 18 and tonumber(wallw) > 18 and tonumber(walln) > 18 and tonumber(walls) > 18 then
                    txt = "upgrade moats to lv.3 first"
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") and inv:contains_item("main", "castrum:pick_bronze 64") then
                    txt = "upgrade walls and towers to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 9 and upgrade then
                    Fountain(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "fountain" , fountain.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "tower1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Tower1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Tower1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "tower1" , tower1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Tower1.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 18 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 20 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 20 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 21 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 21 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 22 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 22 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 23 and upgrade then
                    Tower1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Tower1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "tower1" , tower1.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "walle" then
        for k, v in pairs(fields) do
            if v == "del" then
                Wall_east(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "walle" , walle.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 14 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 19 and upgrade then
                    Wall_east(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "walle" , walle.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "tower2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Tower2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Tower2.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "tower2" , tower2.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Tower2.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 18 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 20 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 20 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 21 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 21 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 22 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 22 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 23 and upgrade then
                    Tower2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Tower2.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "tower2" , tower2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "wallw" then
        for k, v in pairs(fields) do
            if v == "del" then
                Wall_west(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Wallw.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "wallw" , wallw.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Wallw.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 14 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 19 and upgrade then
                    Wall_west(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Wallw.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "wallw" , wallw.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "walln" then
        for k, v in pairs(fields) do
            if v == "del" then
                Wall_north(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Walln.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "walln" , walln.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Walln.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 14 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 19 and upgrade then
                    Wall_north(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Walln.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "walln" , walln.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "moate" then
        for k, v in pairs(fields) do
            if v == "del" then
                Moat_east(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Moate.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "moate" , moate.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Moate.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local bridge = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
				if tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") and tonumber(bridge) > 8 then
                    Item_Remove2(player, "main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    txt = "build bridge first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    Item_Remove2(player, "main", "castrum:shovel_steel 27")
					Item_Remove2(player, "main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") and tonumber(bridge) > 10 then
                    Item_Remove2(player, "main", "castrum:shovel_bronze 54")
					Item_Remove2(player, "main", "castrum:bucket_water 60")
                    upgrade = true
                elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") then
                    txt = "upgrade bridge to lv.3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 11 and upgrade then
                    Moat_east(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Moate.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "moate" , moate.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "tower3" then
        for k, v in pairs(fields) do
            if v == "del" then
                Tower3(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Tower3.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "tower3" , tower3.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Tower3.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 18 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 20 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 20 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 21 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 21 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 22 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 22 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 23 and upgrade then
                    Tower3(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Tower3.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "tower3" , tower3.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "moatn" then
        for k, v in pairs(fields) do
            if v == "del" then
                Moat_north(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Moatn.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "moatn" , moatn.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Moatn.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local bridge = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") and tonumber(bridge) > 8 then
                    Item_Remove2(player, "main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    txt = "build bridge first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    Item_Remove2(player, "main", "castrum:shovel_steel 27")
					Item_Remove2(player, "main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") and tonumber(bridge) > 10 then
                    Item_Remove2(player, "main", "castrum:shovel_bronze 54")
					Item_Remove2(player, "main", "castrum:bucket_water 60")
                    upgrade = true
                elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") then
                    txt = "upgrade bridge to lv.3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 11 and upgrade then
                    Moat_north(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Moatn.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "moatn" , moatn.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "moatw" then
        for k, v in pairs(fields) do
            if v == "del" then
                Moat_west(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Moatw.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "moatw" , moatw.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Moatw.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local bridge = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") and tonumber(bridge) > 8 then
                    Item_Remove2(player, "main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    txt = "build bridge first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    Item_Remove2(player, "main", "castrum:shovel_steel 27")
					Item_Remove2(player, "main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") and tonumber(bridge) > 10 then
                    Item_Remove2(player, "main", "castrum:shovel_bronze 54")
					Item_Remove2(player, "main", "castrum:bucket_water 60")
                    upgrade = true
                elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") then
                    txt = "upgrade bridge to lv.3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 11 and upgrade then
                    Moat_west(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Moatw.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "moatw" , moatw.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "tower4" then
        for k, v in pairs(fields) do
            if v == "del" then
                Tower4(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Tower4.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "tower4" , tower4.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Tower4.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 18 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 20 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 20 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 21 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 21 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 22 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 22 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 23 and upgrade then
                    Tower4(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Tower4.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "tower4" , tower4.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "smithy" then
        for k, v in pairs(fields) do
            if v == "del" then
                Smithy(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "smithy" , smithy.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 6") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 8")
                    Item_Remove2(player, "main", "default:wood 6")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 80") and inv:contains_item("main", "default:wood 60") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:cobble 80")
                    Item_Remove2(player, "main", "default:wood 60")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 80") and inv:contains_item("main", "default:junglewood 60") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 80")
                    Item_Remove2(player, "main", "default:junglewood 60")
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 6") then
                    txt = "build fountain first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 80") and inv:contains_item("main", "default:wood 60") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 80") and inv:contains_item("main", "default:junglewood 60") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Smithy(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "smithy" , smithy.get_formspec(player))
            elseif v == "Crafting" then
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "stable" then
        for k, v in pairs(fields) do
            if v == "del" then
                Stable(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:wood 100") and inv:contains_item("main", "castrum:bucket_river_water 25") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:wood 100")
                    Item_Remove2(player, "main", "castrum:bucket_river_water 25")
                    upgrade = true
                elseif tonumber(level) < 7 and inv:contains_item("main", "default:wood 100") and inv:contains_item("main", "castrum:bucket_river_water 25") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:junglewood 400") and inv:contains_item("main", "castrum:bucket_river_water 100") and tonumber(fountain) > 8 then
                    Item_Remove2(player, "main", "default:junglewood 400")
                    Item_Remove2(player, "main", "castrum:bucket_river_water 100")
                    upgrade = true
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:junglewood 400") and inv:contains_item("main", "castrum:bucket_river_water 100") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Stable(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
            elseif v == "Get Horse" then
                minetest.show_formspec(player:get_player_name(), "horse" , horse.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "horse" then
        for k, v in pairs(fields) do
            if v == "Get Horse" then
                file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	            local stable = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Horse_1.txt", "r")
	            local horse_1 = file:read("*l")
                file:close()
                if tonumber(horse_1) < (stable-6) then
                    if player:get_attribute("4need1string") then
                        if player:get_inventory():contains_item("main", player:get_attribute("4need1string")) and player:get_inventory():contains_item("main", player:get_attribute("4need2string")) then
                            player:get_inventory():remove_item("main", player:get_attribute("4need1string"))
                            player:get_inventory():remove_item("main", player:get_attribute("4need2string"))
                            Add_horse(player,player:get_attribute("horselv"),true)
                        else
                            minetest.chat_send_player(player:get_player_name(), "not enough items")
                        end
                    else
                        minetest.chat_send_player(player:get_player_name(), "select horse first")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "you can only have "..(stable-6).." horse")
                end
                minetest.show_formspec(player:get_player_name(), "horse" , horse.get_formspec(player))
            elseif v == "Horse\nlv.1" then
                player:set_attribute("4item", "Horse lv.1")
                player:set_attribute("4need1", "7 Souls")
                player:set_attribute("4need2", "15 River Water Buckets")
                player:set_attribute("4need1string", "castrum:soul 7")
                player:set_attribute("4need2string", "castrum:bucket_river_water 15")
                player:set_attribute("horselv", "1")
                minetest.show_formspec(player:get_player_name(), "horse" , horse.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
            end
        end
	end
    if formname == "mine" then
        for k, v in pairs(fields) do
            if v == "del" then
                Mine(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Mine.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "mine" , mine.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Mine.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(fountain) > 5 then
                    upgrade = true
                elseif tonumber(level) < 1 then
                    txt = "upgrade fountain to lv.3 first"
                elseif tonumber(level) == 1 and tonumber(chapter) > 2 then
                    upgrade = true
                elseif tonumber(level) == 2 and tonumber(chapter) > 3 then
                    upgrade = true
				elseif tonumber(level) == 3 and tonumber(chapter) > 4 then
                    upgrade = true
				elseif tonumber(level) == 4 and tonumber(chapter) > 5 then
                    upgrade = true
				elseif tonumber(level) == 5 and tonumber(chapter) > 6 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 2 first"
                elseif tonumber(level) == 2 then
                    txt = "complete chapter 3 first"
				elseif tonumber(level) == 3 then
                    txt = "complete chapter 4 first"
				elseif tonumber(level) == 4 then
                    txt = "complete chapter 5 first"
				elseif tonumber(level) == 5 then
                    txt = "complete chapter 6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Mine(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Mine.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "mine" , mine.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "quarry" then
        for k, v in pairs(fields) do
            if v == "del" then
                Quarry(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "quarry" , quarry.get_formspec(player))
            elseif v == "Upgrade" then
                file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local txt = "not enough items"
                local inv = player:get_inventory()
                local upgrade = false
                if tonumber(level) == 0 and tonumber(chapter) > 1 then
                    upgrade = true
                elseif tonumber(level) == 1 and tonumber(chapter) > 2 then
                    upgrade = true
				elseif tonumber(level) == 2 and tonumber(chapter) > 3 then
                    upgrade = true
				elseif tonumber(level) == 3 and tonumber(chapter) > 4 then
                    upgrade = true
				elseif tonumber(level) == 4 and tonumber(chapter) > 5 then
                    upgrade = true
				elseif tonumber(level) == 5 and tonumber(chapter) > 6 then
                    upgrade = true
                elseif tonumber(level) == 0 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 2 first"
				elseif tonumber(level) == 2 then
                    txt = "complete chapter 3 first"
				elseif tonumber(level) == 3 then
                    txt = "complete chapter 4 first"
				elseif tonumber(level) == 4 then
                    txt = "complete chapter 5 first"
				elseif tonumber(level) == 5 then
                    txt = "complete chapter 6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Quarry(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "quarry" , quarry.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "tree" then
        for k, v in pairs(fields) do
            if v == "del" then
                Tree(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Tree.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "tree" , tree.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Tree.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(fountain) > 3 then
                    upgrade = true
                elseif tonumber(level) < 1 then
                    txt = "upgrade fountain to lv.1 first"
                elseif tonumber(level) == 1 and tonumber(chapter) > 1 then
                    upgrade = true
                elseif tonumber(level) == 2 and tonumber(chapter) > 2 then
                    upgrade = true
				elseif tonumber(level) == 3 and tonumber(chapter) > 3 then
                    upgrade = true
				elseif tonumber(level) == 4 and tonumber(chapter) > 4 then
                    upgrade = true
				elseif tonumber(level) == 5 and tonumber(chapter) > 5 then
                    upgrade = true
				elseif tonumber(level) == 6 and tonumber(chapter) > 6 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 2 then
                    txt = "complete chapter 2 first"
				elseif tonumber(level) == 3 then
                    txt = "complete chapter 3 first"
				elseif tonumber(level) == 4 then
                    txt = "complete chapter 4 first"
				elseif tonumber(level) == 5 then
                    txt = "complete chapter 5 first"
				elseif tonumber(level) == 6 then
                    txt = "complete chapter 6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
                    Tree(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Tree.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "tree" , tree.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "pier" then
        for k, v in pairs(fields) do
            if v == "del" then
                Pier(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "pier" , pier.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 5 and inv:contains_item("main", "default:wood 5") then
                    Item_Remove2(player, "main", "default:wood 5")
                    upgrade = true
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:junglewood 25") then
                    Item_Remove2(player, "main", "default:junglewood 25")
                    upgrade = true
				elseif tonumber(level) == 6 and inv:contains_item("main", "default:pine_wood 100") then
                    Item_Remove2(player, "main", "default:pine_wood 100")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
                    Pier(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "pier" , pier.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "ship1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Ship1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "ship1" , ship1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 5 and inv:contains_item("main", "default:wood 10") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 5 and inv:contains_item("main", "default:wood 10") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:junglewood 50") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:junglewood 50")
                    upgrade = true
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:junglewood 50") then
                    txt = "upgrade fountain to lv.4 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Ship1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "ship1" , ship1.get_formspec(player))
            elseif v == "Go to Island" then
                player:setpos({x=124, y=8.5, z=44})
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Go to Mountain" then
                player:setpos({x=312, y=8.5, z=44})
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "craft" then
        for k, v in pairs(fields) do
            if v == "Craft" then
                if player:get_attribute("need1string") then
                    if player:get_inventory():contains_item("main", player:get_attribute("need1string")) and player:get_inventory():contains_item("main", player:get_attribute("need2string")) and player:get_inventory():contains_item("main", player:get_attribute("need3string")) then
                        player:get_inventory():remove_item("main", player:get_attribute("need1string"))
                        player:get_inventory():remove_item("main", player:get_attribute("need2string"))
						player:get_inventory():remove_item("main", player:get_attribute("need3string"))
                        player:get_inventory():add_item("main", player:get_attribute("itemstring"))
                    else
                        minetest.chat_send_player(player:get_player_name(), "not enough items")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "select item first")
                end
            elseif v == "Soul" then
                player:set_attribute("item", "Soul")
                player:set_attribute("need1", "25 Cobblestone")
                player:set_attribute("need2", "15 Wooden Planks")
                player:set_attribute("need1string", "default:cobble 25")
                player:set_attribute("need2string", "default:wood 15")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:soul")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nIngot" then
                player:set_attribute("item", "Steel Ingot")
                player:set_attribute("need1", "2 Coal Lump")
                player:set_attribute("need2", "1 Iron Lump")
                player:set_attribute("need1string", "default:coal_lump 2")
                player:set_attribute("need2string", "default:iron_lump")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "default:steel_ingot")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
			elseif v == "Bronze\nIngot" then
                player:set_attribute("item", "Bronze Ingot")
                player:set_attribute("need1", "2 Coal Lump")
                player:set_attribute("need2", "1 Copper Lump")
				player:set_attribute("need3", "1 Tin Lump")
                player:set_attribute("need1string", "default:coal_lump 2")
                player:set_attribute("need2string", "default:copper_lump")
				player:set_attribute("need3string", "default:tin_lump")
                player:set_attribute("itemstring", "default:bronze_ingot")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nShovel" then
                player:set_attribute("item", "Stone Shovel")
                player:set_attribute("need1", "1 Cobblestone")
                player:set_attribute("need2", "2 Wooden Planks")
                player:set_attribute("need1string", "default:cobble")
                player:set_attribute("need2string", "default:wood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:shovel_stone")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nPickaxe" then
                player:set_attribute("item", "Stone Pickaxe")
                player:set_attribute("need1", "3 Cobblestone")
                player:set_attribute("need2", "2 Wooden Planks")
                player:set_attribute("need1string", "default:cobble 3")
                player:set_attribute("need2string", "default:wood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:pick_stone")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nSword" then
                player:set_attribute("item", "Stone Sword")
                player:set_attribute("need1", "2 Cobblestone")
                player:set_attribute("need2", "1 Wooden Planks")
                player:set_attribute("need1string", "default:cobble 2")
                player:set_attribute("need2string", "default:wood")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:sword_stone")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nShovel" then
                player:set_attribute("item", "Steel Shovel")
                player:set_attribute("need1", "1 Steel Ingot")
                player:set_attribute("need2", "2 Jungle Wooden Planks")
                player:set_attribute("need1string", "default:steel_ingot")
                player:set_attribute("need2string", "default:junglewood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:shovel_steel")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nPickaxe" then
                player:set_attribute("item", "Steel Pickaxe")
                player:set_attribute("need1", "3 Steel Ingot")
                player:set_attribute("need2", "2 Jungle Wooden Planks")
                player:set_attribute("need1string", "default:steel_ingot 3")
                player:set_attribute("need2string", "default:junglewood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:pick_steel")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nSword" then
                player:set_attribute("item", "Steel Sword")
                player:set_attribute("need1", "2 Steel Ingot")
                player:set_attribute("need2", "1 Jungle Wooden Planks")
                player:set_attribute("need1string", "default:steel_ingot 2")
                player:set_attribute("need2string", "default:junglewood")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:sword_steel")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
			elseif v == "Bronze\nShovel" then
                player:set_attribute("item", "Bronze Shovel")
                player:set_attribute("need1", "1 Bronze Ingot")
                player:set_attribute("need2", "2 Pine Wooden Planks")
                player:set_attribute("need1string", "default:bronze_ingot")
                player:set_attribute("need2string", "default:pine_wood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:shovel_bronze")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Bronze\nPickaxe" then
                player:set_attribute("item", "Bronze Pickaxe")
                player:set_attribute("need1", "3 Bronze Ingot")
                player:set_attribute("need2", "2 Pine Wooden Planks")
                player:set_attribute("need1string", "default:bronze_ingot 3")
                player:set_attribute("need2string", "default:pine_wood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:pick_bronze")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Bronze\nSword" then
                player:set_attribute("item", "Bronze Sword")
                player:set_attribute("need1", "2 Bronze Ingot")
                player:set_attribute("need2", "1 Pine Wooden Planks")
                player:set_attribute("need1string", "default:bronze_ingot 2")
                player:set_attribute("need2string", "default:pine_wood")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "")
                player:set_attribute("itemstring", "castrum:sword_bronze")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "smithy" , smithy.get_formspec(player))
            end
        end
	end
    if formname == "new" then
        minetest.show_formspec(player:get_player_name(), "", "")
    end
    if formname == "lake" then
        for k, v in pairs(fields) do
            if v == "del" then
                Lake(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Lake.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "lake" , lake.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Lake.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(fountain) > 4 then
                    upgrade = true
                elseif tonumber(level) < 1 then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 1 and tonumber(chapter) > 1 then
                    upgrade = true
                elseif tonumber(level) == 2 and tonumber(chapter) > 2 then
                    upgrade = true
				elseif tonumber(level) == 3 and tonumber(chapter) > 3 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 2 then
                    txt = "complete chapter 2 first"
				elseif tonumber(level) == 3 then
                    txt = "complete chapter 3 first"
                end

                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 4 and upgrade then
                    Lake(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Lake.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "lake" , lake.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "barracks" then
        for k, v in pairs(fields) do
            if v == "del" then
                Barracks(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "barracks" , barracks.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:wood 20") and inv:contains_item("main", "default:cobble 20") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:wood 20")
                    Item_Remove2(player, "main", "default:cobble 20")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:wood 200") and inv:contains_item("main", "default:cobble 200") and inv:contains_item("main", "castrum:bucket_water 50") and tonumber(fountain) > 5 then
                    Item_Remove(player,"default:wood",200)
					Item_Remove(player,"default:cobble",200)
                    Item_Remove2(player, "main", "castrum:bucket_water 50")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:junglewood 400") and inv:contains_item("main", "default:desert_cobble 400") and inv:contains_item("main", "castrum:bucket_river_water 50") and tonumber(fountain) > 7 then
					Item_Remove(player,"default:junglewood",400)
					Item_Remove(player,"default:desert_cobble",400)
                    Item_Remove2(player, "main", "castrum:bucket_river_water 50")
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:wood 20") and inv:contains_item("main", "default:cobble 20") then
                    txt = "build fountain first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:wood 200") and inv:contains_item("main", "default:cobble 200") and inv:contains_item("main", "castrum:bucket_water 50") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:junglewood 400") and inv:contains_item("main", "default:desert_cobble 400") and inv:contains_item("main", "castrum:bucket_river_water 50") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Barracks(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "barracks" , barracks.get_formspec(player))
            elseif v == "Get Knights" then
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "camp1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Camp1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "camp1" , camp1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	            local home1 = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(home1) > 5 then
                    upgrade = true
                elseif tonumber(level) < 1 then
                    txt = "build home 1 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Camp1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "camp1" , camp1.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "camp2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Camp2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "camp2" , camp2.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "r")
	            local home2 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	            local camp1 = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(home2) > 5 and tonumber(camp1) > 0 then
                    upgrade = true
                elseif tonumber(level) < 1 and tonumber(home2) > 5 then
                    txt = "build camp 1 first"
                elseif tonumber(level) < 1 then
                    txt = "build home 2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Camp2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "camp2" , camp2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "camp3" then
        for k, v in pairs(fields) do
            if v == "del" then
                Camp3(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "camp3" , camp3.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "r")
	            local home3 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	            local camp2 = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(home3) > 5 and tonumber(camp2) > 0 then
                    upgrade = true
                elseif tonumber(level) < 1 and tonumber(home3) > 5 then
                    txt = "build camp 2 first"
                elseif tonumber(level) < 1 then
                    txt = "build home 3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Camp3(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "camp3" , camp3.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "knight" then
        for k, v in pairs(fields) do
            if v == "Get Knight" then
                max = 0
                max1 = 0
                max2 = 0
                file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	            local home1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "r")
	            local home2 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "r")
	            local home3 = file:read("*l")
                file:close()
                if tonumber(home1) == 6 then
                    max1 = max1+8
                elseif tonumber(home1) == 7 then
                    max1 = max1+11
				elseif tonumber(home1) == 8 then
                    max1 = max1+14
				elseif tonumber(home1) == 9 then
                    max1 = max1+17
                end
                if tonumber(home2) == 6 then
                    max1 = max1+8
                elseif tonumber(home2) == 7 then
                    max1 = max1+11
				elseif tonumber(home2) == 8 then
                    max1 = max1+14
                end
				if tonumber(home3) == 6 then
                    max1 = max1+8
                elseif tonumber(home3) == 7 then
                    max1 = max1+11
                end
                file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	            local camp1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	            local camp2 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	            local camp3 = file:read("*l")
                file:close()
                if tonumber(camp1) == 1 then
                    max2 = max2+20
                end
                if tonumber(camp2) == 1 then
                    max2 = max2+20
                end
				if tonumber(camp3) == 1 then
                    max2 = max2+20
                end
                if max1 > max2 then
                    max = max2
                elseif max2 > max1 then
                    max = max1
                else
                    max = max1
                end
                file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	            local knight_1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Knight_2.txt", "r")
	            local knight_2 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Knight_3.txt", "r")
	            local knight_3 = file:read("*l")
                file:close()
                if (tonumber(knight_1)+tonumber(knight_2)+tonumber(knight_3)) < max then
                    if player:get_attribute("2need1string") then
                        if player:get_inventory():contains_item("main", player:get_attribute("2need1string")) then
                            player:get_inventory():remove_item("main", player:get_attribute("2need1string"))
                            Add_knight(player,player:get_attribute("knightlv"),true)
                        else
                            minetest.chat_send_player(player:get_player_name(), "not enough items")
                        end
                    else
                        minetest.chat_send_player(player:get_player_name(), "select knight first")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "you can only have "..max.." knights")
                end
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
            elseif v == "Knight\nlv.1" then
                player:set_attribute("2item", "Knight lv.1")
                player:set_attribute("2need1", "1 Soul")
                player:set_attribute("2need2", "")
                player:set_attribute("2need1string", "castrum:soul")
                player:set_attribute("2need2string", "")
                player:set_attribute("knightlv", "1")
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
            elseif v == "Knight\nlv.2" then
                player:set_attribute("2item", "Knight lv.2")
                player:set_attribute("2need1", "4 Soul")
                player:set_attribute("2need2", "")
                player:set_attribute("2need1string", "castrum:soul 4")
                player:set_attribute("2need2string", "")
                player:set_attribute("knightlv", "2")
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
			elseif v == "Knight\nlv.3" then
                player:set_attribute("2item", "Knight lv.3")
                player:set_attribute("2need1", "8 Soul")
                player:set_attribute("2need2", "")
                player:set_attribute("2need1string", "castrum:soul 8")
                player:set_attribute("2need2string", "")
                player:set_attribute("knightlv", "3")
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "barracks" , barracks.get_formspec(player))
            end
        end
	end
    if formname == "battleground" then
        for k, v in pairs(fields) do
            if v == "del" then
                Battleground(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "battleground" , battleground.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 4 and tonumber(fountain) > 3 and inv:contains_item("main", "default:cobble 4") then
                    upgrade = true
                    Item_Remove2(player, "main", "default:cobble 4")
                elseif tonumber(level) < 4 and inv:contains_item("main", "default:cobble 4") then
                    txt = "build fountain first"
                elseif tonumber(level) == 4 and tonumber(fountain) > 4 and inv:contains_item("main", "default:cobble 40") and tonumber(chapter) > 1 then
                    upgrade = true
                    Item_Remove2(player, "main", "default:cobble 40")
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 40") and tonumber(fountain) > 4 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 40") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 5 and tonumber(fountain) > 5 and inv:contains_item("main", "default:cobble 200") and tonumber(chapter) > 2 then
                    upgrade = true
                    Item_Remove(player,"default:cobble",200)
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 200") and tonumber(fountain) > 5 then
                    txt = "complete chapter 2 first"
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 200") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 6 and tonumber(fountain) > 6 and inv:contains_item("main", "default:desert_cobble 200") and tonumber(chapter) > 3 then
                    upgrade = true
                    Item_Remove(player,"default:desert_cobble",200)
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 200") and tonumber(fountain) > 6 then
                    txt = "complete chapter 3 first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 200") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 7 and tonumber(fountain) > 7 and inv:contains_item("main", "default:desert_cobble 400") and tonumber(chapter) > 4 then
                    upgrade = true
					Item_Remove(player,"default:desert_cobble",400)
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 400") and tonumber(fountain) > 7 then
                    txt = "complete chapter 4 first"
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 400") then
                    txt = "upgrade fountain to lv.5 first"
				elseif tonumber(level) == 8 and tonumber(fountain) > 8 and inv:contains_item("main", "default:desert_cobble 600") and tonumber(chapter) > 5 then
                    upgrade = true
					Item_Remove(player,"default:desert_cobble",600)
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") and tonumber(fountain) > 8 then
                    txt = "complete chapter 5 first"
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 9 and upgrade then
                    Battleground(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "battleground" , battleground.get_formspec(player))
            elseif v == "Start Chapter 1" then
			
                get_fight(1,player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "Start Chapter 2" then
                get_fight(2,player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "Start Chapter 3" then
                get_fight(3,player)
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Start Chapter 4" then
                get_fight(4,player)
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Start Chapter 5" then
                get_fight(5,player)
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Start Chapter 6" then
                get_fight(6,player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "island_battleground" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Battleground(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_battleground" , island_battleground.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 4 and tonumber(fountain) > 3 and inv:contains_item("main", "default:sand 400") then
                    upgrade = true
                    Item_Remove2(player, "main", "default:sand 400")
                elseif tonumber(level) < 4 and inv:contains_item("main", "default:sand 400") then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 4 and upgrade then
                    Island_Battleground(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_battleground" , island_battleground.get_formspec(player))
            elseif v == "Start Island Chapter 1" then
                set_sea_fight(1,player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "island_walle" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Walle(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_walle" , island_walle.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:sand 3") then
                    Item_Remove2(player, "main", "default:sand 3")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_sand 21") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:desert_sand 21")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_sand 21")  then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Island_Walle(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_walle" , island_walle.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "island_wallw" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Wallw(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_wallw" , island_wallw.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:sand 3") then
                    Item_Remove2(player, "main", "default:sand 3")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_sand 21") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:desert_sand 21")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_sand 21")  then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Island_Wallw(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_wallw" , island_wallw.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "island_walls" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Walls(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_walls" , island_walls.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:sand 3") then
                    Item_Remove2(player, "main", "default:sand 3")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_sand 21") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:desert_sand 21")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_sand 21")  then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Island_Walls(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_walls" , island_walls.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "island_walln" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Walln(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_walln" , island_walln.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:sand 3") then
                    Item_Remove2(player, "main", "default:sand 3")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_sand 21") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:desert_sand 21")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_sand 21")  then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Island_Walln(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_walln" , island_walln.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "island_fountain" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Fountain(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_fountain" , island_fountain.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "r")
	            local island_walln = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "r")
	            local island_walls = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "r")
	            local island_wallw = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "r")
	            local island_walle = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
				if tonumber(level) < 4 and inv:contains_item("main", "default:sand 10") and tonumber(island_walle) > 6 and tonumber(island_wallw) > 6 and tonumber(island_walln) > 6 and tonumber(island_walls) > 6 then
                    Item_Remove2(player, "main", "default:sand 10")
                    upgrade = true
				elseif tonumber(level) < 4 and inv:contains_item("main", "default:sand 10") then
                    txt = "build island walls first"
				elseif tonumber(level) == 4 and inv:contains_item("main", "default:desert_sand 100") and tonumber(island_walle) > 7 and tonumber(island_wallw) > 7 and tonumber(island_walln) > 7 and tonumber(island_walls) > 7 then
                    Item_Remove2(player, "main", "default:desert_sand 100")
                    upgrade = true
				elseif tonumber(level) == 4 and inv:contains_item("main", "default:desert_sand 100") then
                    txt = "upgrade island walls to lv.2 first"
				end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 5 and upgrade then
                    Island_Fountain(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_fountain" , island_fountain.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "sandmine" then
        for k, v in pairs(fields) do
            if v == "del" then
                Sandmine(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Sandmine.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "sandmine" , sandmine.get_formspec(player))
            elseif v == "Upgrade" then
                file = io.open(minetest.get_worldpath().."/SAVE/Sandmine.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()

                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local txt = "not enough items"
                local inv = player:get_inventory()
                local upgrade = false
                if tonumber(level) == 0 and tonumber(chapter) > 3 then
                    upgrade = true
                elseif tonumber(level) == 0 then
                    txt = "complete chapter 3 first"
                elseif tonumber(level) == 1 and tonumber(chapter) > 4 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 4 first"
				elseif tonumber(level) == 2 and tonumber(chapter) > 5 then
                    upgrade = true
                elseif tonumber(level) == 2 then
                    txt = "complete chapter 5 first"
				elseif tonumber(level) == 3 and tonumber(chapter) > 6 then
                    upgrade = true
                elseif tonumber(level) == 3 then
                    txt = "complete chapter 6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 4 and upgrade then
                    Sandmine(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Sandmine.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "sandmine" , sandmine.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "island_ship1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Ship1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_ship1" , island_ship1.get_formspec(player))
			elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 5 and inv:contains_item("main", "default:wood 10") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 5 and inv:contains_item("main", "default:wood 10") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:junglewood 50") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:junglewood 50")
                    upgrade = true
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:junglewood 50") then
                    txt = "upgrade fountain to lv.4 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Ship1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_ship1" , island_ship1.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "Go Back" then
                player:setpos({x=-7, y=8.5, z=-58})
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
    end
    if formname == "lake2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Lake2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Lake2.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "lake2" , lake2.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Lake2.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(fountain) > 6 then
                    upgrade = true
                elseif tonumber(level) < 1 then
                    txt = "upgrade fountain to lv.4 first"
                elseif tonumber(level) == 1 and tonumber(chapter) > 3 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 3 first"
				elseif tonumber(level) == 2 and tonumber(chapter) > 4 then
                    upgrade = true
                elseif tonumber(level) == 2 then
                    txt = "complete chapter 4 first"
				elseif tonumber(level) == 3 and tonumber(chapter) > 5 then
                    upgrade = true
                elseif tonumber(level) == 3 then
                    txt = "complete chapter 5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 4 and upgrade then
                    Lake2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Lake2.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "lake2" , lake2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "island_smithy" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Smithy(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:sand 80") and inv:contains_item("main", "default:wood 60") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:sand 80")
                    Item_Remove2(player, "main", "default:wood 60")
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:sand 80") and inv:contains_item("main", "default:wood 60") then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Island_Smithy(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
            elseif v == "Crafting" then
                minetest.show_formspec(player:get_player_name(), "craft2" , craft2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "cactusfarm" then
        for k, v in pairs(fields) do
            if v == "del" then
                Cactusfarm(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Cactusfarm.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "cactusfarm" , cactusfarm.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Cactusfarm.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(fountain) > 3 then
                    upgrade = true
                elseif tonumber(level) < 1 then
                    txt = "build island fountain first"
                elseif tonumber(level) == 1 and tonumber(chapter) > 3 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 3 first"
				elseif tonumber(level) == 2 and tonumber(chapter) > 4 then
                    upgrade = true
                elseif tonumber(level) == 2 then
                    txt = "complete chapter 4 first"
				elseif tonumber(level) == 3 and tonumber(chapter) > 5 then
                    upgrade = true
                elseif tonumber(level) == 3 then
                    txt = "complete chapter 5 first"
				elseif tonumber(level) == 4 and tonumber(chapter) > 6 then
                    upgrade = true
                elseif tonumber(level) == 4 then
                    txt = "complete chapter 6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 5 and upgrade then
                    Cactusfarm(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Cactusfarm.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "cactusfarm" , cactusfarm.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "craft2" then
        for k, v in pairs(fields) do
            if v == "Craft" then
                if player:get_attribute("3need1string") then
                    if player:get_inventory():contains_item("main", player:get_attribute("3need1string")) and player:get_inventory():contains_item("main", player:get_attribute("3need2string")) and player:get_inventory():contains_item("main", player:get_attribute("3need3string")) then
                        player:get_inventory():remove_item("main", player:get_attribute("3need1string"))
                        player:get_inventory():remove_item("main", player:get_attribute("3need2string"))
                        player:get_inventory():remove_item("main", player:get_attribute("3need3string"))
                        player:get_inventory():add_item("main", player:get_attribute("3itemstring"))
                    else
                        minetest.chat_send_player(player:get_player_name(), "not enough items")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "select item first")
                end
            elseif v == "Glass" then
                player:set_attribute("3item", "Glass")
                player:set_attribute("3need1", "25 Sand")
                player:set_attribute("3need2", "10 River Water Bucket")
                player:set_attribute("3need3", "5 Coal Lump")
                player:set_attribute("3need1string", "default:sand 25")
                player:set_attribute("3need2string", "castrum:bucket_river_water 10")
                player:set_attribute("3need3string", "default:coal_lump 5")
                player:set_attribute("3itemstring", "default:glass")
                minetest.show_formspec(player:get_player_name(), "craft2" , craft2.get_formspec(player))
			elseif v == "Pirat Soul" then
                player:set_attribute("3item", "Pirat Soul")
                player:set_attribute("3need1", "25 Sand")
                player:set_attribute("3need2", "15 Cactus")
                player:set_attribute("3need3", "")
                player:set_attribute("3need1string", "default:sand 25")
                player:set_attribute("3need2string", "default:cactus 15")
                player:set_attribute("3need3string", "")
                player:set_attribute("3itemstring", "castrum:pirate_soul")
                minetest.show_formspec(player:get_player_name(), "craft2" , craft2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
            end
        end
	end
	if formname == "mountain_quarry" then
        for k, v in pairs(fields) do
			if v == "del" then
                Mountain_Quarry(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "mountain_quarry" , mountain_quarry.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(chapter) > 5 then
                    upgrade = true
                elseif tonumber(level) < 1 then
                    txt = "complete chapter 5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Mountain_Quarry(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "mountain_quarry" , mountain_quarry.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
            if v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "mountain_fountain" then
        for k, v in pairs(fields) do
            if v == "del" then
                Mountain_Fountain(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "mountain_fountain" , mountain_fountain.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 3 and inv:contains_item("main", "default:mossycobble 50") then
                    Item_Remove2(player, "main", "default:mossycobble 50")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 3 and upgrade then
                    Mountain_Fountain(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "mountain_fountain" , mountain_fountain.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "farm" then
        for k, v in pairs(fields) do
            if v == "del" then
                Farm(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Farm.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "farm" , farm.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Farm.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 1 and tonumber(fountain) > 2 then
                    upgrade = true
                elseif tonumber(level) < 1 then
                    txt = "build mountain fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Farm(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Farm.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "farm" , farm.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "island_home1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Home1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_home1" , island_home1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 5 and inv:contains_item("main", "default:sand 80") and inv:contains_item("main", "default:glass 10") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:sand 80")
					Item_Remove2(player, "main", "default:glass 10")
                    upgrade = true
				elseif tonumber(level) < 5 and inv:contains_item("main", "default:sand 80") and inv:contains_item("main", "default:glass 10") then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 5 and upgrade then
                    Island_Home1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_home1" , island_home1.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "home3" then
        for k, v in pairs(fields) do
            if v == "del" then
                Home3(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "home3" , home3.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") and tonumber(fountain) > 7 then
                    Item_Remove2(player, "main", "default:cobble 8")
                    Item_Remove2(player, "main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") then
                    txt = "upgrade fountain to lv.5 first"
				elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") and tonumber(fountain) > 8 then
                    Item_Remove2(player, "main", "default:junglewood 80")
                    Item_Remove2(player, "main", "default:cobble 64")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
                    Home3(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "home3" , home3.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "island_pier" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Pier(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_pier" , island_pier.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:wood 100") then
                    Item_Remove2(player, "main", "default:wood 100")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
                    Island_Pier(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_pier" , island_pier.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "island_pier2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Pier2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier2.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_pier2" , island_pier2.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier2.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 3 and inv:contains_item("main", "default:wood 100") then
                    Item_Remove2(player, "main", "default:wood 100")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 3 and upgrade then
                    Island_Pier2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier2.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_pier2" , island_pier2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "island_barracks" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Barracks(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_barracks" , island_barracks.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:sand 200") and inv:contains_item("main", "default:cactus 80") and tonumber(fountain) > 4 then
					Item_Remove(player,"default:sand",200)
                    Item_Remove2(player, "main", "default:cactus 80")
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:sand 200") and inv:contains_item("main", "default:cactus 80") then
                    txt = "upgrade island fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Island_Barracks(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_barracks" , island_barracks.get_formspec(player))
            elseif v == "Get Pirates" then
                minetest.show_formspec(player:get_player_name(), "pirates" , pirates.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "pirates" then
        for k, v in pairs(fields) do
            if v == "Get Pirate" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "r")
	            local home_1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
	            local pirate_1 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	            local level = file:read("*l")
                file:close()
				local num = 0
				if home_1+0 == 5 then
					num = num+1
				end
				if level+0 == 6 then
					num = num+1
				end
                if tonumber(pirate_1) < num then
                    if player:get_attribute("5need1string") then
                        if player:get_inventory():contains_item("main", player:get_attribute("5need1string")) then
                            player:get_inventory():remove_item("main", player:get_attribute("5need1string"))
                            Add_pirate(player,player:get_attribute("piratelv"),true)
                        else
                            minetest.chat_send_player(player:get_player_name(), "not enough items")
                        end
                    else
                        minetest.chat_send_player(player:get_player_name(), "select pirate first")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "you can only have "..num.." pirates")
                end
                minetest.show_formspec(player:get_player_name(), "pirates" , pirates.get_formspec(player))
            elseif v == "Pirate\nlv.1" then
                player:set_attribute("5item", "Pirate lv.1")
                player:set_attribute("5need1", "5 Pirate Souls")
                player:set_attribute("5need1string", "castrum:pirate_soul 5")
                player:set_attribute("piratelv", "1")
                minetest.show_formspec(player:get_player_name(), "pirates" , pirates.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "island_barracks" , island_barracks.get_formspec(player))
            end
        end
	end
	if formname == "ship2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Ship2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Ship2.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "ship2" , ship2.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Ship2.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 14 and inv:contains_item("main", "default:wood 80") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:wood 80")
                    upgrade = true
                elseif tonumber(level) < 14 and inv:contains_item("main", "default:wood 80") then
                    txt = "upgrade island fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 14 and upgrade then
                    Ship2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Ship2.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "ship2" , ship2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "mountain_smithy" then
        for k, v in pairs(fields) do
            if v == "del" then
                Mountain_Smithy(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "mountain_smithy" , mountain_smithy.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:mossycobble 400") and inv:contains_item("main", "default:wood 300") and tonumber(fountain) > 2 then
                    Item_Remove(player,"default:mossycobble",400)
					Item_Remove(player,"default:wood",300)
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:mossycobble 400") and inv:contains_item("main", "default:wood 300") then
                    txt = "build mountain fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Mountain_Smithy(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "mountain_smithy" , mountain_smithy.get_formspec(player))
            elseif v == "Crafting" then
                minetest.show_formspec(player:get_player_name(), "craft3" , craft3.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "craft3" then
        for k, v in pairs(fields) do
            if v == "Craft" then
                if player:get_attribute("6need1string") then
                    if player:get_inventory():contains_item("main", player:get_attribute("6need1string")) and player:get_inventory():contains_item("main", player:get_attribute("6need2string")) then
                        player:get_inventory():remove_item("main", player:get_attribute("6need1string"))
                        player:get_inventory():remove_item("main", player:get_attribute("6need2string"))
                        player:get_inventory():add_item("main", player:get_attribute("6itemstring"))
                    else
                        minetest.chat_send_player(player:get_player_name(), "not enough items")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "select item first")
                end
            elseif v == "White\nWool" then
                player:set_attribute("6item", "White Wool")
                player:set_attribute("6need1", "10 Cotton")
                player:set_attribute("6need2", "10 Steel Ingot")
                player:set_attribute("6need1string", "farming:cotton 10")
                player:set_attribute("6need2string", "default:steel_ingot 10")
                player:set_attribute("6itemstring", "wool:white")
                minetest.show_formspec(player:get_player_name(), "craft3" , craft3.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
            end
        end
	end
	if formname == "sail1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Sail1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "sail1" , sail1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 1 and inv:contains_item("main", "wool:white 9") then
                    Item_Remove2(player, "main", "wool:white 9")
					upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Sail1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "sail1" , sail1.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "sail2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Sail2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "sail2" , sail2.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 1 and inv:contains_item("main", "wool:white 4") then
                    Item_Remove2(player, "main", "wool:white 4")
					upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Sail2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "sail2" , sail2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "cannon1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Cannon1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "cannon1" , cannon1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 1 and inv:contains_item("main", "default:steel_ingot 25") then
                    Item_Remove2(player, "main", "default:steel_ingot 25")
					upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Cannon1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "cannon1" , cannon1.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "cannon2" then
        for k, v in pairs(fields) do
            if v == "del" then
                Cannon2(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "cannon2" , cannon2.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 1 and inv:contains_item("main", "default:steel_ingot 25") then
                    Item_Remove2(player, "main", "default:steel_ingot 25")
					upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade then
                    Cannon2(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "cannon2" , cannon2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)