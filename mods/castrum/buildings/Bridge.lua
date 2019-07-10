function Bridge(v,player)
    if v+0 == 1 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-32}, {name="default:wood"})
        end
    elseif v+0 == 2 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-33}, {name="default:wood"})
        end
    elseif v+0 == 3 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-34}, {name="default:wood"})
        end
    elseif v+0 == 4 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-35}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for i=36,39 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:wood"})
        end
        for i=41,44 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-37}, {name="default:wood"})
        end
    elseif v+0 == 7 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-38}, {name="default:wood"})
        end
    elseif v+0 == 8 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-39}, {name="default:wood"})
        end
    elseif v+0 == 9 then
        for i=36,44 do
            minetest.set_node({x=i*(-1), y=8, z=-40}, {name="default:wood"})
        end
    elseif v+0 == 10 then
        for i=36,44 do
            for j=32,35 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:junglewood"})
            end
        end
        for i=36,44 do
            for j=37,40 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:junglewood"})
            end
        end
        for i=36,39 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:junglewood"})
        end
        for i=41,44 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:junglewood"})
        end
	elseif v+0 == 11 then
        for i=36,44 do
            for j=32,35 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:pine_wood"})
            end
        end
        for i=36,44 do
            for j=37,40 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:pine_wood"})
            end
        end
        for i=36,39 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:pine_wood"})
        end
        for i=41,44 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:pine_wood"})
        end
    elseif v+0 == 0 then
        for i=36,44 do
            for j=32,35 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:dirt_with_grass"})
            end
        end
        for i=36,44 do
            for j=37,40 do
                minetest.set_node({x=i*(-1), y=8, z=j*(-1)}, {name="default:dirt_with_grass"})
            end
        end
        for i=36,39 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:dirt_with_grass"})
        end
        for i=41,44 do
            minetest.set_node({x=i*(-1), y=8, z=-36}, {name="default:dirt_with_grass"})
        end
    end
end