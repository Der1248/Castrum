function Island_Walls(v,player)
    if v+0 == 1 then
        for i=119,177 do
            minetest.set_node({x=i, y=9, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        for i=119,177 do
            minetest.set_node({x=i, y=10, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 3 then
        for i=119,177 do
            minetest.set_node({x=i, y=11, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 4 then
        for i=119,177 do
            minetest.set_node({x=i, y=12, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for i=119,177 do
            minetest.set_node({x=i, y=13, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
        for i=119,177 do
            minetest.set_node({x=i, y=14, z=-27}, {name="default:sandstone"})
        end
    elseif v+0 == 7 then
        for i=119,177 do
            if i%2 == 0 then
                minetest.set_node({x=i, y=15, z=-27}, {name="default:sandstone"})
            end
        end
	elseif v+0 == 8 then
        for i=119,177 do
            if i%4 == 2 then
                minetest.set_node({x=i, y=12, z=-27}, {name="default:desert_sandstone"})
            end
        end
        for i=119,177 do
            if i%2 == 1 then
                minetest.set_node({x=i, y=13, z=-27}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=11, z=-27}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=9, z=-27}, {name="default:desert_sandstone"})
            end
        end
        for i=119,177 do
            if i%4 == 0 then
                minetest.set_node({x=i, y=14, z=-27}, {name="default:desert_sandstone"})
                minetest.set_node({x=i, y=10, z=-27}, {name="default:desert_sandstone"})
            end
        end
    elseif v+0 == 0 then
        for i=119,177 do
            for k=9,15 do
                minetest.set_node({x=i, y=k, z=-27}, {name="air"})
            end
        end
    end
end