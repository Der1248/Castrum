dofile(minetest.get_modpath("castrum").."/config.txt")
minetest.register_on_dignode(function(pos, node, digger)
	if dig_code == true then
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
	end
end)