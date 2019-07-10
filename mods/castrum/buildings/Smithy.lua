function Smithy(v,player)
    if v+0 == 1 then
        for j=62,69 do
            for i=6,14 do
                minetest.set_node({x=j*(-1), y=9, z=i*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-61, y=9, z=-8}, {name="stairs:stair_cobble"})
        minetest.set_node({x=-61, y=9, z=-9}, {name="stairs:stair_cobble"})
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)

        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
    elseif v+0 == 2 then
        for j=62,69 do
            minetest.set_node({x=j*(-1), y=10, z=-11}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=10, z=-6}, {name="default:cobble"})
        end
        for i=6,14 do
            minetest.set_node({x=-69, y=10, z=i*(-1)}, {name="default:cobble"})
        end
        for j=64,69 do
            minetest.set_node({x=j*(-1), y=10, z=-14}, {name="default:cobble"})
        end
        minetest.set_node({x=-62, y=10, z=-10}, {name="default:cobble"})
        minetest.set_node({x=-62, y=10, z=-7}, {name="default:cobble"})
        minetest.set_node({x=-67, y=10, z=-13}, {name="default:cobble"})
        minetest.set_node({x=-67, y=10, z=-12}, {name="default:cobble"})
    elseif v+0 == 3 then
        for j=62,69 do
            minetest.set_node({x=j*(-1), y=11, z=-11}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=11, z=-6}, {name="default:cobble"})
        end
        for i=6,14 do
            minetest.set_node({x=-69, y=11, z=i*(-1)}, {name="default:cobble"})
        end
        for j=65,69 do
            minetest.set_node({x=j*(-1), y=11, z=-14}, {name="default:cobble"})
        end
        minetest.set_node({x=-62, y=11, z=-10}, {name="default:cobble"})
        minetest.set_node({x=-62, y=11, z=-7}, {name="default:cobble"})
        minetest.set_node({x=-62, y=10, z=-9}, {name="doors:door_wood_a"})
        minetest.set_node({x=-62, y=10, z=-8}, {name="doors:door_wood_b"})
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-9}, above={x=-62, y=10, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-9}, above={x=-62, y=10, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-9}, above={x=-62, y=10, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-8}, above={x=-62, y=10, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-8}, above={x=-62, y=10, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-62, y=10, z=-8}, above={x=-62, y=10, z=-8}}, 1)
    elseif v+0 == 4 then
        for j=62,69 do
            minetest.set_node({x=j*(-1), y=12, z=-11}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=12, z=-6}, {name="default:cobble"})
        end
        for i=6,14 do
            minetest.set_node({x=-69, y=12, z=i*(-1)}, {name="default:cobble"})
        end
        for i=6,11 do
            minetest.set_node({x=-62, y=12, z=i*(-1)}, {name="default:cobble"})
        end
        for j=66,69 do
            minetest.set_node({x=j*(-1), y=12, z=-14}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for j=63,68 do
            minetest.set_node({x=j*(-1), y=13, z=-10}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=13, z=-7}, {name="default:cobble"})
        end
        minetest.set_node({x=-63, y=13, z=-9}, {name="default:cobble"})
        minetest.set_node({x=-63, y=13, z=-8}, {name="default:cobble"})
        minetest.set_node({x=-68, y=13, z=-9}, {name="default:cobble"})
        minetest.set_node({x=-68, y=13, z=-8}, {name="default:cobble"})
    elseif v+0 == 6 then
        for j=64,67 do
            minetest.set_node({x=j*(-1), y=14, z=-9}, {name="default:cobble"})
            minetest.set_node({x=j*(-1), y=14, z=-8}, {name="default:cobble"})
        end
        minetest.set_node({x=-68, y=10, z=-13}, {name="default:lava_source"})
        minetest.set_node({x=-68, y=10, z=-12}, {name="default:lava_source"})
    elseif v+0 == 7 then
        for j=61,69 do
            for i=6,14 do
                for k=9,14 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
        minetest.set_node({x=-61, y=9, z=-8}, {name="stairs:stair_stone_block"})
        minetest.set_node({x=-61, y=9, z=-9}, {name="stairs:stair_stone_block"})
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
	elseif v+0 == 8 then
		for j=61,69 do
            for i=6,14 do
                for k=9,14 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
        minetest.set_node({x=-61, y=9, z=-8}, {name="stairs:stair_desert_cobble"})
        minetest.set_node({x=-61, y=9, z=-9}, {name="stairs:stair_desert_cobble"})
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-8}, above={x=-61, y=9, z=-8}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=-9}, above={x=-61, y=9, z=-9}}, 1)
    elseif v+0 == 0 then
        for j=61,69 do
            for i=6,14 do
                for k=9,14 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end