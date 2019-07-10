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
	{3,  170, 12,0},
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