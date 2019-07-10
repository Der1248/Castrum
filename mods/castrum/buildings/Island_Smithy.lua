function Island_Smithy(v,player)
    if v+0 == 1 then
        for j=166,173 do
            for i=20,28 do
                minetest.set_node({x=j, y=9, z=i}, {name="default:sandstone"})
            end
        end
        minetest.set_node({x=165, y=9, z=23}, {name="stairs:stair_sandstone"})
        minetest.set_node({x=165, y=9, z=22}, {name="stairs:stair_sandstone"})
        screwdriver_handler(player, {type="node", under={x=165, y=9, z=23}, above={x=165, y=9, z=23}}, 1)
        screwdriver_handler(player, {type="node", under={x=165, y=9, z=22}, above={x=165, y=9, z=22}}, 1)
    elseif v+0 == 2 then
        for j=166,173 do
            minetest.set_node({x=j, y=10, z=20}, {name="default:sandstone"})
            minetest.set_node({x=j, y=10, z=25}, {name="default:sandstone"})
        end
        for i=20,28 do
            minetest.set_node({x=173, y=10, z=i}, {name="default:sandstone"})
        end
        for j=167,173 do
            minetest.set_node({x=j, y=10, z=28}, {name="default:sandstone"})
        end
        minetest.set_node({x=166, y=10, z=21}, {name="default:sandstone"})
        minetest.set_node({x=166, y=10, z=24}, {name="default:sandstone"})
        minetest.set_node({x=171, y=10, z=27}, {name="default:sandstone"})
        minetest.set_node({x=171, y=10, z=26}, {name="default:sandstone"})
    elseif v+0 == 3 then
        for j=166,173 do
            minetest.set_node({x=j, y=11, z=20}, {name="default:sandstone"})
            minetest.set_node({x=j, y=11, z=25}, {name="default:sandstone"})
        end
        for i=20,28 do
            minetest.set_node({x=173, y=11, z=i}, {name="default:sandstone"})
        end
        for j=168,173 do
            minetest.set_node({x=j, y=11, z=28}, {name="default:sandstone"})
        end
        minetest.set_node({x=166, y=11, z=21}, {name="default:sandstone"})
        minetest.set_node({x=166, y=11, z=24}, {name="default:sandstone"})
        minetest.set_node({x=166, y=10, z=22}, {name="doors:door_wood_b"})
        minetest.set_node({x=166, y=10, z=23}, {name="doors:door_wood_a"})
        screwdriver_handler(player, {type="node", under={x=166, y=10, z=22}, above={x=166, y=10, z=22}}, 1)
        screwdriver_handler(player, {type="node", under={x=166, y=10, z=23}, above={x=166, y=10, z=23}}, 1)
    elseif v+0 == 4 then
        for j=166,173 do
            minetest.set_node({x=j, y=12, z=20}, {name="default:sandstone"})
            minetest.set_node({x=j, y=12, z=25}, {name="default:sandstone"})
        end
        for i=20,28 do
            minetest.set_node({x=173, y=12, z=i}, {name="default:sandstone"})
        end
        for i=20,25 do
            minetest.set_node({x=166, y=12, z=i}, {name="default:sandstone"})
        end
        for j=169,173 do
            minetest.set_node({x=j, y=12, z=28}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for j=167,172 do
            minetest.set_node({x=j, y=13, z=21}, {name="default:sandstone"})
            minetest.set_node({x=j, y=13, z=24}, {name="default:sandstone"})
        end
        for i=21,24 do
            minetest.set_node({x=167, y=13, z=i}, {name="default:sandstone"})
            minetest.set_node({x=172, y=13, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
        for j=168,171 do
            minetest.set_node({x=j, y=14, z=22}, {name="default:sandstone"})
            minetest.set_node({x=j, y=14, z=23}, {name="default:sandstone"})
        end
        minetest.set_node({x=172, y=10, z=27}, {name="default:lava_source"})
        minetest.set_node({x=172, y=10, z=26}, {name="default:lava_source"})
    elseif v+0 == 0 then
        for j=165,173 do
            for i=20,28 do
                for k=9,14 do
                    minetest.set_node({x=j, y=k, z=i}, {name="air"})
                end
            end
        end
    end
end