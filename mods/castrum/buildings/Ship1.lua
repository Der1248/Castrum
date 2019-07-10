function Ship1(v,player)
    if v+0 == 1 then
        for j=11,15 do
            for i=54,62 do
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-12, y=7, z=-63}, {name="default:wood"})
        minetest.set_node({x=-13, y=7, z=-63}, {name="default:wood"})
        minetest.set_node({x=-14, y=7, z=-63}, {name="default:wood"})
        minetest.set_node({x=-13, y=7, z=-64}, {name="default:wood"})
    elseif v+0 == 2 then
        for j=10,16 do
            minetest.set_node({x=j*(-1), y=8, z=-54}, {name="default:wood"})
        end
        for j=11,15 do
            minetest.set_node({x=j*(-1), y=9, z=-53}, {name="default:wood"})
        end
        for i=55,62 do
            minetest.set_node({x=-10, y=8, z=i*(-1)}, {name="default:wood"})
            minetest.set_node({x=-16, y=8, z=i*(-1)}, {name="default:wood"})
        end
        minetest.set_node({x=-16, y=9, z=-54}, {name="default:wood"})
        minetest.set_node({x=-10, y=9, z=-54}, {name="default:wood"})
        minetest.set_node({x=-11, y=8, z=-63}, {name="default:wood"})
        minetest.set_node({x=-12, y=8, z=-64}, {name="default:wood"})
        minetest.set_node({x=-13, y=8, z=-65}, {name="default:wood"})
        minetest.set_node({x=-14, y=8, z=-64}, {name="default:wood"})
        minetest.set_node({x=-15, y=8, z=-63}, {name="default:wood"})
    elseif v+0 == 3 then
        for i=55,62 do
            minetest.set_node({x=-10, y=9, z=i*(-1)}, {name="default:fence_wood"})
            minetest.set_node({x=-16, y=9, z=i*(-1)}, {name="default:fence_wood"})
        end
        for j=11,15 do
            minetest.set_node({x=j*(-1), y=10, z=-53}, {name="default:fence_wood"})
        end
        minetest.set_node({x=-16, y=10, z=-54}, {name="default:fence_wood"})
        minetest.set_node({x=-10, y=10, z=-54}, {name="default:fence_wood"})
        minetest.set_node({x=-11, y=9, z=-63}, {name="default:fence_wood"})
        minetest.set_node({x=-12, y=9, z=-64}, {name="default:fence_wood"})
        minetest.set_node({x=-13, y=9, z=-65}, {name="default:fence_wood"})
        minetest.set_node({x=-14, y=9, z=-64}, {name="default:fence_wood"})
        minetest.set_node({x=-15, y=9, z=-63}, {name="default:fence_wood"})
        minetest.set_node({x=-10, y=9, z=-58}, {name="air"})
    elseif v+0 == 4 then
        for k=8,15 do
            minetest.set_node({x=-13, y=k, z=-58}, {name="default:wood"})
        end
        minetest.set_node({x=-10, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-11, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-12, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-14, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-15, y=15, z=-58}, {name="default:fence_wood"})
        minetest.set_node({x=-16, y=15, z=-58}, {name="default:fence_wood"})
    elseif v+0 == 5 then
        for j=10,16 do
            minetest.set_node({x=j*(-1), y=15, z=-59}, {name="wool:white"})
            minetest.set_node({x=j*(-1), y=14, z=-60}, {name="wool:white"})
            minetest.set_node({x=j*(-1), y=13, z=-60}, {name="wool:white"})
            minetest.set_node({x=j*(-1), y=12, z=-59}, {name="wool:white"})
        end
    elseif v+0 == 6 then
        for j=10,16 do
            for i=53,65 do
                for k=7,15 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:junglewood"})
                    end
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_junglewood"})
                    end
                end
            end
        end
        for j=127,133 do
            for i=39,51 do
                for k=7,15 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
                    end
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
                    end
                end
            end
        end
	elseif v+0 == 7 then
        for j=10,16 do
            for i=53,65 do
                for k=7,15 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:junglewood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:pine_wood"})
                    end
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:fence_junglewood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:fence_pine_wood"})
                    end
                end
            end
        end
        for j=127,133 do
            for i=39,51 do
                for k=7,15 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
                    end
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:fence_pine_wood"})
                    end
                end
            end
        end
		for j=315,321 do
            for i=39,51 do
                for k=7,15 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
                    end
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:fence_pine_wood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for j=10,16 do
            for i=53,65 do
                for k=8,15 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
                minetest.set_node({x=j*(-1), y=7, z=i*(-1)}, {name="default:water_source"})
            end
        end
        for j=127,133 do
            for i=29,51 do
                for k=7,15 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" or minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:wood"})
                    end
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_junglewood" or minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:fence_wood"})
                    end
                end
            end
        end
		for j=315,321 do
            for i=39,51 do
                for k=7,15 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
                    end
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:fence_pine_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:fence_junglewood"})
                    end
                end
            end
        end
    end
end