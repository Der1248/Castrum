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
        for j=81,89 do
            for i=53,61 do
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