minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=10},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "For Minetest 	  :  0.4.16",
	})
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=30},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Game Version	 :  1.3.0",
	})
    player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=50},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Map Version	   :  4",
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
end)
dofile(minetest.get_modpath("castrum").."/Chapter1.lua")
dofile(minetest.get_modpath("castrum").."/Chapter2.lua")
dofile(minetest.get_modpath("castrum").."/fight.lua")
dofile(minetest.get_modpath("castrum").."/update.lua")
local timer = 0
local timer2 = 0
local timer3 = 0
local timer4 = 0
local timer5 = 0
local timer6 = 0
local tree2 = 0
local quarry2 = 0
local mine2 = 0
local sandmine2 = 0
local last = {x=0,y=0,z=0}
minetest.register_globalstep(function(dtime)
    timer = timer + dtime;
    timer2 = timer2 + dtime;
    timer3 = timer3 + dtime;
    timer4 = timer4 + dtime;
    timer5 = timer5 + dtime;
    timer6 = timer6 + dtime;
    local players = minetest.get_connected_players()
    for _,player in ipairs(players) do
        local pos = player:getpos()
        if pos.x < -9.5 and pos.x > -15.5 and pos.z > -62.5 and pos.z < -54 then
            last = pos
        elseif pos.x < -10.5 and pos.x > -14.5 and pos.z > -63.5 and pos.z < -62.5 then
            last = pos
        elseif pos.x < -11.5 and pos.x > -13.5 and pos.z > -64.5 and pos.z < -63.5 then
            last = pos
        elseif pos.x < 132.5 and pos.x > 127.5 and pos.z > 39.5 and pos.z < 48.5 then
            last = pos
        elseif pos.x < 131.5 and pos.x > 128.5 and pos.z > 48.5 and pos.z < 49.5 then
            last = pos
        elseif pos.x < 130.5 and pos.x > 129.5 and pos.z > 49.5 and pos.z < 50.5 then
            last = pos
        elseif pos.y < 8 then
            player:setpos(last)
        elseif minetest.get_node({x=pos.x, y=(pos.y-0.5),z=pos.z}).name ~= "air" then
            last = pos
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
            treetime = 4
            treenum = 2
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
        end
        local laketime = 0
        if tonumber(lake) == 1 then
            laketime = 12
        elseif tonumber(lake) == 2 then
            laketime = 9
        elseif tonumber(lake) == 3 then
            laketime = 6.5
        end
        local sandminetime = 0
        local sandminenum = 1
        if tonumber(sandmine) == 0 then
            sandminetime = 5
            sandminenum = 1
        elseif tonumber(sandmine) == 1 then
            sandminetime = 3.5
            sandminenum = 1
        elseif tonumber(quarry) == 2 then
            sandminetime = 2.5
            sandminenum = 2
        end
	    if timer >= quarrytime then
            if tonumber(quarry) > -1 then
		        local inv = minetest.get_inventory({type="node", pos={x=-20, y=9, z=-2}})
                if inv then
                    quarry2 = quarry2+1
                    if quarry2 == 2 then
                        quarry2 = 0
                    end
                    inv:add_item("main", "default:cobble ")
                    if quarrynum > 1 and quarry2 == 1 then
                        inv:add_item("main", "default:desert_cobble")
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
                    if tree2 == 2 then
                        tree2 = 0
                    end
                    inv:add_item("main", "default:wood")
                    if treenum > 1 and tree2 == 1 then
                        inv:add_item("main", "default:junglewood")
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
                    if mine2 == 2 then
                        mine2 = 0
                    end
                    inv:add_item("main", "default:coal_lump")
                    if minenum > 1 and mine2 == 1 then
                        inv:add_item("main", "default:iron_lump")
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
                    if sandmine2 == 2 then
                        sandmine2 = 0
                    end
                    inv:add_item("main", "default:sand")
                    if sandminenum > 1 and sandmine2 == 1 then
                        inv:add_item("main", "default:desert_sand")
                    end
                end
            end
		    timer6 = 0
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
    local fightdig = digger:get_attribute("fightdig")
    local fight = digger:get_attribute("fight")
    if node.name == "castrum:knight_lv1" and fightdig ~= "true" and fight == "true" then
        local inv = digger:get_inventory()
        inv:add_item("main", ""..node.name)
        digger:set_attribute("fightpos", minetest.pos_to_string(pos))
        if minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x-1, y=9, z=pos.z}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x-1, y=8, z=pos.z}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z-1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x-1, y=9, z=pos.z-1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x-1, y=8, z=pos.z-1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z-1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z+1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x-1, y=9, z=pos.z+1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x-1, y=8, z=pos.z+1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x-1, y=8, z=pos.z+1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x, y=9, z=pos.z}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x, y=8, z=pos.z}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x, y=9, z=pos.z}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x, y=8, z=pos.z}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x, y=8, z=pos.z}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x, y=8, z=pos.z-1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x, y=9, z=pos.z-1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x, y=8, z=pos.z-1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x, y=8, z=pos.z-1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x, y=8, z=pos.z+1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x, y=9, z=pos.z+1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x, y=8, z=pos.z+1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x, y=8, z=pos.z+1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x+1, y=9, z=pos.z}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x+1, y=8, z=pos.z}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z-1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x+1, y=9, z=pos.z-1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x+1, y=8, z=pos.z-1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z-1}, {name="castrum:fight1"})
        end
        if minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name == "castrum:knight_lv1_dark" or minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name == "castrum:knight_dark" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z+1}, {name="castrum:fight2"})
        elseif minetest.get_node({x=pos.x+1, y=9, z=pos.z+1}).name ~= "castrum:knight_lv1" and minetest.get_node({x=pos.x+1, y=8, z=pos.z+1}).name ~= "default:gravel" then
            minetest.set_node({x=pos.x+1, y=8, z=pos.z+1}, {name="castrum:fight1"})
        end
        if node.name == "castrum:knight_lv1" then
            digger:set_attribute("fightnode", "1")
        end
        digger:set_attribute("fightdig", "true")
    else
        minetest.set_node(pos, {name=node.name})
        if node.name == "castrum:knight_lv1" then
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
        inv:remove_item("main", "castrum:knight_lv1")
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
            if minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "castrum:bridge" then 
                minetest.set_node({x=i*(-1), y=8, z=-36}, {name="air"})
            end
        end
        for i=1,3 do
            minetest.set_node({x=i, y=8, z=-36}, {name="air"})
        end
    elseif v+0 == 2 then
        for j=35,37 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            if minetest.get_node({x=i*(-1), y=7, z=-36}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=7, z=-36}).name ~= "castrum:bridge" then 
                minetest.set_node({x=i*(-1), y=7, z=-36}, {name="air"})
            end
        end
        for i=1,3 do
            minetest.set_node({x=i, y=7, z=-36}, {name="air"})
        end
    elseif v+0 == 3 then
        for j=34,38 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=7, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=7, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            if minetest.get_node({x=i*(-1), y=6, z=-36}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=6, z=-36}).name ~= "castrum:bridge" then 
                minetest.set_node({x=i*(-1), y=6, z=-36}, {name="air"})
            end
        end
        for i=1,3 do
            minetest.set_node({x=i, y=6, z=-36}, {name="air"})
        end
    elseif v+0 == 4 then
        for j=33,39 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=7, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=7, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=6, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=6, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            if minetest.get_node({x=i*(-1), y=5, z=-36}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=5, z=-36}).name ~= "castrum:bridge" then 
                minetest.set_node({x=i*(-1), y=5, z=-36}, {name="air"})
            end
        end
        for i=1,3 do
            minetest.set_node({x=i, y=5, z=-36}, {name="air"})
        end
    elseif v+0 == 5 then
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=7, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=7, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=6, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=6, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=5, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=5, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            if minetest.get_node({x=i*(-1), y=4, z=-36}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=4, z=-36}).name ~= "castrum:bridge" then 
                minetest.set_node({x=i*(-1), y=4, z=-36}, {name="air"})
            end
        end
        for i=1,3 do
            minetest.set_node({x=i, y=4, z=-36}, {name="air"})
        end
    elseif v+0 == 6 then
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=7, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=7, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=6, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=6, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=5, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=5, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=4, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=4, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 7 then
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=6, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=6, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=5, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=5, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=4, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=4, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 8 then
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=5, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=5, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=4, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=4, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 9 then
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=4, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=4, z=j*(-1)}).name ~= "castrum:bridge" then 
                    minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
                end
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
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:dirt_with_grass"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="default:dirt_with_grass"})
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
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="default:dirt_with_grass"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:dirt_with_grass"})
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
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="default:dirt_with_grass"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="default:dirt_with_grass"})
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
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="default:dirt_with_grass"})
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
        minetest.set_node({x=-67, y=9, z=0}, {name="default:cobble"})
        minetest.set_node({x=-68, y=9, z=1}, {name="default:cobble"})
        minetest.set_node({x=-68, y=9, z=0}, {name="default:river_water_source"})
        minetest.set_node({x=-68, y=9, z=6}, {name="farming:straw"})
        minetest.set_node({x=-68, y=10, z=6}, {name="farming:straw"})
        minetest.set_node({x=-67, y=9, z=6}, {name="farming:straw"})
        minetest.set_node({x=-68, y=9, z=5}, {name="farming:straw"})
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
        minetest.set_node({x=-4, y=8, z=-58}, {name="castrum:comming_soon"})
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
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:wood"})
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
    elseif v+0 == 0 then
        for j=10,16 do
            for i=53,65 do
                for k=8,15 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:water_source"})
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
    elseif v+0 == 0 then 
        for j=29,33 do
            for i=53,57 do
                for k=8,8 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:dirt_with_grass"})
                end
            end
        end
        minetest.set_node({x=-34, y=9, z=-58}, {name="air"})
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

}
function Update_knight(player)
    file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	local knight1 = file:read("*l")
    file:close()
    for j=59,67 do
        for i=53,61 do
            for k=9,9 do
                minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
            end
        end
    end
    minetest.set_node({x=-63, y=9, z=-57}, {name="castrum:fire"})
    for i=1,tonumber(knight1) do
        minetest.set_node({x=knight_pos[i][2], y=9, z=knight_pos[i][3]}, {name="castrum:knight_lv1_sit"})
        for j=1,tonumber(knight_pos[i][4]) do
            screwdriver_handler(player, {type="node", under={x=knight_pos[i][2], y=9, z=knight_pos[i][3]}, above={x=knight_pos[i][2], y=9, z=knight_pos[i][3]}}, 1)
        end
    end
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
        label = (level-5).."/2"
        label2 = "Upgrade"
        need1 = "64 Cobblestone"
        need2 = "80 Jungle Wood Planks"
        need3 = "Fountain lv.3"
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
    elseif tonumber(level) == 9 then
        label = (level-8).."/2"
        label2 = "Upgrade"
        need1 = "27 Jungle Wood Planks"
    else
        label = (level-8).."/2"
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
        label = (level-8).."/2"
        label2 = "Upgrade"
        need1 = "30 Water Buckets"
        need2 = "Bridge lv.2"
    else
        label = (level-8).."/2"
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
    elseif tonumber(level) == 9 then
        label = (level-8).."/2"
        label2 = "Upgrade"
        need1 = "30 Water Buckets"
        need2 = "Bridge lv.2"
    else
        label = (level-8).."/2"
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
    elseif tonumber(level) == 9 then
        label = (level-8).."/2"
        label2 = "Upgrade"
        need1 = "30 Water Buckets"
        need2 = "Bridge lv.2"
    else
        label = (level-8).."/2"
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
    elseif tonumber(level) == 9 then
        label = (level-8).."/2"
        label2 = "Upgrade"
        need1 = "30 Water Buckets"
        need2 = "Bridge lv.2"
    else
        label = (level-8).."/2"
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
        label = (level-13).."/3"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/3"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    else
        label = (level-13).."/3"
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
        label = (level-13).."/3"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/3"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    else
        label = (level-13).."/3"
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
        label = (level-13).."/3"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/3"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.2"
    else
        label = (level-13).."/3"
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
        label = (level-13).."/3"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/3"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.3"
    else
        label = (level-13).."/3"
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
    elseif tonumber(level) == 4 then
        label = (level-3).."/3"
        label2 = "Upgrade"
        need1 = "25 Cobblestone"
        need2 = "8 Stone Pickaxe"
        need3 = "Walls and Towers lv.2"
    elseif tonumber(level) == 5 then
        label = (level-3).."/3"
        label2 = "Upgrade"
        need1 = "100 Cobblestone"
        need2 = "32 Stone Pickaxe"
        need3 = "Walls and Towers lv.3"
    else
        label = (level-3).."/3"
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
        label = (level-17).."/3"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 19 then
        label = (level-17).."/3"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.3"
    else
        label = (level-17).."/3"
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
        label = (level-17).."/3"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 19 then
        label = (level-17).."/3"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.3"
    else
        label = (level-17).."/3"
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
        label = (level-17).."/3"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 19 then
        label = (level-17).."/3"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.3"
    else
        label = (level-17).."/3"
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
        label = (level-17).."/3"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 19 then
        label = (level-17).."/3"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.3"
    else
        label = (level-17).."/3"
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
        formspec = formspec.."button[0,3;5,1;;Crafting]"
    end
    formspec = formspec.."button[0,4;5,1;;del]"
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
    if tonumber(level) < 7 then
        label = "not build yet ("..math.floor((level/7)*100).."%)"
    else
        label = (level-6).."/1"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."button[0,1;5,1;;Upgrade]"
        --.."button[0,5;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
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
        label = (level).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 2 then
        label = (level).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
    else
        label = (level).."/3"
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
        label = (level+1).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 1 then
        label = (level+1).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
        need2 = "Fountain lv.1"
    else
        label = (level+1).."/3"
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
        label = (level).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 2 then
        label = (level).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
        need2 = "Fountain lv.2"
    else
        label = (level).."/3"
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
        label = (level-4).."/2"
        label2 = "Upgrade"
        need1 = "25 Jungle Wood Planks"
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
        if tonumber(level) > 4 then
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
        .."button[0,4;1,1;;Stone\nShovel]"
        .."button[1,4;1,1;;Stone\nPickaxe]"
        .."button[2,4;1,1;;Stone\nSword]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
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
        label = (level).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 2 then
        label = (level).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
        need2 = "Fountain lv.3"
    else
        label = (level).."/3"
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
        need1 = "5 Water Buckets"
        need2 = "20 Cobblestone"
        need3 = "20 Wooden Planks"
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
    if tonumber(home1) == 6 then
        max1 = max1+8
    elseif tonumber(home1) == 7 then
        max1 = max1+11
    end
    if tonumber(home2) == 6 then
        max1 = max1+8
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	local camp1 = file:read("*l")
    file:close()
    if tonumber(camp1) == 1 then
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
        .."label[3.9,0.5;You have:"..knight_1.."/"..max.."]"
        .."button[0,2;5,1;;Get Knight]"
        .."button[0,3;1,1;;Knight\nlv.1]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
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
        need1 = "Fountain lv.1"
        need2 = "4 Cobblestone"
    elseif tonumber(level) == 4 then
        label = (level-3).."/2"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
        need2 = "Fountain lv.2"
        need3 = "40 Cobblestone"
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
        if tonumber(chapter) == 1 and tonumber(level) > 3 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 1]"
        elseif tonumber(chapter) == 2 and tonumber(level) > 4 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 2]"
        elseif tonumber(chapter) == 2 and tonumber(level) > 3 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 2 (battleground lv.2 needed)]"
        elseif tonumber(chapter) == 3 and tonumber(level) > 4 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 3 (comming soon)]"
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
    label = (level-4).."/1"
    label2 = "Upgrade (comming soon)"
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
        --.."button[0,3;5,1;;del]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
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
        label = (level+1).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 1 then
        label = (level+1).."/3"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
        need2 = "Island Fountain lv.1"
    else
        label = (level+1).."/3"
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
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
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
minetest.register_node("castrum:battleground",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Battleground",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "battleground" , battleground.get_formspec(player))
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
minetest.register_node("castrum:fight1",{
	tiles  = {"castrum_fight1.png"},
	description = "Fight 1",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:fight2",{
	tiles  = {"castrum_fight2.png"},
	description = "Fight 2",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_craftitem("castrum:soul", {
	description = "Soul",
	inventory_image = "castrum_soul.png",
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
minetest.register_craftitem("castrum:bucket_water", {
	description = "Water Bucket",
	inventory_image = "bucket_water.png",
})
minetest.register_node("castrum:cobble",{
	tiles  = {"default_cobble.png"},
	description = "Cobble",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:comming_soon",{
	tiles  = {"castrum_comming_soon.png"},
	description = "Comming soon",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
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
minetest.register_node("castrum:castrum_knight1", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_knight.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=2},
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
minetest.register_node("castrum:knight_lv1_sit", {
	description = "character",
	drawtype = "mesh",
	mesh = "character2.obj",
	tiles = {"castrum_knight_lv1.png"},
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
                    inv:remove_item("main", "default:cobble 8")
                    inv:remove_item("main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") then
                    txt = "build fountain first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") and tonumber(fountain) > 5 then
                    inv:remove_item("main", "default:junglewood 80")
                    inv:remove_item("main", "default:wood 64")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") then
                    txt = "upgrade fountain to lv.3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
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
                    inv:remove_item("main", "default:cobble 8")
                    inv:remove_item("main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") then
                    txt = "upgrade fountain to lv.3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                if tonumber(level) < 9 and inv:contains_item("main", "default:wood 3") then
                    inv:remove_item("main", "default:wood 3")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") then
                    inv:remove_item("main", "default:junglewood 27")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), "not enough items")
                end
                if (tonumber(level)) < 10 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                if tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") then
                    inv:remove_item("main", "default:junglewood 27")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), "not enough items")
                end
                if (tonumber(level)) < 10 and upgrade then
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
                    inv:remove_item("main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    txt = "build bridge first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    inv:remove_item("main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 10 and upgrade then
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
                    inv:remove_item("main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    inv:remove_item("main", "default:cobble 10")
                    inv:remove_item("main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    inv:remove_item("main", "default:cobble 40")
                    inv:remove_item("main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 16 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 4 and inv:contains_item("main", "default:cobble 10") then
                    inv:remove_item("main", "default:cobble 10")
                    upgrade = true
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 25") and inv:contains_item("main", "castrum:pick_stone 8") and tonumber(tower1) > 18 and tonumber(tower2) > 18 and tonumber(tower3) > 18 and tonumber(tower4) > 18 and tonumber(walle) > 14 and tonumber(wallw) > 14 and tonumber(walln) > 14 and tonumber(walls) > 14 then
                    inv:remove_item("main", "default:cobble 25")
                    inv:remove_item("main", "castrum:pick_stone 8")
                    upgrade = true
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 25") and inv:contains_item("main", "castrum:pick_stone 8") then
                    txt = "upgrade walls and towers to lv.2 first"
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 100") and inv:contains_item("main", "castrum:pick_stone 32") and tonumber(tower1) > 19 and tonumber(tower2) > 19 and tonumber(tower3) > 19 and tonumber(tower4) > 19 and tonumber(walle) > 15 and tonumber(wallw) > 15 and tonumber(walln) > 15 and tonumber(walls) > 15 then
                    inv:remove_item("main", "default:cobble 100")
                    inv:remove_item("main", "castrum:pick_stone 32")
                    upgrade = true
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 100") and inv:contains_item("main", "castrum:pick_stone 32") then
                    txt = "upgrade walls and towers to lv.3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
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
                    inv:remove_item("main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    inv:remove_item("main", "default:cobble 10")
                    inv:remove_item("main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    inv:remove_item("main", "default:cobble 40")
                    inv:remove_item("main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 20 and upgrade then
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
                    inv:remove_item("main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    inv:remove_item("main", "default:cobble 10")
                    inv:remove_item("main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    inv:remove_item("main", "default:cobble 40")
                    inv:remove_item("main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 16 and upgrade then
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
                    inv:remove_item("main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    inv:remove_item("main", "default:cobble 10")
                    inv:remove_item("main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    inv:remove_item("main", "default:cobble 40")
                    inv:remove_item("main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 20 and upgrade then
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
                    inv:remove_item("main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    inv:remove_item("main", "default:cobble 10")
                    inv:remove_item("main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    inv:remove_item("main", "default:cobble 40")
                    inv:remove_item("main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 16 and upgrade then
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
                    inv:remove_item("main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    inv:remove_item("main", "default:cobble 10")
                    inv:remove_item("main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    inv:remove_item("main", "default:cobble 40")
                    inv:remove_item("main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 16 and upgrade then
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
                if tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    inv:remove_item("main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    inv:remove_item("main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 10 and upgrade then
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
                    inv:remove_item("main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    inv:remove_item("main", "default:cobble 10")
                    inv:remove_item("main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    inv:remove_item("main", "default:cobble 40")
                    inv:remove_item("main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 20 and upgrade then
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
                if tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    inv:remove_item("main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    inv:remove_item("main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 10 and upgrade then
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
                if tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    inv:remove_item("main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    inv:remove_item("main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"                                                           
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 10 and upgrade then
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
                    inv:remove_item("main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    inv:remove_item("main", "default:cobble 10")
                    inv:remove_item("main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    inv:remove_item("main", "default:cobble 40")
                    inv:remove_item("main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 19 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 20 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                if tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 6") then
                    inv:remove_item("main", "default:cobble 8")
                    inv:remove_item("main", "default:wood 6")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), "not enough items")
                end
                if (tonumber(level)) < 6 and upgrade then
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
            elseif v == "Upgrade" then
                file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	            local level = file:read("*l")
                file:close()
                if (tonumber(level)) < 7 then
                    Stable(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
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
                elseif tonumber(level) == 1 and tonumber(chapter) > 1 then
                    upgrade = true
                elseif tonumber(level) == 2 and tonumber(chapter) > 2 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 2 then
                    txt = "complete chapter 2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 3 and upgrade then
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
                elseif tonumber(level) == 1 and tonumber(chapter) > 2 and tonumber(fountain) > 3 then
                    upgrade = true
                elseif tonumber(level) == 0 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 1 and tonumber(fountain) > 3 then
                    txt = "complete chapter 2 first"
                elseif tonumber(level) == 1 then
                    txt = "build fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 2 and upgrade then
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
                elseif tonumber(level) == 2 and tonumber(chapter) > 2 and tonumber(fountain) > 4 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 2 and tonumber(fountain) > 4 then
                    txt = "complete chapter 2 first"
                elseif tonumber(level) == 2 then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 3 and upgrade then
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
                    inv:remove_item("main", "default:wood 5")
                    upgrade = true
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:junglewood 25") then
                    inv:remove_item("main", "default:junglewood 25")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
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
                    inv:remove_item("main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 5 and inv:contains_item("main", "default:wood 10") then
                    txt = "upgrade fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 5 and upgrade then
                    Ship1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "ship1" , ship1.get_formspec(player))
            elseif v == "Go to Island" then
                player:setpos({x=124, y=8.5, z=44})
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
                    if player:get_inventory():contains_item("main", player:get_attribute("need1string")) and player:get_inventory():contains_item("main", player:get_attribute("need2string")) then
                        player:get_inventory():remove_item("main", player:get_attribute("need1string"))
                        player:get_inventory():remove_item("main", player:get_attribute("need2string"))
                        player:get_inventory():add_item("main", player:get_attribute("itemstring"))
                    else
                        minetest.chat_send_player(player:get_player_name(), "not enough items")
                    end
                    minetest.chat_send_player(player:get_player_name(), "select item first")
                end
            elseif v == "Soul" then
                player:set_attribute("item", "Soul")
                player:set_attribute("need1", "25 Cobblestone")
                player:set_attribute("need2", "5 Water Buckets")
                player:set_attribute("need1string", "default:cobble 25")
                player:set_attribute("need2string", "castrum:bucket_water 5")
                player:set_attribute("itemstring", "castrum:soul")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nIngot" then
                player:set_attribute("item", "Steel Ingot")
                player:set_attribute("need1", "2 Coal Lump")
                player:set_attribute("need2", "1 Iron Lump")
                player:set_attribute("need1string", "default:coal_lump 2")
                player:set_attribute("need2string", "default:iron_lump")
                player:set_attribute("itemstring", "default:steel_ingot")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nShovel" then
                player:set_attribute("item", "Stone Shovel")
                player:set_attribute("need1", "1 Cobblestone")
                player:set_attribute("need2", "2 Wooden Planks")
                player:set_attribute("need1string", "default:cobble")
                player:set_attribute("need2string", "default:wood 2")
                player:set_attribute("itemstring", "castrum:shovel_stone")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nPickaxe" then
                player:set_attribute("item", "Stone Pickaxe")
                player:set_attribute("need1", "3 Cobblestone")
                player:set_attribute("need2", "2 Wooden Planks")
                player:set_attribute("need1string", "default:cobble 3")
                player:set_attribute("need2string", "default:wood 2")
                player:set_attribute("itemstring", "castrum:pick_stone")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nSword" then
                player:set_attribute("item", "Stone Sword")
                player:set_attribute("need1", "2 Cobblestone")
                player:set_attribute("need2", "1 Wooden Planks")
                player:set_attribute("need1string", "default:cobble 2")
                player:set_attribute("need2string", "default:wood")
                player:set_attribute("itemstring", "castrum:sword_stone")
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
                elseif tonumber(level) == 2 and tonumber(chapter) > 2 and tonumber(fountain) > 5 then
                    upgrade = true
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 2 and tonumber(fountain) > 5 then
                    txt = "complete chapter 2 first"
                elseif tonumber(level) == 2 then
                    txt = "upgrade fountain to lv.3 first"
                end

                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 3 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:wood 20") and inv:contains_item("main", "default:cobble 20") and inv:contains_item("main", "castrum:bucket_water 5") then
                    inv:remove_item("main", "default:wood 20")
                    inv:remove_item("main", "default:cobble 20")
                    inv:remove_item("main", "castrum:bucket_water 5")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
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
                if tonumber(home1) == 6 then
                    max1 = max1+8
                elseif tonumber(home1) == 7 then
                    max1 = max1+11
                end
                if tonumber(home2) == 6 then
                    max1 = max1+8
                end
                file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	            local camp1 = file:read("*l")
                file:close()
                if tonumber(camp1) == 1 then
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
                if tonumber(knight_1) < max then
                    if player:get_attribute("2need1string") then
                        if player:get_inventory():contains_item("main", player:get_attribute("2need1string")) and player:get_inventory():contains_item("main", player:get_attribute("2need2string")) then
                            player:get_inventory():remove_item("main", player:get_attribute("2need1string"))
                            player:get_inventory():remove_item("main", player:get_attribute("2need2string"))
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
                player:set_attribute("2need2", "3 Water Bucket")
                player:set_attribute("2need1string", "castrum:soul")
                player:set_attribute("2need2string", "castrum:bucket_water 3")
                player:set_attribute("knightlv", "1")
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
                    inv:remove_item("main", "default:cobble 4")
                elseif tonumber(level) < 4 and inv:contains_item("main", "default:cobble 4") then
                    txt = "build fountain first"
                elseif tonumber(level) == 4 and tonumber(fountain) > 4 and inv:contains_item("main", "default:cobble 40") and tonumber(chapter) > 1 then
                    upgrade = true
                    inv:remove_item("main", "default:cobble 40")
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 40") and tonumber(fountain) > 4 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 40") then
                    txt = "upgrade fountain to lv.2 first"
                end

                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 5 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:sand 3") then
                    inv:remove_item("main", "default:sand 3")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:sand 3") then
                    inv:remove_item("main", "default:sand 3")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:sand 3") then
                    inv:remove_item("main", "default:sand 3")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:sand 3") then
                    inv:remove_item("main", "default:sand 3")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade then
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
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 4 and inv:contains_item("main", "default:sand 10") then
                    inv:remove_item("main", "default:sand 10")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 4 and upgrade then
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
                if tonumber(level) == 0 and tonumber(chapter) > 1 then
                    upgrade = true
                elseif tonumber(level) == 0 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 1 and tonumber(chapter) > 2 and tonumber(fountain) > 3 then
                    upgrade = true
                elseif tonumber(level) == 1 and tonumber(fountain) > 3 then
                    txt = "complete chapter 2 first"
                elseif tonumber(level) == 1 then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 2 and upgrade then
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
            if v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "Go Back" then
                player:setpos({x=-7, y=8.5, z=-58})
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
    end
end)