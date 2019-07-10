function Island_Walle(v,player)
    if v+0 == 1 then
        for i=0,33 do
            minetest.set_node({x=178, y=9, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=9, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        for i=0,33 do
            minetest.set_node({x=178, y=10, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=10, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 3 then
        for i=0,33 do
            minetest.set_node({x=178, y=11, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=11, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 4 then
        for i=0,33 do
            minetest.set_node({x=178, y=12, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=12, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for i=0,33 do
            minetest.set_node({x=178, y=13, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=13, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
        for i=0,33 do
            minetest.set_node({x=178, y=14, z=i}, {name="default:sandstone"})
        end
        for i=0,27 do
            minetest.set_node({x=178, y=14, z=i*(-1)}, {name="default:sandstone"})
        end
    elseif v+0 == 7 then
        for i=0,33 do
            if i%2 == 1 then
                minetest.set_node({x=178, y=15, z=i}, {name="default:sandstone"})
            end
        end
        for i=0,27 do
            if i%2 == 1 then
                minetest.set_node({x=178, y=15, z=i*(-1)}, {name="default:sandstone"})
            end
        end
	elseif v+0 == 8 then
		for i=0,33 do
            if i%4 == 1 then
                minetest.set_node({x=178, y=12, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%4 == 3 then
                minetest.set_node({x=178, y=12, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
        for i=0,33 do
            if i%2 == 0 then
                minetest.set_node({x=178, y=13, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=11, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=9, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%2 == 0 then
                minetest.set_node({x=178, y=13, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=11, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=9, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
        for i=0,33 do
            if i%4 == 3 then
                minetest.set_node({x=178, y=14, z=i}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=10, z=i}, {name="default:desert_sandstone"})
            end
        end
        for i=0,27 do
            if i%4 == 1 then
                minetest.set_node({x=178, y=14, z=i*(-1)}, {name="default:desert_sandstone"})
                minetest.set_node({x=178, y=10, z=i*(-1)}, {name="default:desert_sandstone"})
            end
        end
    elseif v+0 == 0 then
        for i=0,33 do
            for k=9,15 do
                minetest.set_node({x=178, y=k, z=i}, {name="air"})
            end
        end
        for i=0,27 do
            for k=9,15 do
                minetest.set_node({x=178, y=k, z=i*(-1)}, {name="air"})
            end
        end
    end
end