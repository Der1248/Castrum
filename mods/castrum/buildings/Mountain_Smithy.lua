function Mountain_Smithy(v,player)
    if v+0 == 1 then
        for j=318,325 do
            for i=7,15 do
                minetest.set_node({x=j, y=40, z=i*(-1)}, {name="default:mossycobble"})
            end
        end
        minetest.set_node({x=326, y=40, z=-10}, {name="stairs:stair_mossycobble"})
        minetest.set_node({x=326, y=40, z=-9}, {name="stairs:stair_mossycobble"})
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-10}, above={x=326, y=40, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-10}, above={x=326, y=40, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-10}, above={x=326, y=40, z=-10}}, 1)

        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-9}, above={x=326, y=40, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-9}, above={x=326, y=40, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=326, y=40, z=-9}, above={x=326, y=40, z=-9}}, 1)
    elseif v+0 == 2 then
        for j=318,325 do
            minetest.set_node({x=j, y=41, z=-12}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=41, z=-7}, {name="default:mossycobble"})
        end
        for i=7,15 do
            minetest.set_node({x=318, y=41, z=i*(-1)}, {name="default:mossycobble"})
        end
        for j=318,324 do
            minetest.set_node({x=j, y=41, z=-15}, {name="default:mossycobble"})
        end
        minetest.set_node({x=325, y=41, z=-8}, {name="default:mossycobble"})
        minetest.set_node({x=325, y=41, z=-11}, {name="default:mossycobble"})
        minetest.set_node({x=320, y=41, z=-14}, {name="default:mossycobble"})
        minetest.set_node({x=320, y=41, z=-13}, {name="default:mossycobble"})
    elseif v+0 == 3 then
        for j=318,325 do
            minetest.set_node({x=j, y=42, z=-12}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=42, z=-7}, {name="default:mossycobble"})
        end
        for i=7,15 do
            minetest.set_node({x=318, y=42, z=i*(-1)}, {name="default:mossycobble"})
        end
        for j=318,323 do
            minetest.set_node({x=j, y=42, z=-15}, {name="default:mossycobble"})
        end
        minetest.set_node({x=325, y=42, z=-8}, {name="default:mossycobble"})
        minetest.set_node({x=325, y=42, z=-11}, {name="default:mossycobble"})
        minetest.set_node({x=325, y=41, z=-10}, {name="doors:door_wood_a"})
        minetest.set_node({x=325, y=41, z=-9}, {name="doors:door_wood_b"})
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-10}, above={x=325, y=41, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-10}, above={x=325, y=41, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-10}, above={x=325, y=41, z=-10}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-9}, above={x=325, y=41, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-9}, above={x=325, y=41, z=-9}}, 1)
        screwdriver_handler(player, {type="node", under={x=325, y=41, z=-9}, above={x=325, y=41, z=-9}}, 1)
    elseif v+0 == 4 then
		for j=318,325 do
            minetest.set_node({x=j, y=43, z=-12}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=43, z=-7}, {name="default:mossycobble"})
        end
        for i=7,15 do
            minetest.set_node({x=318, y=43, z=i*(-1)}, {name="default:mossycobble"})
        end
        for j=318,322 do
            minetest.set_node({x=j, y=43, z=-15}, {name="default:mossycobble"})
        end
        for i=7,12 do
            minetest.set_node({x=325, y=43, z=i*(-1)}, {name="default:mossycobble"})
        end
    elseif v+0 == 5 then
        for j=319,324 do
            minetest.set_node({x=j, y=44, z=-11}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=44, z=-8}, {name="default:mossycobble"})
        end
        minetest.set_node({x=324, y=44, z=-10}, {name="default:mossycobble"})
        minetest.set_node({x=324, y=44, z=-9}, {name="default:mossycobble"})
        minetest.set_node({x=319, y=44, z=-10}, {name="default:mossycobble"})
        minetest.set_node({x=319, y=44, z=-9}, {name="default:mossycobble"})
    elseif v+0 == 6 then
        for j=320,323 do
            minetest.set_node({x=j, y=45, z=-10}, {name="default:mossycobble"})
            minetest.set_node({x=j, y=45, z=-9}, {name="default:mossycobble"})
        end
        minetest.set_node({x=319, y=41, z=-14}, {name="default:lava_source"})
        minetest.set_node({x=319, y=41, z=-13}, {name="default:lava_source"})
    elseif v+0 == 0 then
        for j=318,326 do
            for i=7,15 do
                for k=40,45 do
                    minetest.set_node({x=j, y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end