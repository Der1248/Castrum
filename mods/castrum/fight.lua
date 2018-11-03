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

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
    if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "castrum:fight2" then
        local dig = false
        local dignum = 0
        if node.name == "castrum:knight_dark" then
            dig = true
        elseif node.name == "castrum:knight_lv1_dark" then
            local fightnode = puncher:get_attribute("fightnode")
            if fightnode == "1" then
                dignum = math.random(2)
            else
                dignum = 1
            end
        end   
        if dignum == 1 then
            dig = true
        end
        if dig == true then
            minetest.set_node(pos, {name="air"})
            minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z}, {name="castrum:fight1"})
        end
        local fightpos = puncher:get_attribute("fightpos")
        local fightnode = puncher:get_attribute("fightnode")
        if fightnode == "1" then
            minetest.set_node(minetest.string_to_pos(fightpos), {name="castrum:knight_lv1"})
            screwdriver_handler(puncher, {type="node", under=minetest.string_to_pos(fightpos), above=minetest.string_to_pos(fightpos)}, 1)
        end
        for j=144,174 do
            for i=51,81 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
            end
        end
        fight_step2(puncher)
        local inv = puncher:get_inventory()
        inv:remove_item("main", "castrum:knight_lv1")
        puncher:set_attribute("fightdig", "false")
    end
end)

function get_fight(level,player)
    for j=144,174 do
        for i=51,81 do
            minetest.set_node({x=j*(-1), y=9, z=i*(-1)}, {name="air"})
            minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
        end
    end
    for i=67,76 do
        minetest.set_node({x=-144, y=8, z=i*(-1)}, {name="castrum:fight1"})
    end
    for i=56,65 do
        minetest.set_node({x=-144, y=8, z=i*(-1)}, {name="castrum:fight1"})
    end
    for i=57,75 do
        minetest.set_node({x=-145, y=8, z=i*(-1)}, {name="castrum:fight1"})
    end
    for i=58,74 do
        minetest.set_node({x=-146, y=8, z=i*(-1)}, {name="castrum:fight1"})
    end
    for i=59,73 do
        minetest.set_node({x=-147, y=8, z=i*(-1)}, {name="castrum:fight1"})
    end
    for i=61,71 do
        minetest.set_node({x=-148, y=8, z=i*(-1)}, {name="castrum:fight1"})
    end
    for i=63,69 do
        minetest.set_node({x=-149, y=8, z=i*(-1)}, {name="castrum:fight1"})
    end
    for i=65,67 do
        minetest.set_node({x=-150, y=8, z=i*(-1)}, {name="castrum:fight1"})
    end
    minetest.set_node({x=-144, y=9, z=-66}, {name="castrum:castrum_knight1"})
    minetest.set_node({x=-174, y=9, z=-66}, {name="castrum:knight_dark"})
    player:setpos({x=-135, y=8.5, z=-66})
    screwdriver_handler(player, {type="node", under={x=-144, y=9, z=-66}, above={x=-144, y=9, z=-66}}, 1)
    screwdriver_handler(player, {type="node", under={x=-174, y=9, z=-66}, above={x=-174, y=9, z=-66}}, 1)
    screwdriver_handler(player, {type="node", under={x=-174, y=9, z=-66}, above={x=-174, y=9, z=-66}}, 1)
    screwdriver_handler(player, {type="node", under={x=-174, y=9, z=-66}, above={x=-174, y=9, z=-66}}, 1)
    file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	local knight_1 = file:read("*l")
    file:close()
    local inv = player:get_inventory()
    if tonumber(knight_1) > 0 then
        inv:add_item("main","castrum:knight_lv1 "..knight_1)
    end
    player:set_attribute("fight", "false")
    set_fight(player,level)
end
function set_fight(player,level)
    if level == 1 then
        minetest.set_node({x=-173, y=9, z=-65}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-173, y=9, z=-65},3)
        minetest.set_node({x=-173, y=9, z=-67}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-173, y=9, z=-67},3)
        minetest.set_node({x=-173, y=9, z=-62}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-173, y=9, z=-62},3)
        minetest.set_node({x=-173, y=9, z=-70}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-173, y=9, z=-70},3)
        minetest.set_node({x=-171, y=9, z=-69}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-171, y=9, z=-69},3)
        minetest.set_node({x=-171, y=9, z=-63}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-171, y=9, z=-63},3)
        minetest.set_node({x=-170, y=9, z=-65}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-170, y=9, z=-65},3)
        minetest.set_node({x=-170, y=9, z=-67}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-170, y=9, z=-67},3)
    elseif level == 2 then
        minetest.set_node({x=-173, y=9, z=-65}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-173, y=9, z=-65},3)
        minetest.set_node({x=-173, y=9, z=-67}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-173, y=9, z=-67},3)
        minetest.set_node({x=-173, y=9, z=-62}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-173, y=9, z=-62},3)
        minetest.set_node({x=-173, y=9, z=-70}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-173, y=9, z=-70},3)
        minetest.set_node({x=-171, y=9, z=-69}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-171, y=9, z=-69},3)
        minetest.set_node({x=-171, y=9, z=-63}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-171, y=9, z=-63},3)
        minetest.set_node({x=-170, y=9, z=-65}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-170, y=9, z=-65},3)
        minetest.set_node({x=-170, y=9, z=-67}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-170, y=9, z=-67},3)
        minetest.set_node({x=-170, y=9, z=-70}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-170, y=9, z=-70},3)
        minetest.set_node({x=-169, y=9, z=-68}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-169, y=9, z=-68},3)
        minetest.set_node({x=-168, y=9, z=-66}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-168, y=9, z=-66},3)
        minetest.set_node({x=-170, y=9, z=-62}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-170, y=9, z=-62},3)
        minetest.set_node({x=-169, y=9, z=-64}, {name="castrum:knight_lv1_dark"})
        turn(player,{x=-169, y=9, z=-64},3)
    end
    player:set_attribute("fightlv", ""..level)
end
function fight_step1(player)
    local fight = player:get_attribute("fight")
    if fight == "false" then
        local start = false
        for j=144,174 do
            for i=51,81 do
                if minetest.get_node({x=j*(-1), y=9, z=i*(-1)}).name == "castrum:knight_lv1" then
                    start = true
                end
            end
        end
        if start == false then
            minetest.chat_send_player(player:get_player_name(), "you have to place a knight")
        else
            player:set_attribute("fight", "true")
            player:set_attribute("fightmove", "1")
            player:set_attribute("fightkill", "0")
            local inv = player:get_inventory()
            inv:remove_item("main", "castrum:knight_lv1 80")
            for j=144,174 do
                for i=51,81 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:dirt_with_grass"})
                end
            end
        end
    end
end

function fight_step2(player)
    local move = tonumber(player:get_attribute("fightmove"))
    file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	local chapter = file:read("*l")
    file:close()
    local list = {}
    if tonumber(chapter) == 1 then
        list = Chapter1()
    elseif tonumber(chapter) == 2 then
        list = Chapter2()
    end
    local move2 = move
    local d = 0
    local dd = 0
    local dignum = 0
    for j=144,174 do
        for i=51,81 do
            dignum = math.random(2)
            if minetest.get_node({x=j*(-1), y=9, z=i*(-1)}).name == "castrum:knight_lv1_dark" and dignum == 1 then
                if minetest.get_node({x=j*(-1)+1, y=9, z=i*(-1)}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1)+1, y=9, z=i*(-1)}).name == "castrum:castrum_knight1" then
                    minetest.set_node({x=j*(-1)+1, y=9, z=i*(-1)}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end
                if (minetest.get_node({x=j*(-1)-1, y=9, z=i*(-1)}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1)-1, y=9, z=i*(-1)}).name == "castrum:castrum_knight1") and dd == 0 then
                    minetest.set_node({x=j*(-1)-1, y=9, z=i*(-1)}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end
                if (minetest.get_node({x=j*(-1), y=9, z=i*(-1)}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1), y=9, z=i*(-1)}).name == "castrum:castrum_knight1") and dd == 0 then
                    minetest.set_node({x=j*(-1), y=9, z=i*(-1)}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end
                if (minetest.get_node({x=j*(-1)+1, y=9, z=i*(-1)-1}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1)+1, y=9, z=i*(-1)-1}).name == "castrum:castrum_knight1") and dd == 0 then
                    minetest.set_node({x=j*(-1)+1, y=9, z=i*(-1)-1}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end
                if (minetest.get_node({x=j*(-1)-1, y=9, z=i*(-1)-1}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1)-1, y=9, z=i*(-1)-1}).name == "castrum:castrum_knight1") and dd == 0 then
                    minetest.set_node({x=j*(-1)-1, y=9, z=i*(-1)-1}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end
                if (minetest.get_node({x=j*(-1), y=9, z=i*(-1)-1}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1), y=9, z=i*(-1)-1}).name == "castrum:castrum_knight1") and dd == 0 then
                    minetest.set_node({x=j*(-1), y=9, z=i*(-1)-1}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end
                if (minetest.get_node({x=j*(-1)+1, y=9, z=i*(-1)+1}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1)+1, y=9, z=i*(-1)+1}).name == "castrum:castrum_knight1") and dd == 0 then
                    minetest.set_node({x=j*(-1)+1, y=9, z=i*(-1)+1}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end
                if (minetest.get_node({x=j*(-1)-1, y=9, z=i*(-1)+1}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1)-1, y=9, z=i*(-1)+1}).name == "castrum:castrum_knight1") and dd == 0 then
                    minetest.set_node({x=j*(-1)-1, y=9, z=i*(-1)+1}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end
                if (minetest.get_node({x=j*(-1), y=9, z=i*(-1)+1}).name == "castrum:knight_lv1" or minetest.get_node({x=j*(-1), y=9, z=i*(-1)+1}).name == "castrum:castrum_knight1") and dd == 0 then
                    minetest.set_node({x=j*(-1), y=9, z=i*(-1)+1}, {name="air"})
                    player:set_attribute("fightkill", ""..(player:get_attribute("fightkill")+1))
                    dd = 1
                end

            end
        end
    end
    while d == 0 and move2 < 167 and dd == 0 and tonumber(chapter) == 1 do
        if minetest.get_node(list[move2][2]).name == "castrum:knight_lv1_dark" then
            minetest.set_node(list[move2][2], {name="air"})
            minetest.set_node(list[move2][3], {name="castrum:knight_lv1_dark"})
            player:set_attribute("fightmove", ""..(move2+1))
            screwdriver_handler(player, {type="node", under=list[move2][3], above=list[move2][3]}, 1)
            screwdriver_handler(player, {type="node", under=list[move2][3], above=list[move2][3]}, 1)
            screwdriver_handler(player, {type="node", under=list[move2][3], above=list[move2][3]}, 1)
            d = 1
        else
            move2 = move2+1
        end
    end
    while d == 0 and move2 < 300 and dd == 0 and tonumber(chapter) == 2 do
        if minetest.get_node(list[move2][2]).name == "castrum:knight_lv1_dark" then
            minetest.set_node(list[move2][2], {name="air"})
            minetest.set_node(list[move2][3], {name="castrum:knight_lv1_dark"})
            player:set_attribute("fightmove", ""..(move2+1))
            screwdriver_handler(player, {type="node", under=list[move2][3], above=list[move2][3]}, 1)
            screwdriver_handler(player, {type="node", under=list[move2][3], above=list[move2][3]}, 1)
            screwdriver_handler(player, {type="node", under=list[move2][3], above=list[move2][3]}, 1)
            d = 1
        else
            move2 = move2+1
        end
    end
    local kg = 0
    local ky = 0
    local tg = 0
    local ty = 0
    for j=144,174 do
        for i=51,81 do
            if minetest.get_node({x=j*(-1), y=9, z=i*(-1)}).name == "castrum:knight_lv1_dark" then
                tg = 1
            elseif minetest.get_node({x=j*(-1), y=9, z=i*(-1)}).name == "castrum:knight_lv1" then
                ty = 1
            elseif minetest.get_node({x=j*(-1), y=9, z=i*(-1)}).name == "castrum:castrum_knight1" then
                ky = 1
            elseif minetest.get_node({x=j*(-1), y=9, z=i*(-1)}).name == "castrum:knight_dark" then
                kg = 1
            end
        end
    end
    if tg == 0 then
        minetest.chat_send_player(player:get_player_name(), "you win")
        player:setpos({x=-74, y=8.5, z=-77})
        local inv = player:get_inventory()
        inv:remove_item("main", "castrum:knight_lv1 80")
        file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	    local chapter = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "w")
		file:write((tonumber(chapter)+1))
		file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	    local knight_1 = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "w")
		file:write((tonumber(knight_1)-player:get_attribute("fightkill")))
		file:close()
        Update_knight(player)
    elseif ky == 0 or ty == 0 then
        minetest.chat_send_player(player:get_player_name(), "you lose")
        player:setpos({x=-74, y=8.5, z=-77})
        local inv = player:get_inventory()
        inv:remove_item("main", "castrum:knight_lv1 80")
        file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	    local knight_1 = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "w")
		file:write((tonumber(knight_1)-player:get_attribute("fightkill")))
		file:close()
        Update_knight(player)
    end
end
minetest.register_node("castrum:start_fight",{
	tiles  = {"castrum_bridge_status.png"},
	description = "Start fight",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        fight_step1(player)
        
    end,
})