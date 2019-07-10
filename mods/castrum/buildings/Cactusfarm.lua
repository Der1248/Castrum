function Cactusfarm(v,player)
    if v+0 == 1 then
        minetest.set_node({x=130, y=9, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=130, y=9, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=9, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=9, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=127, y=9, z=-4}, {name="castrum:cactus"})
        minetest.set_node({x=127, y=10, z=-4}, {name="castrum:cactus"})
        minetest.set_node({x=132, y=9, z=1}, {name="default:chest"})
        screwdriver_handler(player, {type="node", under={x=132, y=9, z=1}, above={x=132, y=9, z=1}}, 1)
        screwdriver_handler(player, {type="node", under={x=132, y=9, z=1}, above={x=132, y=9, z=1}}, 1)
        screwdriver_handler(player, {type="node", under={x=132, y=9, z=1}, above={x=132, y=9, z=1}}, 1)
    elseif v+0 == 2 then
        minetest.set_node({x=130, y=10, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=130, y=10, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=10, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=10, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=127, y=11, z=-4}, {name="castrum:cactus"})
	elseif v+0 == 3 then
		minetest.set_node({x=130, y=11, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=130, y=11, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=11, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=11, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=127, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=126, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=128, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=12, z=-3}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=12, z=-5}, {name="castrum:cactus"})
	elseif v+0 == 4 then
		minetest.set_node({x=129, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=12, z=-2}, {name="castrum:cactus"})
		minetest.set_node({x=125, y=12, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=12, z=-6}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=13, z=-4}, {name="castrum:cactus"})
	elseif v+0 == 5 then
		minetest.set_node({x=129, y=13, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=13, z=-2}, {name="castrum:cactus"})
		minetest.set_node({x=125, y=13, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=13, z=-6}, {name="castrum:cactus"})
		minetest.set_node({x=127, y=14, z=-4}, {name="castrum:cactus"})
		minetest.set_node({x=130, y=12, z=-7}, {name="castrum:cactus"})
        minetest.set_node({x=130, y=12, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=12, z=-1}, {name="castrum:cactus"})
        minetest.set_node({x=124, y=12, z=-7}, {name="castrum:cactus"})
    elseif v+0 == 0 then
        for j=123,131 do
            for i=0,8 do
                for k=9,14 do
                    minetest.set_node({x=j, y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
        minetest.set_node({x=132, y=9, z=1}, {name="air"})
    end
end