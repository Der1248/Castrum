function Cannon1(v,player)
    if v+0 == 1 then
		minetest.set_node({x=169, y=9, z=42}, {name="castrum:cannon_1_1"})
		screwdriver_handler(player, {type="node", under={x=169, y=9, z=42}, above={x=169, y=9, z=42}}, 1)
	elseif v+0 == 2 then
		minetest.set_node({x=169, y=9, z=42}, {name="castrum:cannon_1_2"})
		screwdriver_handler(player, {type="node", under={x=169, y=9, z=42}, above={x=169, y=9, z=42}}, 1)
    elseif v+0 == 0 then 
        minetest.set_node({x=169, y=9, z=42}, {name="air"})
    end
end