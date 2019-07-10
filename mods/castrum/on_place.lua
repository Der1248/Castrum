dofile(minetest.get_modpath("castrum").."/config.txt")
minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack, pointed_thing)
	if place_code == true then
		if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "castrum:fight1" and newnode.name == "castrum:knight_lv1" then
			minetest.set_node(pos, {name="castrum:knight_lv1"})
			screwdriver_handler(placer, {type="node", under=pos, above=pos}, 1)
			local inv = placer:get_inventory()
			Item_Remove2(placer, "main", "castrum:knight_lv1 1")
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
		elseif minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "castrum:fight1" and newnode.name == "castrum:knight_lv3" then
			minetest.set_node(pos, {name="castrum:knight_lv3"})
			screwdriver_handler(placer, {type="node", under=pos, above=pos}, 1)
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
	end
end)