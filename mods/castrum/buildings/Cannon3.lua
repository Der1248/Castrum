function Cannon3(v,player)
    if v+0 == 1 then
		minetest.set_node({x=161, y=9, z=44}, {name="castrum:cannon_1_1"})
		screwdriver_handler(player, {type="node", under={x=161, y=9, z=44}, above={x=161, y=9, z=44}}, 1)
		screwdriver_handler(player, {type="node", under={x=161, y=9, z=44}, above={x=161, y=9, z=44}}, 1)
		screwdriver_handler(player, {type="node", under={x=161, y=9, z=44}, above={x=161, y=9, z=44}}, 1)
    elseif v+0 == 0 then 
        minetest.set_node({x=161, y=9, z=44}, {name="air"})
    end
end