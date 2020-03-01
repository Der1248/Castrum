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
minetest.register_node("castrum:bridge_status",{
	tiles  = {"castrum_bridge_status.png"},
	description = "Change Bridge Status",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        Bridge_Status(player,true,false)
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
			Item_Remove2(placer, "main", "castrum:knight_lv2 1")
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
			Item_Remove2(placer, "main", "castrum:knight_lv2 1")
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
			Item_Remove2(placer, "main", "castrum:knight_lv3 1")
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

local quarry_chest = {}
quarry_chest.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("quarry", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;quarry;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;quarry]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end
local mine_chest = {}
mine_chest.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("mine", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;mine;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;mine]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end
local tree_chest = {}
tree_chest.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("tree", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;tree;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;tree]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end

local lake_chest = {}
lake_chest.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("lake", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;lake;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;lake]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end

local lake2_chest = {}
lake2_chest.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("lake2", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;lake2;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;lake2]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end

local sandmine = {}
sandmine.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("sandmine", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;sandmine;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;sandmine]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end

local cactusfarm = {}
cactusfarm.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("cactusfarm", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;cactusfarm;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;cactusfarm]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end

local farm = {}
farm.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("farm", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;farm;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;farm]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end

local mountain_quarry = {}
mountain_quarry.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("mountain_quarry", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;mountain_quarry;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;mountain_quarry]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end

local meadow = {}
meadow.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
	player_inv:set_size("meadow", 64)
	local formspec =
		"size[8,9]" ..
		"list[current_player;meadow;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_player;meadow]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec		
end

minetest.register_node("castrum:quarry_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_side.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Quarry Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "quarry_chest" , quarry_chest.get_formspec(player))
    end,
})
minetest.register_node("castrum:tree_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_side.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Tree Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "tree_chest" , tree_chest.get_formspec(player))
    end,
})
minetest.register_node("castrum:mine_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_side.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Mine Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mine_chest" , mine_chest.get_formspec(player))
    end,
})

minetest.register_node("castrum:lake_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_side.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Lake Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "lake_chest" , lake_chest.get_formspec(player))
    end,
})

minetest.register_node("castrum:lake2_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_side.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Lake2 Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "lake2_chest" , lake2_chest.get_formspec(player))
    end,
})

minetest.register_node("castrum:sandmine_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Sandmine Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "sandmine" , sandmine.get_formspec(player))
    end,
})

minetest.register_node("castrum:cactusfarm_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Cactusfarm Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "cactusfarm" , cactusfarm.get_formspec(player))
    end,
})

minetest.register_node("castrum:farm_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_side.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Farm Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "farm" , farm.get_formspec(player))
    end,
})

minetest.register_node("castrum:mountain_quarry_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_side.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Mountain Quarry Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mountain_quarry" , mountain_quarry.get_formspec(player))
    end,
})

minetest.register_node("castrum:meadow_chest",{
	tiles = {
		"default_chest_top.png",
		"default_chest_top.png",
		"default_chest_front.png",
		"default_chest_side.png",
		"default_chest_side.png",
		"default_chest_side.png"
	},
	description = "Meadow Chest",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	on_rightclick = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "meadow" , meadow.get_formspec(player))
    end,
})

minetest.register_node("castrum:cobble",{
	tiles  = {"default_cobble.png"},
	description = "Cobble",
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("castrum:stone",{
	tiles  = {"default_stone.png"},
	description = "Stone",
	sunlight_propagates = true,
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

minetest.register_node("castrum:skeleton_lv2", {
	description = "character",
	drawtype = "mesh",
	mesh = "character.obj",
	tiles = {"castrum_skeleton_lv2.png"},
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
	description = "Cannon lv.1 (wood)",
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

minetest.register_node("castrum:cannon_1_2", {
	description = "Cannon lv.2 (wood)",
	tiles = {"castrum_canon_top_2.png","castrum_canon_side_2.png","default_wood.png","default_wood.png^castrum_rim.png","castrum_canon_top_2.png"},
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