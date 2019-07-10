function Bridge2(v,player)
    if v+0 == 10 then
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:junglewood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
	elseif v+0 == 11 then
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:pine_wood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
    elseif v+0 == 0 then
        for i=36,44 do
            for k=8,16 do
                minetest.set_node({x=i*(-1), y=k, z=-32}, {name="air"})
            end
        end
        for i=36,44 do
            for j=32,40 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:dirt_with_grass"})
            end
        end
        minetest.set_node({x=-40, y=8, z=-36}, {name="castrum:bridge"})
    end
end