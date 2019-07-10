function Add_horse(player,lv,state)
    if state == true then
        file = io.open(minetest.get_worldpath().."/SAVE/Horse_"..lv..".txt", "r")
	    local horse = file:read("*l")
        file:close()
        file = io.open(minetest.get_worldpath().."/SAVE/Horse_"..lv..".txt", "w")
	    file:write(tonumber(horse)+1)
	    file:close()
        Update_horse(player)
    end
end
local horse_pos = {
    {1,  -65, 1,2},
	{2,  -63, 2,2},
}
function Update_horse(player)
    file = io.open(minetest.get_worldpath().."/SAVE/Horse_1.txt", "r")
	local horse1 = file:read("*l")
    file:close()
    for j=62,65 do
		for i=0,6 do
			minetest.set_node({x=j*(-1), y=9, z=i}, {name="air"})
		end
	end
    for i=1,tonumber(horse1) do
        minetest.set_node({x=horse_pos[i][2], y=9, z=horse_pos[i][3]}, {name="castrum:horse1"})
		screwdriver_handler(player, {type="node", under={x=horse_pos[i][2], y=9, z=horse_pos[i][3]}, above={x=horse_pos[i][2], y=9, z=horse_pos[i][3]}}, 1)
		screwdriver_handler(player, {type="node", under={x=horse_pos[i][2], y=9, z=horse_pos[i][3]}, above={x=horse_pos[i][2], y=9, z=horse_pos[i][3]}}, 1)
    end
end