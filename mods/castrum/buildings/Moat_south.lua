function Moat_south(v,player)
    if v+0 == 1 then
        for i=0,83 do
            if minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "castrum:bridge"  and minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=-36}).name ~= "default:pine_wood" then 
                minetest.set_node({x=i*(-1), y=8, z=-36}, {name="air"})
            end
        end
        for i=1,3 do
            minetest.set_node({x=i, y=8, z=-36}, {name="air"})
        end
    elseif v+0 == 2 then
        for j=35,37 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:pine_wood" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=7, z=-36}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=7, z=-36}, {name="air"})
        end
    elseif v+0 == 3 then
        for j=34,38 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge"  and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:pine_wood" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=6, z=-36}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=6, z=-36}, {name="air"})
        end
    elseif v+0 == 4 then
        for j=33,39 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:pine_wood" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=5, z=-36}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=5, z=-36}, {name="air"})
        end
    elseif v+0 == 5 then
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:junglewood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:pine_wood" then 
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="air"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for i=0,83 do
            minetest.set_node({x=i*(-1), y=4, z=-36}, {name="air"})
        end
        for i=1,3 do
            minetest.set_node({x=i, y=4, z=-36}, {name="air"})
        end
    elseif v+0 == 6 then
        for j=32,40 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=7, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=7, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=35,37 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 7 then
        for j=32,40 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=6, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=6, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=34,38 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 8 then
        for j=32,40 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="air"})
            end
        end
        for j=33,39 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 9 then
        for j=32,40 do
            for i=0,83 do
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="air"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="air"})
            end
        end
    elseif v+0 == 10 then
        for j=32,40 do
            for i=0,83 do 
                minetest.set_node({x=i*(-1), y=4, z=j*(-1)}, {name="castrum:water"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=4, z=j*(-1)}, {name="castrum:water"})
            end
        end
    elseif v+0 == 11 then
        for j=32,40 do
            for i=0,83 do 
                minetest.set_node({x=i*(-1), y=5, z=j*(-1)}, {name="castrum:water"})
            end
            for i=1,3 do
                minetest.set_node({x=i, y=5, z=j*(-1)}, {name="castrum:water"})
            end
        end
    elseif v+0 == 0 then
        for j=32,40 do
            for k=4,7 do
                for i=0,83 do 
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:stone"})
                end
                for i=1,3 do
                    minetest.set_node({x=i, y=k, z=j*(-1)}, {name="default:stone"})
                end
            end
        end
        for j=32,40 do
            for i=0,83 do
                if minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "default:wood" and minetest.get_node({x=i*(-1), y=8, z=j*(-1)}).name ~= "castrum:bridge" then
                    minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="castrum:dirt_with_grass"})
                end
            end
            for i=1,3 do
                minetest.set_node({x=i, y=8, z=j*(-1)}, {name="castrum:dirt_with_grass"})
            end
        end
    end
end