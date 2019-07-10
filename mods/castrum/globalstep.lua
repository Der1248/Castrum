dofile(minetest.get_modpath("castrum").."/config.txt")
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
local timer11 = 0
local timer12 = 0
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
	timer11 = timer11 + dtime;
	timer12 = timer12 + dtime;
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
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "default:junglewood" then
				last = pos
			elseif minetest.get_node({x=pos.x,y=pos.y-1, z = pos.z}).name == "default:pine_wood" then
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
		file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
		local level = file:read("*l")
		file:close()
		if timer12 > 1 then
			timer12 = 0
			for j=10,16 do
				for i=53,65 do
					for k=7,15 do
						if tonumber(level) < 6 then
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:junglewood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:pine_wood"then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:wood"})
							end
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_junglewood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_wood"})
							end
						elseif tonumber(level) == 6 then
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:wood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:pine_wood"then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:junglewood"})
							end
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_wood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_junglewood"})
							end
						elseif tonumber(level) == 7 then
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:wood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:junglewood"then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:pine_wood"})
							end
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_wood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_junglewood" then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_pine_wood"})
							end
						end
					end
				end
			end 
			for j=127,133 do
				for i=39,51 do
					for k=7,15 do
						if tonumber(level) < 6 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" or minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:wood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" or minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_wood"})
							end
						elseif tonumber(level) == 6 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" or minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_wood" or minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
							end
						elseif tonumber(level) == 7 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" or minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_wood" or minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_pine_wood"})
							end
						end
					end
				end
			end
			for j=315,321 do
				for i=39,51 do
					for k=7,15 do
						if tonumber(level) < 6 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
							end
						elseif tonumber(level) == 6 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
							end
						elseif tonumber(level) == 7 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_pine_wood"})
							end
						end
					end
				end
			end
			file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "r")
			local level = file:read("*l")
			file:close()
			for j=4,8 do
				for i=52,65 do
					for k=6,8 do
						if tonumber(level) < 6 then
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:junglewood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:pine_wood"then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:wood"})
							end
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_junglewood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_wood"})
							end
						elseif tonumber(level) == 6 then
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:wood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:pine_wood"then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:junglewood"})
							end
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_wood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_junglewood"})
							end
						elseif tonumber(level) == 7 then
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:wood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:junglewood"then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:pine_wood"})
							end
							if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_wood" or minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_junglewood" then
								minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_pine_wood"})
							end
						end
					end
				end
			end 
			for j=121,125 do
				for i=38,51 do
					for k=6,8 do
						if tonumber(level) < 6 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" or minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:wood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" or minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_wood"})
							end
						elseif tonumber(level) == 6 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" or minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_wood" or minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
							end
						elseif tonumber(level) == 7 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" or minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_wood" or minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_pine_wood"})
							end
						end
					end
				end
			end
			for j=309,313 do
				for i=38,51 do
					for k=6,8 do
						if tonumber(level) < 6 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
							end
						elseif tonumber(level) == 6 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
							end
						elseif tonumber(level) == 7 then
							if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
							end
							if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" then
								minetest.set_node({x=j, y=k, z=i}, {name="default:fence_pine_wood"})
							end
						end
					end
				end
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
		file = io.open(minetest.get_worldpath().."/SAVE/Meadow.txt", "r")
	    local meadow = file:read("*l")
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
		elseif tonumber(mountain_quarry) == 2 then
            mountain_quarrytime = 4.5
        end
		local farmtime = 0
        if tonumber(farm) == 1 then
            farmtime = 10
		elseif tonumber(farm) == 2 then
            farmtime = 8
        end
		local meadowtime = 0
        if tonumber(meadow) == 9 then
            meadowtime = 20
        end
		if fill_chest == true then
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
			if timer11 >= meadowtime then
				if tonumber(meadow) > -1 and tonumber(ship1) > 5 then
					local inv = minetest.get_inventory({type="node", pos={x=327, y=40, z=8}})
					if inv then
						inv:add_item("main", "flowers:rose")
						inv:add_item("main", "flowers:dandelion_white")
					end
				end
				timer11 = 0
			end
		end
    end
end)