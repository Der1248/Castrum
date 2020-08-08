minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=10},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "For Minetest 	  :  5.3.0",
		
	})
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=30},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Game Version	 :  1.11.2",
	})
end)
dofile(minetest.get_modpath("castrum").."/nodes/Market.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Barracks.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Battleground.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Bridge.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Cactusfarm.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Camp1.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Camp2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Camp3.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Cannon1.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Cannon2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Cannon3.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Farm.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Fountain.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Home1.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Home2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Home3.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Home4.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Barracks.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Battleground.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Fountain.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Home1.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Home2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Pier.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Pier2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Ship1.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Smithy.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Walle.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Walln.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Walls.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Island_Wallw.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Lake.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Lake2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Meadow.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Mine.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Moat_east.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Moat_north.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Moat_south.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Moat_west.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Mountain_Fountain.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Mountain_Quarry.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Mountain_Smithy.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Pier.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Quarry.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Sail1.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Sail2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Sandmine.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Ship1.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Ship2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Smithy.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Stable.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Tower1.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Tower2.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Tower3.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Tower4.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Tree.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Wall_east.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Wall_north.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Wall_south.lua")
dofile(minetest.get_modpath("castrum").."/nodes/Wall_west.lua")
dofile(minetest.get_modpath("castrum").."/chapter/chapter1.lua")
dofile(minetest.get_modpath("castrum").."/chapter/chapter2.lua")
dofile(minetest.get_modpath("castrum").."/chapter/chapter3.lua")
dofile(minetest.get_modpath("castrum").."/chapter/chapter4.lua")
dofile(minetest.get_modpath("castrum").."/chapter/chapter5.lua")
dofile(minetest.get_modpath("castrum").."/chapter/chapter6.lua")
dofile(minetest.get_modpath("castrum").."/fight.lua")
dofile(minetest.get_modpath("castrum").."/island_fight.lua")
dofile(minetest.get_modpath("castrum").."/update.lua")
dofile(minetest.get_modpath("castrum").."/on_join.lua")
dofile(minetest.get_modpath("castrum").."/on_dig.lua")
dofile(minetest.get_modpath("castrum").."/on_place.lua")
dofile(minetest.get_modpath("castrum").."/on_new.lua")
dofile(minetest.get_modpath("castrum").."/globalstep.lua")
dofile(minetest.get_modpath("castrum").."/bridge_status.lua")
dofile(minetest.get_modpath("castrum").."/knight.lua")
dofile(minetest.get_modpath("castrum").."/horse.lua")
dofile(minetest.get_modpath("castrum").."/pirate.lua")
dofile(minetest.get_modpath("castrum").."/extra_items.lua")
dofile(minetest.get_modpath("castrum").."/pier_ship.lua")

function file_check(file_name)
	local file_found=io.open(file_name, "r")
	if file_found==nil then
		file_found=false
	else
		file_found=true
	end
	return file_found
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