function Moat_north(v,player)
    if v+0 == 1 then
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=8, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=8, z=42}, {name="air"})
        end
    elseif v+0 == 2 then
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=7, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=7, z=42}, {name="air"})
        end
    elseif v+0 == 3 then
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="air"})
            end
        end
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=6, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=6, z=42}, {name="air"})
        end
    elseif v+0 == 4 then
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="air"})
            end
        end
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j}, {name="air"})
            end
        end
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=5, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=5, z=42}, {name="air"})
        end
    elseif v+0 == 5 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="air"})
            end
        end
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j}, {name="air"})
            end
        end
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j}, {name="air"})
            end
        end
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=4, z=42}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=4, z=42}, {name="air"})
        end
    elseif v+0 == 6 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j}, {name="air"})
            end
        end
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j}, {name="air"})
            end
        end
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="air"})
            end
        end
        for j=41,43 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="air"})
            end
        end
    elseif v+0 == 7 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j}, {name="air"})
            end
        end
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="air"})
            end
        end
        for j=40,44 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="air"})
            end
        end
    elseif v+0 == 8 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="air"})
            end
        end
        for j=39,45 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="air"})
            end
        end
    elseif v+0 == 9 then
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="air"})
            end
        end
    elseif v+0 == 10 then
        for j=38,46 do
            for i=0,83 do 
                minetest.set_node({x=i*(-1), y=4, z=j}, {name="castrum:water"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j}, {name="castrum:water"})
            end
        end
	elseif v+0 == 11 then
        for j=38,46 do
            for i=0,83 do 
                minetest.set_node({x=i*(-1), y=5, z=j}, {name="castrum:water"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j}, {name="castrum:water"})
            end
        end
    elseif v+0 == 0 then
        for j=38,46 do
            for k=4,7 do
                for i=0,83 do 
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone"})
                end
                for i=1,3 do
                    minetest.set_node({x=i, y=k, z=j}, {name="default:stone"})
                end
            end
        end
        for j=38,46 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=8, z=j}, {name="castrum:dirt_with_grass"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j}, {name="castrum:dirt_with_grass"})
            end
        end
    end
end