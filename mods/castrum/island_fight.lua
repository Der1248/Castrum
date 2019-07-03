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
function turn(player,pos,num)
    for i=1,num do
        screwdriver_handler(player, {type="node", under=pos, above=pos}, 1)
    end
end
local levels = {
--   l,c1,c2,c3,c4,c5,c6,c7,c8,c9,p1,p2,p3,p4,p5,p6,p7,p8,p9,s1,s2,hp
	{1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1,10},
}
function set_sea_fight(level,player)
	file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
	local pirate_1 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Ship2.txt", "r")
	local ship2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "r")
	local sail1 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "r")
	local sail2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "r")
	local cannon1 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "r")
	local cannon2 = file:read("*l")
    file:close()
	local inv = player:get_inventory()
	local num = 0
	for i=1,32 do
		if inv:get_stack("main", i):is_empty() then
			num = num+1
		end
	end
	if tonumber(ship2) > 13 then
		if tonumber(sail1) > 0 and tonumber(sail2) > 0 then
			if tonumber(cannon1) > 0 or tonumber(cannon2) > 0 then
				if tonumber(pirate_1) > 0 then
					if num > 4 then
						if tonumber(pirate_1) > 0 then
							player:set_attribute("sea_started", "false")
							inv:add_item("main","castrum:pirate_lv1 "..pirate_1)
							Chapter_Ship1_1(player)
							Chapter_Ship2_1(player)
							player:set_attribute("sea_level", ""..level)
							player:set_attribute("sea_fight_pos1", "1")
							player:set_attribute("sea_fight_pos2", "1")
							player:set_attribute("sea_fight_step_1c1", "0")
							player:set_attribute("sea_fight_step_1c2", "0")
							player:set_attribute("sea_fight_step_2c1", "0")
							player:set_attribute("sea_fight_step_2c2", "0")
							player:set_attribute("sea_fight_e_hp", ""..levels[level][22])
							player:set_attribute("sea_fight_p_hp", "10")
							player:set_attribute("sea_fight_c1", ""..levels[level][2])
							player:set_attribute("sea_fight_c2", ""..levels[level][3])
							player:set_attribute("sea_fight_p1", ""..levels[level][11])
							player:set_attribute("sea_fight_p2", ""..levels[level][12])
							player:set_attribute("sea_fight_s1", ""..levels[level][20])
							player:set_attribute("sea_fight_s2", ""..levels[level][21])
							player:setpos({x=-156, y=7.5, z=-27})
						end
					else
						minetest.chat_send_player(player:get_player_name(), "you have not enough space in your inventory")
					end
				else
					minetest.chat_send_player(player:get_player_name(), "you have no pirates")
				end
			else
				minetest.chat_send_player(player:get_player_name(), "build a cannon first")
			end
		else
			minetest.chat_send_player(player:get_player_name(), "build sails first")
		end
	else
		minetest.chat_send_player(player:get_player_name(), "build ship2 first")
	end
	
end
function EnemyStep(player)
	local stepdone = 0
	if player:get_attribute("sea_fight_pos2") == "1" then
		if tonumber(player:get_attribute("sea_fight_c1")) > 0 then
			if player:get_attribute("sea_fight_step_2c1") == "0" and player:get_attribute("sea_fight_p1") == "1" and player:get_attribute("sea_fight_c1") == "1"then
				stepdone = 1
				if math.random(100) < 31 then
					player:set_attribute("sea_fight_p_hp", ""..tonumber(player:get_attribute("sea_fight_p_hp")-2))
					minetest.chat_send_player(player:get_player_name(), "Hit! The enemy has done 2Hp damage. You have "..player:get_attribute("sea_fight_p_hp").." hp left.")
				else
					minetest.chat_send_player(player:get_player_name(), "The enemy did not hit you!")
				end
				player:set_attribute("sea_fight_step_2c1", "5")
			else
				if tonumber(player:get_attribute("sea_fight_step_2c1")) > 0 then
					player:set_attribute("sea_fight_step_2c1", ""..tonumber(player:get_attribute("sea_fight_step_2c1"))-1)
				end
			end
			if tonumber(player:get_attribute("sea_fight_step_2c2")) > 0 then
				player:set_attribute("sea_fight_step_2c2", ""..tonumber(player:get_attribute("sea_fight_step_2c2"))-1)
			end
		end
	else
		if tonumber(player:get_attribute("sea_fight_c2")) > 0 then
			if player:get_attribute("sea_fight_step_2c2") == "0" and player:get_attribute("sea_fight_p2") == "1" and player:get_attribute("sea_fight_c2") == "1" then
				stepdone = 1
				if math.random(100) < 31 then
					player:set_attribute("sea_fight_p_hp", ""..tonumber(player:get_attribute("sea_fight_p_hp")-2))
					minetest.chat_send_player(player:get_player_name(), "Hit! The enemy has done 2Hp damage. You have "..player:get_attribute("sea_fight_p_hp").." hp left.")
				else
					minetest.chat_send_player(player:get_player_name(), "The enemy did not hit you!")
				end
				player:set_attribute("sea_fight_step_2c2", "5")
			else
				if tonumber(player:get_attribute("sea_fight_step_2c2")) > 0 then
					player:set_attribute("sea_fight_step_2c2", ""..tonumber(player:get_attribute("sea_fight_step_2c2"))-1)
				end
			end
			if tonumber(player:get_attribute("sea_fight_step_2c1")) > 0 then
				player:set_attribute("sea_fight_step_2c1", ""..tonumber(player:get_attribute("sea_fight_step_2c1"))-1)
			end
		end
	end
	if stepdone == 0 then
		local p = tonumber(player:get_attribute("sea_fight_s1"))*3+ tonumber(player:get_attribute("sea_fight_s2"))*2+25
		if math.random(100) < (p+1) then
			if tonumber(player:get_attribute("sea_fight_pos2")) == 1 then
				player:set_attribute("sea_fight_pos2", "2")
				Chapter_Ship2_2(player)
			else
				player:set_attribute("sea_fight_pos2", "1")
				Chapter_Ship2_1(player)		
			end
			minetest.chat_send_player(player:get_player_name(), "The ememy turned the ship successfully")
		else
			minetest.chat_send_player(player:get_player_name(), "The enemy did not turn the ship")
		end
	end
end
function Check1(player)
	if tonumber(player:get_attribute("sea_fight_e_hp")) < 1 or tonumber(player:get_attribute("sea_fight_p_hp")) < 1 then
		player:set_attribute("sea_started", "false")
		player:setpos({x=178, y=8.5, z=44})
		local inv = player:get_inventory()
		inv:remove_item("main", "castrum:pirate_lv1 9")
		local pirate1 = 0
		for j=149,169 do
			for i=23,31 do
				if minetest.get_node({x=j*(-1), y=8, z=i*(-1)}).name == "castrum:pirate_lv1" then
					pirate1 = pirate1 +1
				end
			end
		end
		file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
		local pirate_1 = file:read("*l")
		file:close()
		file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "w")
		file:write((tonumber(pirate_1)-pirate1))
		file:close()
		Update_pirate(player)
	end	
	if tonumber(player:get_attribute("sea_fight_e_hp")) < 1 then
		minetest.chat_send_player(player:get_player_name(), "you win")
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "r")
		local chapter = file:read("*l")
		file:close()
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "w")
		file:write((tonumber(chapter)+1))
		file:close()
	else
		EnemyStep(player)
		Check2(player)
	end
end
function Check2(player)
	if tonumber(player:get_attribute("sea_fight_e_hp")) < 1 or tonumber(player:get_attribute("sea_fight_p_hp")) < 1 then
		player:set_attribute("sea_started", "false")
		player:setpos({x=178, y=8.5, z=44})
		local inv = player:get_inventory()
		inv:remove_item("main", "castrum:pirate_lv1 9")
		local pirate1 = 0
		for j=149,169 do
			for i=23,31 do
				if minetest.get_node({x=j*(-1), y=8, z=i*(-1)}).name == "castrum:pirate_lv1" then
					pirate1 = pirate1 +1
				end
			end
		end
		file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
		local pirate_1 = file:read("*l")
		file:close()
		file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "w")
		file:write((tonumber(pirate_1)-pirate1))
		file:close()
		Update_pirate(player)
	end	
	if tonumber(player:get_attribute("sea_fight_p_hp")) < 1 then
		minetest.chat_send_player(player:get_player_name(), "you lose")
	end
end
function Chapter_Ship1_1(player)
	local pirate1 = 0
	local pirate2 = 0
	if minetest.get_node({x=-166, y=8, z=-30}).name == "castrum:pirate_lv1" then
		pirate1 = 1
	end
	if minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
		pirate2 = 1
	end
	for j=149,169 do
        for i=23,31 do
			for k=7,20 do
				minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
			end
        end
    end
	for j=149,169 do
        for i=23,31 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="castrum:water"})
        end
    end
	for j=150,161 do
        for i=24,30 do
            minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
        end
    end
	for j=162,163 do
		for i=25,29 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
		end
	end
	for j=164,165 do
		for i=26,28 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
		end
	end
	for j=166,167 do
		minetest.set_node({x=j*(-1), y=7, z=-27}, {name="default:wood"})
	end
	for j=151,161 do
		minetest.set_node({x=j*(-1), y=8, z=-23}, {name="default:wood"})
		minetest.set_node({x=j*(-1), y=8, z=-31}, {name="default:wood"})
	end
	for i=25,29 do
		minetest.set_node({x=-149, y=8, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-150, y=8, z=-30}, {name="default:wood"})
	minetest.set_node({x=-150, y=8, z=-27}, {name="default:wood"})
	minetest.set_node({x=-150, y=8, z=-24}, {name="default:wood"})
	minetest.set_node({x=-162, y=8, z=-30}, {name="default:wood"})
	minetest.set_node({x=-162, y=8, z=-24}, {name="default:wood"})
	minetest.set_node({x=-164, y=8, z=-29}, {name="default:wood"})
	minetest.set_node({x=-164, y=8, z=-25}, {name="default:wood"})
	minetest.set_node({x=-166, y=8, z=-28}, {name="default:wood"})
	minetest.set_node({x=-166, y=8, z=-26}, {name="default:wood"})
	minetest.set_node({x=-167, y=8, z=-27}, {name="default:wood"})
	minetest.set_node({x=-168, y=8, z=-27}, {name="default:wood"})
	for i=25,29 do
		minetest.set_node({x=-149, y=9, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-150, y=9, z=-30}, {name="default:wood"})
	minetest.set_node({x=-150, y=9, z=-24}, {name="default:wood"})
	minetest.set_node({x=-151, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-151, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-153, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-153, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-155, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-155, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-157, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-157, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-159, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-159, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-161, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-161, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-162, y=9, z=-30}, {name="default:wood"})
	minetest.set_node({x=-162, y=9, z=-24}, {name="default:wood"})
	minetest.set_node({x=-163, y=9, z=-30}, {name="default:wood"})
	minetest.set_node({x=-163, y=9, z=-24}, {name="default:wood"})
	minetest.set_node({x=-164, y=9, z=-29}, {name="default:wood"})
	minetest.set_node({x=-164, y=9, z=-25}, {name="default:wood"})
	minetest.set_node({x=-165, y=9, z=-29}, {name="default:wood"})
	minetest.set_node({x=-165, y=9, z=-25}, {name="default:wood"})
	minetest.set_node({x=-166, y=9, z=-28}, {name="default:wood"})
	minetest.set_node({x=-166, y=9, z=-26}, {name="default:wood"})
	minetest.set_node({x=-167, y=9, z=-28}, {name="default:wood"})
	minetest.set_node({x=-167, y=9, z=-26}, {name="default:wood"})
	minetest.set_node({x=-168, y=9, z=-27}, {name="default:wood"})
	minetest.set_node({x=-169, y=9, z=-27}, {name="default:wood"})
	for i=25,29 do
		minetest.set_node({x=-149, y=10, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-150, y=10, z=-30}, {name="default:wood"})
	minetest.set_node({x=-150, y=10, z=-24}, {name="default:wood"})
	minetest.set_node({x=-150, y=8, z=-25}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-150, y=8, z=-26}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-150, y=8, z=-28}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-150, y=8, z=-29}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-150, y=8, z=-25}, above={x=-150, y=8, z=-25}}, 1)
	screwdriver_handler(player, {type="node", under={x=-150, y=8, z=-26}, above={x=-150, y=8, z=-26}}, 1)
	screwdriver_handler(player, {type="node", under={x=-150, y=8, z=-28}, above={x=-150, y=8, z=-28}}, 1)
	screwdriver_handler(player, {type="node", under={x=-150, y=8, z=-29}, above={x=-150, y=8, z=-29}}, 1)
	minetest.set_node({x=-151, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-151, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-151, y=8, z=-30}, above={x=-151, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-151, y=8, z=-30}, above={x=-151, y=8, z=-30}}, 1)
	minetest.set_node({x=-153, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-153, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-153, y=8, z=-30}, above={x=-153, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-153, y=8, z=-30}, above={x=-153, y=8, z=-30}}, 1)
	minetest.set_node({x=-154, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-155, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-155, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-155, y=8, z=-30}, above={x=-155, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-155, y=8, z=-30}, above={x=-155, y=8, z=-30}}, 1)
	minetest.set_node({x=-157, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-157, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-157, y=8, z=-30}, above={x=-157, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-157, y=8, z=-30}, above={x=-157, y=8, z=-30}}, 1)
	minetest.set_node({x=-159, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-159, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-159, y=8, z=-30}, above={x=-159, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-159, y=8, z=-30}, above={x=-159, y=8, z=-30}}, 1)
	minetest.set_node({x=-161, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-161, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-161, y=8, z=-30}, above={x=-161, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-161, y=8, z=-30}, above={x=-161, y=8, z=-30}}, 1)
	minetest.set_node({x=-162, y=8, z=-25}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-162, y=8, z=-29}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-162, y=8, z=-29}, above={x=-162, y=8, z=-29}}, 1)
	screwdriver_handler(player, {type="node", under={x=-162, y=8, z=-29}, above={x=-162, y=8, z=-29}}, 1)
	minetest.set_node({x=-163, y=8, z=-25}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-163, y=8, z=-29}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-163, y=8, z=-29}, above={x=-163, y=8, z=-29}}, 1)
	screwdriver_handler(player, {type="node", under={x=-163, y=8, z=-29}, above={x=-163, y=8, z=-29}}, 1)
	minetest.set_node({x=-164, y=8, z=-26}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-164, y=8, z=-28}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-164, y=8, z=-28}, above={x=-164, y=8, z=-28}}, 1)
	screwdriver_handler(player, {type="node", under={x=-164, y=8, z=-28}, above={x=-164, y=8, z=-28}}, 1)
	minetest.set_node({x=-165, y=8, z=-26}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-165, y=8, z=-28}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-165, y=8, z=-28}, above={x=-165, y=8, z=-28}}, 1)
	screwdriver_handler(player, {type="node", under={x=-165, y=8, z=-28}, above={x=-165, y=8, z=-28}}, 1)
	minetest.set_node({x=-166, y=8, z=-27}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-166, y=8, z=-27}, above={x=-166, y=8, z=-27}}, 1)
	screwdriver_handler(player, {type="node", under={x=-166, y=8, z=-27}, above={x=-166, y=8, z=-27}}, 1)
	screwdriver_handler(player, {type="node", under={x=-166, y=8, z=-27}, above={x=-166, y=8, z=-27}}, 1)
	for i=25,29 do
		minetest.set_node({x=-149, y=11, z=i*(-1)}, {name="default:fence_wood"})
	end
	minetest.set_node({x=-150, y=11, z=-30}, {name="default:fence_wood"})
	minetest.set_node({x=-150, y=11, z=-24}, {name="default:fence_wood"})
	for j=151,161 do
		minetest.set_node({x=j*(-1), y=10, z=-23}, {name="default:fence_wood"})
		minetest.set_node({x=j*(-1), y=10, z=-31}, {name="default:fence_wood"})
	end
	minetest.set_node({x=-154, y=10, z=-23}, {name="air"})
	minetest.set_node({x=-162, y=10, z=-30}, {name="default:fence_wood"})
	minetest.set_node({x=-162, y=10, z=-24}, {name="default:fence_wood"})
	minetest.set_node({x=-163, y=10, z=-30}, {name="default:fence_wood"})
	minetest.set_node({x=-163, y=10, z=-24}, {name="default:fence_wood"})
	minetest.set_node({x=-164, y=10, z=-29}, {name="default:fence_wood"})
	minetest.set_node({x=-164, y=10, z=-25}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=10, z=-29}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=10, z=-25}, {name="default:fence_wood"})
	minetest.set_node({x=-166, y=10, z=-28}, {name="default:fence_wood"})
	minetest.set_node({x=-166, y=10, z=-26}, {name="default:fence_wood"})
	minetest.set_node({x=-167, y=10, z=-28}, {name="default:fence_wood"})
	minetest.set_node({x=-167, y=10, z=-26}, {name="default:fence_wood"})
	minetest.set_node({x=-168, y=10, z=-27}, {name="default:fence_wood"})
	minetest.set_node({x=-169, y=10, z=-27}, {name="default:fence_wood"})
	for k=8,14 do
        minetest.set_node({x=-159, y=k, z=-27}, {name="default:wood"})
    end
	minetest.set_node({x=-159, y=14, z=-28}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-29}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-26}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-25}, {name="default:fence_wood"})
	for k=8,16 do
        minetest.set_node({x=-153, y=k, z=-27}, {name="default:wood"})
    end
	minetest.set_node({x=-153, y=16, z=-26}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-25}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-24}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-23}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-28}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-29}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-30}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-31}, {name="default:fence_wood"})
	minetest.set_node({x=-150, y=9, z=-27}, {name="castrum:pirate_captain"})
	screwdriver_handler(player, {type="node", under={x=-150, y=9, z=-27}, above={x=-150, y=9, z=-27}}, 1)
	for i=23,31 do
		minetest.set_node({x=-154, y=16, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-155, y=15, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-155, y=14, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-155, y=13, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-154, y=12, z=i*(-1)}, {name="wool:white"})
    end
	for i=25,29 do
		minetest.set_node({x=-160, y=14, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-161, y=13, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-161, y=12, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-160, y=11, z=i*(-1)}, {name="wool:white"})
    end
	
	local started = player:get_attribute("sea_started")
	minetest.set_node({x=-156, y=7, z=-27}, {name="castrum:island_start_fight"})
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "r")
	local level = file:read("*l")
    file:close()
	if tonumber(level) == 1 then
		if started == "false" then
			minetest.set_node({x=-152, y=7, z=-24}, {name="castrum:sea_fight1"})
		end
		minetest.set_node({x=-152, y=9, z=-23}, {name="castrum:cannon_1_1"})
	end
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "r")
	local level = file:read("*l")
    file:close()
	if tonumber(level) == 1 then
		if started == "false" then
			minetest.set_node({x=-152, y=7, z=-30}, {name="castrum:sea_fight1"})
		end
		minetest.set_node({x=-152, y=9, z=-31}, {name="castrum:cannon_1_1"})
		screwdriver_handler(player, {type="node", under={x=-152, y=9, z=-31}, above={x=-152, y=9, z=-31}}, 1)
		screwdriver_handler(player, {type="node", under={x=-152, y=9, z=-31}, above={x=-152, y=9, z=-31}}, 1)
	end
	if pirate1 == 1 and started == "true" then
		minetest.set_node({x=-152, y=8, z=-24}, {name="castrum:pirate_lv1"})
		screwdriver_handler(player, {type="node", under={x=-152, y=8, z=-24}, above={x=-152, y=8, z=-24}}, 1)
		screwdriver_handler(player, {type="node", under={x=-152, y=8, z=-24}, above={x=-152, y=8, z=-24}}, 1)
		if player:get_attribute("sea_fight_step_1c1") == "0" then
			minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_ready"})
		elseif player:get_attribute("sea_fight_step_1c1") == "1" then
			minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_1"})
		elseif player:get_attribute("sea_fight_step_1c1") == "2" then
			minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_2"})
		elseif player:get_attribute("sea_fight_step_1c1") == "3" then
			minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_3"})
		elseif player:get_attribute("sea_fight_step_1c1") == "4" then
			minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_4"})
		elseif player:get_attribute("sea_fight_step_1c1") == "5" then
			minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_5"})
		end
	end
	if pirate2 == 1 and started == "true" then
		minetest.set_node({x=-152, y=8, z=-30}, {name="castrum:pirate_lv1"})
	end
	if started == "true" then
		minetest.set_node({x=-162, y=7, z=-27}, {name="castrum:turn_ship"})
	end
end
function Chapter_Ship1_2(player)
	local pirate1 = 0
	local pirate2 = 0
	
	if minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
		pirate1 = 1
	end
	if minetest.get_node({x=-152, y=8, z=-30}).name == "castrum:pirate_lv1" then
		pirate2 = 1
	end
	for j=149,169 do
        for i=23,31 do
			for k=7,20 do
				minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
			end
        end
    end
	for j=149,169 do
        for i=23,31 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="castrum:water"})
        end
    end
	for j=157,168 do
        for i=24,30 do
            minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
        end
    end
	
	for j=155,156 do
		for i=25,29 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
		end
	end
	
	for j=153,154 do
		for i=26,28 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
		end
	end
	for j=151,152 do
		minetest.set_node({x=j*(-1), y=7, z=-27}, {name="default:wood"})
	end
	
	for j=157,167 do
		minetest.set_node({x=j*(-1), y=8, z=-23}, {name="default:wood"})
		minetest.set_node({x=j*(-1), y=8, z=-31}, {name="default:wood"})
	end
	for i=25,29 do
		minetest.set_node({x=-169, y=8, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-168, y=8, z=-30}, {name="default:wood"})
	minetest.set_node({x=-168, y=8, z=-27}, {name="default:wood"})
	minetest.set_node({x=-168, y=8, z=-24}, {name="default:wood"})
	minetest.set_node({x=-156, y=8, z=-30}, {name="default:wood"})
	minetest.set_node({x=-156, y=8, z=-24}, {name="default:wood"})
	minetest.set_node({x=-154, y=8, z=-29}, {name="default:wood"})
	minetest.set_node({x=-154, y=8, z=-25}, {name="default:wood"})
	minetest.set_node({x=-152, y=8, z=-28}, {name="default:wood"})
	minetest.set_node({x=-152, y=8, z=-26}, {name="default:wood"})
	minetest.set_node({x=-151, y=8, z=-27}, {name="default:wood"})
	minetest.set_node({x=-150, y=8, z=-27}, {name="default:wood"})
	
	for i=25,29 do
		minetest.set_node({x=-169, y=9, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-168, y=9, z=-30}, {name="default:wood"})
	minetest.set_node({x=-168, y=9, z=-24}, {name="default:wood"})
	minetest.set_node({x=-167, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-167, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-165, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-165, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-163, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-163, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-161, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-161, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-159, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-159, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-157, y=9, z=-31}, {name="default:wood"})
	minetest.set_node({x=-157, y=9, z=-23}, {name="default:wood"})
	minetest.set_node({x=-156, y=9, z=-30}, {name="default:wood"})
	minetest.set_node({x=-156, y=9, z=-24}, {name="default:wood"})
	minetest.set_node({x=-155, y=9, z=-30}, {name="default:wood"})
	minetest.set_node({x=-155, y=9, z=-24}, {name="default:wood"})
	minetest.set_node({x=-154, y=9, z=-29}, {name="default:wood"})
	minetest.set_node({x=-154, y=9, z=-25}, {name="default:wood"})
	minetest.set_node({x=-153, y=9, z=-29}, {name="default:wood"})
	minetest.set_node({x=-153, y=9, z=-25}, {name="default:wood"})
	minetest.set_node({x=-152, y=9, z=-28}, {name="default:wood"})
	minetest.set_node({x=-152, y=9, z=-26}, {name="default:wood"})
	minetest.set_node({x=-151, y=9, z=-28}, {name="default:wood"})
	minetest.set_node({x=-151, y=9, z=-26}, {name="default:wood"})
	minetest.set_node({x=-150, y=9, z=-27}, {name="default:wood"})
	minetest.set_node({x=-149, y=9, z=-27}, {name="default:wood"})
	
	for i=25,29 do
		minetest.set_node({x=-169, y=10, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-168, y=10, z=-30}, {name="default:wood"})
	minetest.set_node({x=-168, y=10, z=-24}, {name="default:wood"})
	minetest.set_node({x=-168, y=8, z=-25}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-168, y=8, z=-26}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-168, y=8, z=-28}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-168, y=8, z=-29}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-25}, above={x=-168, y=8, z=-25}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-26}, above={x=-168, y=8, z=-26}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-28}, above={x=-168, y=8, z=-28}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-29}, above={x=-168, y=8, z=-29}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-25}, above={x=-168, y=8, z=-25}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-26}, above={x=-168, y=8, z=-26}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-28}, above={x=-168, y=8, z=-28}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-29}, above={x=-168, y=8, z=-29}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-25}, above={x=-168, y=8, z=-25}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-26}, above={x=-168, y=8, z=-26}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-28}, above={x=-168, y=8, z=-28}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-29}, above={x=-168, y=8, z=-29}}, 1)
	
	minetest.set_node({x=-167, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-167, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-167, y=8, z=-30}, above={x=-167, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-167, y=8, z=-30}, above={x=-167, y=8, z=-30}}, 1)
	minetest.set_node({x=-165, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-165, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-165, y=8, z=-30}, above={x=-165, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-165, y=8, z=-30}, above={x=-165, y=8, z=-30}}, 1)
	minetest.set_node({x=-164, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-164, y=8, z=-30}, above={x=-164, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-164, y=8, z=-30}, above={x=-164, y=8, z=-30}}, 1)
	minetest.set_node({x=-163, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-163, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-163, y=8, z=-30}, above={x=-163, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-163, y=8, z=-30}, above={x=-163, y=8, z=-30}}, 1)
	minetest.set_node({x=-161, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-161, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-161, y=8, z=-30}, above={x=-161, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-161, y=8, z=-30}, above={x=-161, y=8, z=-30}}, 1)
	minetest.set_node({x=-159, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-159, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-159, y=8, z=-30}, above={x=-159, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-159, y=8, z=-30}, above={x=-159, y=8, z=-30}}, 1)
	minetest.set_node({x=-157, y=8, z=-24}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-157, y=8, z=-30}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-157, y=8, z=-30}, above={x=-157, y=8, z=-30}}, 1)
	screwdriver_handler(player, {type="node", under={x=-157, y=8, z=-30}, above={x=-157, y=8, z=-30}}, 1)
	minetest.set_node({x=-156, y=8, z=-25}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-156, y=8, z=-29}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-156, y=8, z=-29}, above={x=-156, y=8, z=-29}}, 1)
	screwdriver_handler(player, {type="node", under={x=-156, y=8, z=-29}, above={x=-156, y=8, z=-29}}, 1)
	minetest.set_node({x=-155, y=8, z=-25}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-155, y=8, z=-29}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-155, y=8, z=-29}, above={x=-155, y=8, z=-29}}, 1)
	screwdriver_handler(player, {type="node", under={x=-155, y=8, z=-29}, above={x=-155, y=8, z=-29}}, 1)
	minetest.set_node({x=-154, y=8, z=-26}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-154, y=8, z=-28}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-154, y=8, z=-28}, above={x=-154, y=8, z=-28}}, 1)
	screwdriver_handler(player, {type="node", under={x=-154, y=8, z=-28}, above={x=-154, y=8, z=-28}}, 1)
	minetest.set_node({x=-153, y=8, z=-26}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-153, y=8, z=-28}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-153, y=8, z=-28}, above={x=-153, y=8, z=-28}}, 1)
	screwdriver_handler(player, {type="node", under={x=-153, y=8, z=-28}, above={x=-153, y=8, z=-28}}, 1)
	minetest.set_node({x=-152, y=8, z=-27}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-152, y=8, z=-27}, above={x=-152, y=8, z=-27}}, 1)
	
	for i=25,29 do
		minetest.set_node({x=-169, y=11, z=i*(-1)}, {name="default:fence_wood"})
	end
	minetest.set_node({x=-168, y=11, z=-30}, {name="default:fence_wood"})
	minetest.set_node({x=-168, y=11, z=-24}, {name="default:fence_wood"})
	for j=157,167 do
		minetest.set_node({x=j*(-1), y=10, z=-23}, {name="default:fence_wood"})
		minetest.set_node({x=j*(-1), y=10, z=-31}, {name="default:fence_wood"})
	end
	minetest.set_node({x=-164, y=10, z=-31}, {name="air"})
	
	minetest.set_node({x=-156, y=10, z=-30}, {name="default:fence_wood"})
	minetest.set_node({x=-156, y=10, z=-24}, {name="default:fence_wood"})
	minetest.set_node({x=-155, y=10, z=-30}, {name="default:fence_wood"})
	minetest.set_node({x=-155, y=10, z=-24}, {name="default:fence_wood"})
	minetest.set_node({x=-154, y=10, z=-29}, {name="default:fence_wood"})
	minetest.set_node({x=-154, y=10, z=-25}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=10, z=-29}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=10, z=-25}, {name="default:fence_wood"})
	minetest.set_node({x=-152, y=10, z=-28}, {name="default:fence_wood"})
	minetest.set_node({x=-152, y=10, z=-26}, {name="default:fence_wood"})
	minetest.set_node({x=-151, y=10, z=-28}, {name="default:fence_wood"})
	minetest.set_node({x=-151, y=10, z=-26}, {name="default:fence_wood"})
	minetest.set_node({x=-150, y=10, z=-27}, {name="default:fence_wood"})
	minetest.set_node({x=-149, y=10, z=-27}, {name="default:fence_wood"})
	for k=8,14 do
        minetest.set_node({x=-159, y=k, z=-27}, {name="default:wood"})
    end
	minetest.set_node({x=-159, y=14, z=-28}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-29}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-26}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-25}, {name="default:fence_wood"})
	
	for k=8,16 do
        minetest.set_node({x=-165, y=k, z=-27}, {name="default:wood"})
    end
	minetest.set_node({x=-165, y=16, z=-26}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-25}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-24}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-23}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-28}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-29}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-30}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-31}, {name="default:fence_wood"})
	
	minetest.set_node({x=-168, y=9, z=-27}, {name="castrum:pirate_captain"})
	screwdriver_handler(player, {type="node", under={x=-168, y=9, z=-27}, above={x=-168, y=9, z=-27}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=9, z=-27}, above={x=-168, y=9, z=-27}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=9, z=-27}, above={x=-168, y=9, z=-27}}, 1)
	for i=23,31 do
		minetest.set_node({x=-164, y=16, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-163, y=15, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-163, y=14, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-163, y=13, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-164, y=12, z=i*(-1)}, {name="wool:white"})
    end
	for i=25,29 do
		minetest.set_node({x=-158, y=14, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-157, y=13, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-157, y=12, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-158, y=11, z=i*(-1)}, {name="wool:white"})
    end
	minetest.set_node({x=-156, y=7, z=-27}, {name="castrum:turn_ship"})
	minetest.set_node({x=-162, y=7, z=-27}, {name="castrum:island_start_fight"})
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "r")
	local level = file:read("*l")
    file:close()
	if tonumber(level) == 1 then
		minetest.set_node({x=-166, y=9, z=-31}, {name="castrum:cannon_1_1"})
		screwdriver_handler(player, {type="node", under={x=-166, y=9, z=-31}, above={x=-166, y=9, z=-31}}, 1)
		screwdriver_handler(player, {type="node", under={x=-166, y=9, z=-31}, above={x=-166, y=9, z=-31}}, 1)
	end
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "r")
	local level = file:read("*l")
    file:close()
	if tonumber(level) == 1 then
		minetest.set_node({x=-166, y=9, z=-23}, {name="castrum:cannon_1_1"})
	end
	if pirate1 == 1 then
		minetest.set_node({x=-166, y=8, z=-30}, {name="castrum:pirate_lv1"})
	end
	if pirate2 == 1 then
		minetest.set_node({x=-166, y=8, z=-24}, {name="castrum:pirate_lv1"})
		screwdriver_handler(player, {type="node", under={x=-166, y=8, z=-24}, above={x=-166, y=8, z=-24}}, 1)
		screwdriver_handler(player, {type="node", under={x=-166, y=8, z=-24}, above={x=-166, y=8, z=-24}}, 1)
		if player:get_attribute("sea_fight_step_1c2") == "0" then
			minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_ready"})
		elseif player:get_attribute("sea_fight_step_1c2") == "1" then
			minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_1"})
		elseif player:get_attribute("sea_fight_step_1c2") == "2" then
			minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_2"})
		elseif player:get_attribute("sea_fight_step_1c2") == "3" then
			minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_3"})
		elseif player:get_attribute("sea_fight_step_1c2") == "4" then
			minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_4"})
		elseif player:get_attribute("sea_fight_step_1c2") == "5" then
			minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_5"})
		end
	end
end
function Chapter_Ship2_1(player)
	for j=149,169 do
        for i=2,10 do
			for k=7,20 do
				minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
			end
        end
    end
	for j=149,169 do
        for i=2,10 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="castrum:water"})
        end
    end
	for j=150,161 do
        for i=3,9 do
            minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
        end
    end
	for j=162,163 do
		for i=4,8 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
		end
	end
	for j=164,165 do
		for i=5,7 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
		end
	end
	for j=166,167 do
		minetest.set_node({x=j*(-1), y=7, z=-6}, {name="default:wood"})
	end
	for j=151,161 do
		minetest.set_node({x=j*(-1), y=8, z=-2}, {name="default:wood"})
		minetest.set_node({x=j*(-1), y=8, z=-10}, {name="default:wood"})
	end
	for i=4,8 do
		minetest.set_node({x=-149, y=8, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-150, y=8, z=-9}, {name="default:wood"})
	minetest.set_node({x=-150, y=8, z=-6}, {name="default:wood"})
	minetest.set_node({x=-150, y=8, z=-3}, {name="default:wood"})
	minetest.set_node({x=-162, y=8, z=-9}, {name="default:wood"})
	minetest.set_node({x=-162, y=8, z=-3}, {name="default:wood"})
	minetest.set_node({x=-164, y=8, z=-8}, {name="default:wood"})
	minetest.set_node({x=-164, y=8, z=-4}, {name="default:wood"})
	minetest.set_node({x=-166, y=8, z=-7}, {name="default:wood"})
	minetest.set_node({x=-166, y=8, z=-5}, {name="default:wood"})
	minetest.set_node({x=-167, y=8, z=-6}, {name="default:wood"})
	minetest.set_node({x=-168, y=8, z=-6}, {name="default:wood"})
	for i=4,8 do
		minetest.set_node({x=-149, y=9, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-150, y=9, z=-9}, {name="default:wood"})
	minetest.set_node({x=-150, y=9, z=-3}, {name="default:wood"})
	minetest.set_node({x=-151, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-151, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-153, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-153, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-155, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-155, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-157, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-157, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-159, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-159, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-161, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-161, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-162, y=9, z=-9}, {name="default:wood"})
	minetest.set_node({x=-162, y=9, z=-3}, {name="default:wood"})
	minetest.set_node({x=-163, y=9, z=-9}, {name="default:wood"})
	minetest.set_node({x=-163, y=9, z=-3}, {name="default:wood"})
	minetest.set_node({x=-164, y=9, z=-8}, {name="default:wood"})
	minetest.set_node({x=-164, y=9, z=-4}, {name="default:wood"})
	minetest.set_node({x=-165, y=9, z=-8}, {name="default:wood"})
	minetest.set_node({x=-165, y=9, z=-4}, {name="default:wood"})
	minetest.set_node({x=-166, y=9, z=-7}, {name="default:wood"})
	minetest.set_node({x=-166, y=9, z=-5}, {name="default:wood"})
	minetest.set_node({x=-167, y=9, z=-7}, {name="default:wood"})
	minetest.set_node({x=-167, y=9, z=-5}, {name="default:wood"})
	minetest.set_node({x=-168, y=9, z=-6}, {name="default:wood"})
	minetest.set_node({x=-169, y=9, z=-6}, {name="default:wood"})
	for i=4,8 do
		minetest.set_node({x=-149, y=10, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-150, y=10, z=-9}, {name="default:wood"})
	minetest.set_node({x=-150, y=10, z=-3}, {name="default:wood"})
	minetest.set_node({x=-150, y=8, z=-4}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-150, y=8, z=-5}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-150, y=8, z=-7}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-150, y=8, z=-8}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-150, y=8, z=-4}, above={x=-150, y=8, z=-4}}, 1)
	screwdriver_handler(player, {type="node", under={x=-150, y=8, z=-5}, above={x=-150, y=8, z=-5}}, 1)
	screwdriver_handler(player, {type="node", under={x=-150, y=8, z=-7}, above={x=-150, y=8, z=-7}}, 1)
	screwdriver_handler(player, {type="node", under={x=-150, y=8, z=-8}, above={x=-150, y=8, z=-8}}, 1)
	minetest.set_node({x=-151, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-151, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-151, y=8, z=-9}, above={x=-151, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-151, y=8, z=-9}, above={x=-151, y=8, z=-9}}, 1)
	minetest.set_node({x=-153, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-153, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-153, y=8, z=-9}, above={x=-153, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-153, y=8, z=-9}, above={x=-153, y=8, z=-9}}, 1)
	minetest.set_node({x=-154, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-154, y=8, z=-9}, above={x=-154, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-154, y=8, z=-9}, above={x=-154, y=8, z=-9}}, 1)
	minetest.set_node({x=-155, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-155, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-155, y=8, z=-9}, above={x=-155, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-155, y=8, z=-9}, above={x=-155, y=8, z=-9}}, 1)
	minetest.set_node({x=-157, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-157, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-157, y=8, z=-9}, above={x=-157, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-157, y=8, z=-9}, above={x=-157, y=8, z=-9}}, 1)
	minetest.set_node({x=-159, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-159, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-159, y=8, z=-9}, above={x=-159, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-159, y=8, z=-9}, above={x=-159, y=8, z=-9}}, 1)
	minetest.set_node({x=-161, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-161, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-161, y=8, z=-9}, above={x=-161, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-161, y=8, z=-9}, above={x=-161, y=8, z=-9}}, 1)
	minetest.set_node({x=-162, y=8, z=-4}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-162, y=8, z=-8}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-162, y=8, z=-8}, above={x=-162, y=8, z=-8}}, 1)
	screwdriver_handler(player, {type="node", under={x=-162, y=8, z=-8}, above={x=-162, y=8, z=-8}}, 1)
	minetest.set_node({x=-163, y=8, z=-4}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-163, y=8, z=-8}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-163, y=8, z=-8}, above={x=-163, y=8, z=-8}}, 1)
	screwdriver_handler(player, {type="node", under={x=-163, y=8, z=-8}, above={x=-163, y=8, z=-8}}, 1)
	minetest.set_node({x=-164, y=8, z=-5}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-164, y=8, z=-7}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-164, y=8, z=-7}, above={x=-164, y=8, z=-7}}, 1)
	screwdriver_handler(player, {type="node", under={x=-164, y=8, z=-7}, above={x=-164, y=8, z=-7}}, 1)
	minetest.set_node({x=-165, y=8, z=-5}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-165, y=8, z=-7}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-165, y=8, z=-7}, above={x=-165, y=8, z=-7}}, 1)
	screwdriver_handler(player, {type="node", under={x=-165, y=8, z=-7}, above={x=-165, y=8, z=-7}}, 1)
	minetest.set_node({x=-166, y=8, z=-6}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-166, y=8, z=-6}, above={x=-166, y=8, z=-6}}, 1)
	screwdriver_handler(player, {type="node", under={x=-166, y=8, z=-6}, above={x=-166, y=8, z=-6}}, 1)
	screwdriver_handler(player, {type="node", under={x=-166, y=8, z=-6}, above={x=-166, y=8, z=-6}}, 1)
	for i=4,8 do
		minetest.set_node({x=-149, y=11, z=i*(-1)}, {name="default:fence_wood"})
	end
	minetest.set_node({x=-150, y=11, z=-9}, {name="default:fence_wood"})
	minetest.set_node({x=-150, y=11, z=-3}, {name="default:fence_wood"})
	for j=151,161 do
		minetest.set_node({x=j*(-1), y=10, z=-2}, {name="default:fence_wood"})
		minetest.set_node({x=j*(-1), y=10, z=-10}, {name="default:fence_wood"})
	end
	minetest.set_node({x=-154, y=10, z=-10}, {name="air"})
	minetest.set_node({x=-162, y=10, z=-9}, {name="default:fence_wood"})
	minetest.set_node({x=-162, y=10, z=-3}, {name="default:fence_wood"})
	minetest.set_node({x=-163, y=10, z=-9}, {name="default:fence_wood"})
	minetest.set_node({x=-163, y=10, z=-3}, {name="default:fence_wood"})
	minetest.set_node({x=-164, y=10, z=-8}, {name="default:fence_wood"})
	minetest.set_node({x=-164, y=10, z=-4}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=10, z=-8}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=10, z=-4}, {name="default:fence_wood"})
	minetest.set_node({x=-166, y=10, z=-7}, {name="default:fence_wood"})
	minetest.set_node({x=-166, y=10, z=-5}, {name="default:fence_wood"})
	minetest.set_node({x=-167, y=10, z=-7}, {name="default:fence_wood"})
	minetest.set_node({x=-167, y=10, z=-5}, {name="default:fence_wood"})
	minetest.set_node({x=-168, y=10, z=-6}, {name="default:fence_wood"})
	minetest.set_node({x=-169, y=10, z=-6}, {name="default:fence_wood"})
	for k=8,14 do
        minetest.set_node({x=-159, y=k, z=-6}, {name="default:wood"})
    end
	minetest.set_node({x=-159, y=14, z=-7}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-8}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-5}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-4}, {name="default:fence_wood"})
	for k=8,16 do
        minetest.set_node({x=-153, y=k, z=-6}, {name="default:wood"})
    end
	minetest.set_node({x=-153, y=16, z=-5}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-4}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-3}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-2}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-7}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-8}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-9}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=16, z=-10}, {name="default:fence_wood"})
	minetest.set_node({x=-150, y=9, z=-6}, {name="castrum:skeleton_captain"})
	screwdriver_handler(player, {type="node", under={x=-150, y=9, z=-6}, above={x=-150, y=9, z=-6}}, 1)
	for i=2,10 do
		minetest.set_node({x=-154, y=16, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-155, y=15, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-155, y=14, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-155, y=13, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-154, y=12, z=i*(-1)}, {name="wool:white"})
    end
	for i=4,8 do
		minetest.set_node({x=-160, y=14, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-161, y=13, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-161, y=12, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-160, y=11, z=i*(-1)}, {name="wool:white"})
    end
	local c1 = player:get_attribute("sea_fight_c1")
	if c1 == "1" then
		minetest.set_node({x=-152, y=9, z=-10}, {name="castrum:cannon_1_1"})
		screwdriver_handler(player, {type="node", under={x=-152, y=9, z=-10}, above={x=-152, y=9, z=-10}}, 1)
		screwdriver_handler(player, {type="node", under={x=-152, y=9, z=-10}, above={x=-152, y=9, z=-10}}, 1)
	end
	local c2 = player:get_attribute("sea_fight_c2")
	if c2 == "1" then
		minetest.set_node({x=-152, y=9, z=-2}, {name="castrum:cannon_1_1"})
	end
	local p1 = player:get_attribute("sea_fight_p1")
	if p1 == "1" then
		minetest.set_node({x=-152, y=8, z=-9}, {name="castrum:skeleton_lv1"})
	end
	local p2 = player:get_attribute("sea_fight_p2")
	if p2 == "1" then
		minetest.set_node({x=-152, y=8, z=-3}, {name="castrum:skeleton_lv1"})
		screwdriver_handler(player, {type="node", under={x=-152, y=8, z=-3}, above={x=-152, y=8, z=-3}}, 1)
		screwdriver_handler(player, {type="node", under={x=-152, y=8, z=-3}, above={x=-152, y=8, z=-3}}, 1)
	end
end
function Chapter_Ship2_2(player)
	for j=149,169 do
        for i=2,10 do
			for k=7,20 do
				minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
			end
        end
    end
	for j=149,169 do
        for i=2,10 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="castrum:water"})
        end
    end
	for j=157,168 do
        for i=3,9 do
            minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
        end
    end
	
	for j=155,156 do
		for i=4,8 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
		end
	end
	
	for j=153,154 do
		for i=5,7 do
			minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
		end
	end
	for j=151,152 do
		minetest.set_node({x=j*(-1), y=7, z=-6}, {name="default:wood"})
	end
	
	for j=157,167 do
		minetest.set_node({x=j*(-1), y=8, z=-2}, {name="default:wood"})
		minetest.set_node({x=j*(-1), y=8, z=-10}, {name="default:wood"})
	end
	for i=4,8 do
		minetest.set_node({x=-169, y=8, z=i*(-1)}, {name="default:wood"})
	end
	
	minetest.set_node({x=-168, y=8, z=-9}, {name="default:wood"})
	minetest.set_node({x=-168, y=8, z=-6}, {name="default:wood"})
	minetest.set_node({x=-168, y=8, z=-3}, {name="default:wood"})
	minetest.set_node({x=-156, y=8, z=-9}, {name="default:wood"})
	minetest.set_node({x=-156, y=8, z=-3}, {name="default:wood"})
	minetest.set_node({x=-154, y=8, z=-8}, {name="default:wood"})
	minetest.set_node({x=-154, y=8, z=-4}, {name="default:wood"})
	minetest.set_node({x=-152, y=8, z=-7}, {name="default:wood"})
	minetest.set_node({x=-152, y=8, z=-5}, {name="default:wood"})
	minetest.set_node({x=-151, y=8, z=-6}, {name="default:wood"})
	minetest.set_node({x=-150, y=8, z=-6}, {name="default:wood"})
	
	for i=4,8 do
		minetest.set_node({x=-169, y=9, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-168, y=9, z=-9}, {name="default:wood"})
	minetest.set_node({x=-168, y=9, z=-3}, {name="default:wood"})
	minetest.set_node({x=-167, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-167, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-165, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-165, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-163, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-163, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-161, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-161, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-159, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-159, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-157, y=9, z=-10}, {name="default:wood"})
	minetest.set_node({x=-157, y=9, z=-2}, {name="default:wood"})
	minetest.set_node({x=-156, y=9, z=-9}, {name="default:wood"})
	minetest.set_node({x=-156, y=9, z=-3}, {name="default:wood"})
	minetest.set_node({x=-155, y=9, z=-9}, {name="default:wood"})
	minetest.set_node({x=-155, y=9, z=-3}, {name="default:wood"})
	minetest.set_node({x=-154, y=9, z=-8}, {name="default:wood"})
	minetest.set_node({x=-154, y=9, z=-4}, {name="default:wood"})
	minetest.set_node({x=-153, y=9, z=-8}, {name="default:wood"})
	minetest.set_node({x=-153, y=9, z=-4}, {name="default:wood"})
	minetest.set_node({x=-152, y=9, z=-7}, {name="default:wood"})
	minetest.set_node({x=-152, y=9, z=-5}, {name="default:wood"})
	minetest.set_node({x=-151, y=9, z=-7}, {name="default:wood"})
	minetest.set_node({x=-151, y=9, z=-5}, {name="default:wood"})
	minetest.set_node({x=-150, y=9, z=-6}, {name="default:wood"})
	minetest.set_node({x=-149, y=9, z=-6}, {name="default:wood"})
	
	for i=4,8 do
		minetest.set_node({x=-169, y=10, z=i*(-1)}, {name="default:wood"})
	end
	minetest.set_node({x=-168, y=10, z=-9}, {name="default:wood"})
	minetest.set_node({x=-168, y=10, z=-3}, {name="default:wood"})
	minetest.set_node({x=-168, y=8, z=-4}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-168, y=8, z=-5}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-168, y=8, z=-7}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-168, y=8, z=-8}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-4}, above={x=-168, y=8, z=-4}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-5}, above={x=-168, y=8, z=-5}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-7}, above={x=-168, y=8, z=-7}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-8}, above={x=-168, y=8, z=-8}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-4}, above={x=-168, y=8, z=-4}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-5}, above={x=-168, y=8, z=-5}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-7}, above={x=-168, y=8, z=-7}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-8}, above={x=-168, y=8, z=-8}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-4}, above={x=-168, y=8, z=-4}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-5}, above={x=-168, y=8, z=-5}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-7}, above={x=-168, y=8, z=-7}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=8, z=-8}, above={x=-168, y=8, z=-8}}, 1)
	
	minetest.set_node({x=-167, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-167, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-167, y=8, z=-9}, above={x=-167, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-167, y=8, z=-9}, above={x=-167, y=8, z=-9}}, 1)
	minetest.set_node({x=-165, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-165, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-165, y=8, z=-9}, above={x=-165, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-165, y=8, z=-9}, above={x=-165, y=8, z=-9}}, 1)
	minetest.set_node({x=-164, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-163, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-163, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-163, y=8, z=-9}, above={x=-163, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-163, y=8, z=-9}, above={x=-163, y=8, z=-9}}, 1)
	minetest.set_node({x=-161, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-161, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-161, y=8, z=-9}, above={x=-161, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-161, y=8, z=-9}, above={x=-161, y=8, z=-9}}, 1)
	minetest.set_node({x=-159, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-159, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-159, y=8, z=-9}, above={x=-159, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-159, y=8, z=-9}, above={x=-159, y=8, z=-9}}, 1)
	minetest.set_node({x=-157, y=8, z=-3}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-157, y=8, z=-9}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-157, y=8, z=-9}, above={x=-157, y=8, z=-9}}, 1)
	screwdriver_handler(player, {type="node", under={x=-157, y=8, z=-9}, above={x=-157, y=8, z=-9}}, 1)
	minetest.set_node({x=-156, y=8, z=-4}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-156, y=8, z=-8}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-156, y=8, z=-8}, above={x=-156, y=8, z=-8}}, 1)
	screwdriver_handler(player, {type="node", under={x=-156, y=8, z=-8}, above={x=-156, y=8, z=-8}}, 1)
	minetest.set_node({x=-155, y=8, z=-4}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-155, y=8, z=-8}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-155, y=8, z=-8}, above={x=-155, y=8, z=-8}}, 1)
	screwdriver_handler(player, {type="node", under={x=-155, y=8, z=-8}, above={x=-155, y=8, z=-8}}, 1)
	minetest.set_node({x=-154, y=8, z=-5}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-154, y=8, z=-7}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-154, y=8, z=-7}, above={x=-154, y=8, z=-7}}, 1)
	screwdriver_handler(player, {type="node", under={x=-154, y=8, z=-7}, above={x=-154, y=8, z=-7}}, 1)
	minetest.set_node({x=-153, y=8, z=-5}, {name="stairs:stair_castrum_wood"})
	minetest.set_node({x=-153, y=8, z=-7}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-153, y=8, z=-7}, above={x=-153, y=8, z=-7}}, 1)
	screwdriver_handler(player, {type="node", under={x=-153, y=8, z=-7}, above={x=-153, y=8, z=-7}}, 1)
	minetest.set_node({x=-152, y=8, z=-6}, {name="stairs:stair_castrum_wood"})
	screwdriver_handler(player, {type="node", under={x=-152, y=8, z=-6}, above={x=-152, y=8, z=-6}}, 1)
	
	for i=4,8 do
		minetest.set_node({x=-169, y=11, z=i*(-1)}, {name="default:fence_wood"})
	end
	minetest.set_node({x=-168, y=11, z=-9}, {name="default:fence_wood"})
	minetest.set_node({x=-168, y=11, z=-3}, {name="default:fence_wood"})
	for j=157,167 do
		minetest.set_node({x=j*(-1), y=10, z=-2}, {name="default:fence_wood"})
		minetest.set_node({x=j*(-1), y=10, z=-10}, {name="default:fence_wood"})
	end
	minetest.set_node({x=-164, y=10, z=-2}, {name="air"})
	
	minetest.set_node({x=-156, y=10, z=-9}, {name="default:fence_wood"})
	minetest.set_node({x=-156, y=10, z=-3}, {name="default:fence_wood"})
	minetest.set_node({x=-155, y=10, z=-9}, {name="default:fence_wood"})
	minetest.set_node({x=-155, y=10, z=-3}, {name="default:fence_wood"})
	minetest.set_node({x=-154, y=10, z=-8}, {name="default:fence_wood"})
	minetest.set_node({x=-154, y=10, z=-4}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=10, z=-8}, {name="default:fence_wood"})
	minetest.set_node({x=-153, y=10, z=-4}, {name="default:fence_wood"})
	minetest.set_node({x=-152, y=10, z=-7}, {name="default:fence_wood"})
	minetest.set_node({x=-152, y=10, z=-5}, {name="default:fence_wood"})
	minetest.set_node({x=-151, y=10, z=-7}, {name="default:fence_wood"})
	minetest.set_node({x=-151, y=10, z=-5}, {name="default:fence_wood"})
	minetest.set_node({x=-150, y=10, z=-6}, {name="default:fence_wood"})
	minetest.set_node({x=-149, y=10, z=-6}, {name="default:fence_wood"})
	for k=8,14 do
        minetest.set_node({x=-159, y=k, z=-6}, {name="default:wood"})
    end
	minetest.set_node({x=-159, y=14, z=-7}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-8}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-5}, {name="default:fence_wood"})
	minetest.set_node({x=-159, y=14, z=-4}, {name="default:fence_wood"})
	
	for k=8,16 do
        minetest.set_node({x=-165, y=k, z=-6}, {name="default:wood"})
    end
	minetest.set_node({x=-165, y=16, z=-5}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-4}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-3}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-2}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-7}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-8}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-9}, {name="default:fence_wood"})
	minetest.set_node({x=-165, y=16, z=-10}, {name="default:fence_wood"})
	
	minetest.set_node({x=-168, y=9, z=-6}, {name="castrum:skeleton_captain"})
	screwdriver_handler(player, {type="node", under={x=-168, y=9, z=-6}, above={x=-168, y=9, z=-6}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=9, z=-6}, above={x=-168, y=9, z=-6}}, 1)
	screwdriver_handler(player, {type="node", under={x=-168, y=9, z=-6}, above={x=-168, y=9, z=-6}}, 1)
	for i=2,10 do
		minetest.set_node({x=-164, y=16, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-163, y=15, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-163, y=14, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-163, y=13, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-164, y=12, z=i*(-1)}, {name="wool:white"})
    end
	for i=4,8 do
		minetest.set_node({x=-158, y=14, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-157, y=13, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-157, y=12, z=i*(-1)}, {name="wool:white"})
		minetest.set_node({x=-158, y=11, z=i*(-1)}, {name="wool:white"})
    end
	local c1 = player:get_attribute("sea_fight_c1")
	if c1 == "1" then
		minetest.set_node({x=-166, y=9, z=-2}, {name="castrum:cannon_1_1"})
	end
	local c2 = player:get_attribute("sea_fight_c2")
	if c2 == "1" then
		minetest.set_node({x=-166, y=9, z=-10}, {name="castrum:cannon_1_1"})
		screwdriver_handler(player, {type="node", under={x=-166, y=9, z=-10}, above={x=-166, y=9, z=-10}}, 1)
		screwdriver_handler(player, {type="node", under={x=-166, y=9, z=-10}, above={x=-166, y=9, z=-10}}, 1)
	end
	local p1 = player:get_attribute("sea_fight_p1")
	if p1 == "1" then
		minetest.set_node({x=-166, y=8, z=-3}, {name="castrum:skeleton_lv1"})
	end
	local p2 = player:get_attribute("sea_fight_p2")
	if p2 == "1" then
		minetest.set_node({x=-166, y=8, z=-9}, {name="castrum:skeleton_lv1"})
		screwdriver_handler(player, {type="node", under={x=-152, y=8, z=-3}, above={x=-152, y=8, z=-3}}, 1)
		screwdriver_handler(player, {type="node", under={x=-152, y=8, z=-3}, above={x=-152, y=8, z=-3}}, 1)
	end
end

local island_start_fight = {}
island_start_fight.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."button[0,2;5,1;;Start Fight]"
        .."button[0,3;5,1;;Go Back]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_go_back = {}
island_go_back.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1.4;If you go back, you will lose your placed pirates!]"
		.."label[0,1.7;Go Back?]"
        .."button[0,2;2.5,1;;Yes]"
        .."button[2.5,2;2.5,1;;No]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
local island_fight = {}
island_fight.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "r")
	local sail1 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "r")
	local sail2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "r")
	local cannon1 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "r")
	local cannon2 = file:read("*l")
    file:close()
	local turn = 0
	if tonumber(sail1) == 1 then
		turn = turn+4
	end
	if tonumber(sail2) == 1 then
		turn = turn+2
	end
	local pos1 = player:get_attribute("sea_fight_pos1")
	local sc1 = "ready"
	local sc2 = "ready"
	local pc1 = 0
	local pc2 = 0
	
	if tonumber(pos1) == 1 then
		if minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
			pc1 = 15
		else
			sc1 = "no pirate"
		end
		if minetest.get_node({x=-152, y=8, z=-30}).name == "castrum:pirate_lv1" then
			pc2 = 15
		else
			sc2 = "no pirate"
		end
	end
	if tonumber(cannon1) == 0 then
		sc1 = "missing"
	end
	if tonumber(cannon2) == 0 then
		sc2 = "missing"
	end
	if tonumber(pos1) == 1 then
		sc2 = "no enemy"
	end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."button[0,1;1,1;;Cannon 1\n"..sc1.."]"
        .."button[4,1;1,1;;Cannon 2\n"..sc2.."]"
        .."button[4,2;1,1;;Cannon 3\nmissing]"
		.."button[0,3;1,1;;Cannon 4\nmissing]"
        .."button[4,3;1,1;;Cannon 5\nmissing]"
		.."button[0,4;1,1;;Cannon 6\nmissing]"
        .."button[4,4;1,1;;Cannon 7\nmissing]"
		.."button[0,5;1,1;;Cannon 8\nmissing]"
        .."button[4,5;1,1;;Cannon 9\nmissing]"
		.."button[1.5,2.5;2,1;;Turn the Ship]"
		.."label[2.2,3.2;"..turn.."%]"
		.."label[0.2,1.7;"..pc1.."%]"
		.."label[4.2,1.7;"..pc2.."%]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end
minetest.register_node("castrum:island_start_fight",{
	tiles  = {"default_diamond_block.png"},
	description = "Start island fight",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_start_fight" , island_start_fight.get_formspec(player))
    end,
})
minetest.register_node("castrum:fire_cannon_ready",{
	tiles  = {"castrum_bridge_status.png"},
	description = "Fire Cannon (ready)",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
		local pos1 = player:get_attribute("sea_fight_pos1")
		if tonumber(pos1) == 1 then
			if pos.x == -152 then
				if minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
					if minetest.get_node({x=-152, y=9, z=-23}).name == "castrum:cannon_1_1" then
						if math.random(100) < 31 then
							player:set_attribute("sea_fight_e_hp", ""..tonumber(player:get_attribute("sea_fight_e_hp")-2))
							minetest.chat_send_player(player:get_player_name(), "Hit! You have done 2 hp damage. The enemy has "..player:get_attribute("sea_fight_e_hp").." hp left.")
						else
							minetest.chat_send_player(player:get_player_name(), "You did not hit the enemy!")
						end
					end
				end
				minetest.set_node(pos, {name="castrum:fire_cannon_5"})
				player:set_attribute("sea_fight_step_1c1", "5")
				if tonumber(player:get_attribute("sea_fight_step_1c2")) > 0 then
					player:set_attribute("sea_fight_step_1c2", ""..tonumber(player:get_attribute("sea_fight_step_1c2"))-1)
				end
			end
		else
			if pos.x == -166 then
				if minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
					if minetest.get_node({x=-166, y=9, z=-23}).name == "castrum:cannon_1_1" then
						if math.random(100) < 31 then
							player:set_attribute("sea_fight_e_hp", ""..tonumber(player:get_attribute("sea_fight_e_hp")-2))
							minetest.chat_send_player(player:get_player_name(), "Hit! You have done 2 hp damage. The enemy has "..player:get_attribute("sea_fight_e_hp").." hp left.")
						else
							minetest.chat_send_player(player:get_player_name(), "You did not hit the enemy!")
						end
					end
				end
				minetest.set_node(pos, {name="castrum:fire_cannon_5"})
				player:set_attribute("sea_fight_step_1c2", "5")
				if tonumber(player:get_attribute("sea_fight_step_1c1")) > 0 then
					player:set_attribute("sea_fight_step_1c1", ""..tonumber(player:get_attribute("sea_fight_step_1c1"))-1)
				end
			end
		end
		if pos1 == "1" then
			if player:get_attribute("sea_fight_step_1c1") == "0" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_ready"})
			elseif player:get_attribute("sea_fight_step_1c1") == "1" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_1"})
			elseif player:get_attribute("sea_fight_step_1c1") == "2" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_2"})
			elseif player:get_attribute("sea_fight_step_1c1") == "3" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_3"})
			elseif player:get_attribute("sea_fight_step_1c1") == "4" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_4"})
			elseif player:get_attribute("sea_fight_step_1c1") == "5" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_5"})
			end
		else
			if player:get_attribute("sea_fight_step_1c2") == "0" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_ready"})
			elseif player:get_attribute("sea_fight_step_1c2") == "1" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_1"})
			elseif player:get_attribute("sea_fight_step_1c2") == "2" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_2"})
			elseif player:get_attribute("sea_fight_step_1c2") == "3" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_3"})
			elseif player:get_attribute("sea_fight_step_1c2") == "4" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_4"})
			elseif player:get_attribute("sea_fight_step_1c2") == "5" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_5"})
			end
		end
		Check1(player)
    end,
})
minetest.register_node("castrum:fire_cannon_1",{
	tiles  = {"castrum_fire_cannon1.png"},
	description = "Fire Cannon (1 Round)",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
    end,
})
minetest.register_node("castrum:fire_cannon_2",{
	tiles  = {"castrum_fire_cannon2.png"},
	description = "Fire Cannon (2 Rounds)",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
    end,
})
minetest.register_node("castrum:fire_cannon_3",{
	tiles  = {"castrum_fire_cannon3.png"},
	description = "Fire Cannon (3 Rounds)",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
    end,
})
minetest.register_node("castrum:fire_cannon_4",{
	tiles  = {"castrum_fire_cannon4.png"},
	description = "Fire Cannon (4 Rounds)",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
    end,
})
minetest.register_node("castrum:fire_cannon_5",{
	tiles  = {"castrum_fire_cannon5.png"},
	description = "Fire Cannon (5 Rounds)",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
    end,
})
minetest.register_node("castrum:turn_ship",{
	tiles  = {"castrum_bridge_status.png"},
	description = "Turn Ship",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
		local pos1 = player:get_attribute("sea_fight_pos1")
		file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "r")
		local sail1 = file:read("*l")
		file:close()
		file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "r")
		local sail2 = file:read("*l")
		file:close()
		local p = tonumber(sail1)*3+ tonumber(sail2)*2+25
		if math.random(100) < (p+1) then
			if tonumber(pos1) == 1 then
				player:set_attribute("sea_fight_pos1", "2")
				Chapter_Ship1_2(player)
			else
				player:set_attribute("sea_fight_pos1", "1")
				Chapter_Ship1_1(player)		
			end
			minetest.chat_send_player(player:get_player_name(), "You turned the ship successfully")
		else
			minetest.chat_send_player(player:get_player_name(), "You did not turn the ship")
		end
		if tonumber(player:get_attribute("sea_fight_step_1c1")) > 0 then
			player:set_attribute("sea_fight_step_1c1", ""..tonumber(player:get_attribute("sea_fight_step_1c1"))-1)
		end
		if tonumber(player:get_attribute("sea_fight_step_1c2")) > 0 then
			player:set_attribute("sea_fight_step_1c2", ""..tonumber(player:get_attribute("sea_fight_step_1c2"))-1)
		end
		local pos1 = player:get_attribute("sea_fight_pos1")
		if pos1 == "1" then
			if player:get_attribute("sea_fight_step_1c1") == "0" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_ready"})
			elseif player:get_attribute("sea_fight_step_1c1") == "1" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_1"})
			elseif player:get_attribute("sea_fight_step_1c1") == "2" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_2"})
			elseif player:get_attribute("sea_fight_step_1c1") == "3" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_3"})
			elseif player:get_attribute("sea_fight_step_1c1") == "4" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_4"})
			elseif player:get_attribute("sea_fight_step_1c1") == "5" and minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_5"})
			end
		else
			if player:get_attribute("sea_fight_step_1c2") == "0" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_ready"})
			elseif player:get_attribute("sea_fight_step_1c2") == "1" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_1"})
			elseif player:get_attribute("sea_fight_step_1c2") == "2" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_2"})
			elseif player:get_attribute("sea_fight_step_1c2") == "3" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_3"})
			elseif player:get_attribute("sea_fight_step_1c2") == "4" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_4"})
			elseif player:get_attribute("sea_fight_step_1c2") == "5" and minetest.get_node({x=-166, y=8, z=-24}).name == "castrum:pirate_lv1" then
				minetest.set_node({x=-166, y=7, z=-25}, {name="castrum:fire_cannon_5"})
			end
		end
		Check1(player)
    end,
})
minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "island_start_fight" then
		for k, v in pairs(fields) do
            if v == "Start Fight" then
				if player:get_attribute("sea_started") == "false" then
					if minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" or minetest.get_node({x=-152, y=8, z=-30}).name == "castrum:pirate_lv1" then
						player:set_attribute("sea_started", "true")
						if minetest.get_node({x=-152, y=8, z=-24}).name == "castrum:pirate_lv1" then
							minetest.set_node({x=-152, y=7, z=-25}, {name="castrum:fire_cannon_ready"})
						end
						minetest.set_node({x=-162, y=7, z=-27}, {name="castrum:turn_ship"})
						local inv = player:get_inventory()
						inv:remove_item("main", "castrum:pirate_lv1 9")
						for j=149,169 do
							for i=23,31 do
								if minetest.get_node({x=j*(-1), y=7, z=i*(-1)}).name == "castrum:sea_fight1" then
									minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
								end
							end
						end
					else
						minetest.chat_send_player(player:get_player_name(), "you have to place a pirate")
					end
					minetest.show_formspec(player:get_player_name(), "", "")
				end
            elseif v == "Go Back" then
                minetest.show_formspec(player:get_player_name(), "island_go_back", island_go_back.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "island_go_back" then
		for k, v in pairs(fields) do
            if v == "Yes" then
				player:set_attribute("sea_started", "false")
				player:setpos({x=178, y=8.5, z=44})
				local inv = player:get_inventory()
				inv:remove_item("main", "castrum:pirate_lv1 9")
				local pirate1 = 0
				for j=149,169 do
					for i=23,31 do
						if minetest.get_node({x=j*(-1), y=8, z=i*(-1)}).name == "castrum:pirate_lv1" then
							pirate1 = pirate1 +1
						end
					end
				end
				file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
				local pirate_1 = file:read("*l")
				file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "w")
				file:write((tonumber(pirate_1)-pirate1))
				file:close()
				Update_pirate(player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "No" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)