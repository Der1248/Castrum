function Pier(v,player)
    if v+0 == 1 then
        for j=4,8 do
            for i=52,53 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-53}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-53}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-53}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-53}, {name="default:wood"})
    elseif v+0 == 2 then
        for j=4,8 do
            for i=54,56 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-56}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-56}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-56}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-56}, {name="default:wood"})
    elseif v+0 == 3 then
        for j=4,8 do
            for i=57,59 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-59}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-59}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-59}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-59}, {name="default:wood"})
    elseif v+0 == 4 then
        for j=4,8 do
            for i=60,62 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-62}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-62}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-62}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-62}, {name="default:wood"})
    elseif v+0 == 5 then
        for j=4,8 do
            for i=63,65 do
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
            end
        end
        minetest.set_node({x=-8, y=7, z=-65}, {name="default:wood"})
        minetest.set_node({x=-8, y=6, z=-65}, {name="default:wood"})
        minetest.set_node({x=-4, y=7, z=-65}, {name="default:wood"})
        minetest.set_node({x=-4, y=6, z=-65}, {name="default:wood"})
        minetest.set_node({x=-8, y=8, z=-58}, {name="castrum:ship1"})
    elseif v+0 == 6 then
        for j=4,8 do
            for i=52,65 do
                for k=6,8 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:junglewood"})
                    end
                end
            end
        end
        for j=121,125 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
                    end
                end
            end
        end
	elseif v+0 == 7 then
        for j=4,8 do
            for i=52,65 do
                for k=6,8 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:junglewood" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:pine_wood"})
                    end
                end
            end
        end
        for j=121,125 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
                    end
                end
            end
        end
		for j=309,313 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:pine_wood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for j=4,8 do
            for i=52,65 do
                for k=6,7 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:water_source"})
                end
                minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
            end
        end
        for j=121,125 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:junglewood" or minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:wood"})
                    end
                end
            end
        end
		for j=309,313 do
            for i=38,51 do
                for k=6,8 do
                    if minetest.get_node({x=j, y=k, z=i}).name == "default:pine_wood" then
                        minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
                    end
                end
            end
        end
    end
end