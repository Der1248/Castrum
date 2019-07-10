function Moat_east(v,player)
    if v+0 == 1 then
        for i=0,31 do
            minetest.set_node({x=-1, y=8, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=8, z=i}, {name="air"})
        end
    elseif v+0 == 2 then
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-1, y=7, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=7, z=i}, {name="air"})
        end
    elseif v+0 == 3 then
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=8, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=8, z=i}, {name="air"})
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-1, y=6, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=6, z=i}, {name="air"})
        end
    elseif v+0 == 4 then
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=8, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=7, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=7, z=i}, {name="air"})
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-1, y=5, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=5, z=i}, {name="air"})
        end
    elseif v+0 == 5 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=8, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=8, z=i}, {name="air"})
            end
        end
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=7, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=6, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=6, z=i}, {name="air"})
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=-1, y=4, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=-1, y=4, z=i}, {name="air"})
        end
    elseif v+0 == 6 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=7, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=7, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=7, z=i}, {name="air"})
            end
        end
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=6, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=5, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=5, z=i}, {name="air"})
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 7 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=6, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=6, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=6, z=i}, {name="air"})
            end
        end
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=5, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
        for i=0,31 do
            minetest.set_node({x=1, y=4, z=i*(-1)}, {name="air"})
        end
        for i=0,37 do
            minetest.set_node({x=1, y=4, z=i}, {name="air"})
        end
    elseif v+0 == 8 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=5, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=5, z=i}, {name="air"})
            end
        end
        for j=0,4 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
        for j=0,2 do
            for i=0,31 do
                minetest.set_node({x=j, y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 9 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="air"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=4, z=i*(-1)}, {name="air"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=4, z=i}, {name="air"})
            end
        end
    elseif v+0 == 10 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=4, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=4, z=i}, {name="castrum:water"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=4, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=4, z=i}, {name="castrum:water"})
            end
        end
	elseif v+0 == 11 then
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=5, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=5, z=i}, {name="castrum:water"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=5, z=i*(-1)}, {name="castrum:water"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=5, z=i}, {name="castrum:water"})
            end
        end
    elseif v+0 == 0 then
        for k=4,7 do
            for j=0,5 do
                for i=0,31 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone"})
                end
                for i=0,37 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:stone"})
                end
            end
            for j=0,3 do
                for i=0,31 do
                    minetest.set_node({x=j, y=k, z=i*(-1)}, {name="default:stone"})
                end
                for i=0,37 do
                    minetest.set_node({x=j, y=k, z=i}, {name="default:stone"})
                end
            end
        end
        for j=0,5 do
            for i=0,31 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="castrum:dirt_with_grass"})
            end
            for i=0,37 do
                minetest.set_node({x=j*(-1), y=8, z=i}, {name="castrum:dirt_with_grass"})
            end
        end
        for j=0,3 do
            for i=0,31 do
                minetest.set_node({x=j, y=8, z=i*(-1)}, {name="castrum:dirt_with_grass"})
            end
            for i=0,37 do
                minetest.set_node({x=j, y=8, z=i}, {name="castrum:dirt_with_grass"})
            end
        end
    end
end