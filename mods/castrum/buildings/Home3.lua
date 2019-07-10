function Home3(v,player)
    if v+0 == 1 then
        for i=26,32 do
            for j=26,31 do
                minetest.set_node({x=i*(-1), y=9, z=j}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-29, y=9, z=25}, {name="stairs:stair_cobble"})
    elseif v+0 == 2 then
        for j=26,31 do
            minetest.set_node({x=-26, y=10, z=j}, {name="default:wood"})
            minetest.set_node({x=-32, y=10, z=j}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=10, z=31}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=10, z=26}, {name="default:wood"})
        end
        minetest.set_node({x=-29, y=10, z=26}, {name="air"})
    elseif v+0 == 3 then
        for j=26,31 do
            minetest.set_node({x=-26, y=11, z=j}, {name="default:wood"})
            minetest.set_node({x=-32, y=11, z=j}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=11, z=31}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=11, z=26}, {name="default:wood"})
        end
        minetest.set_node({x=-29, y=11, z=26}, {name="air"})
        minetest.set_node({x=-29, y=10, z=26}, {name="doors:door_wood_a"})
    elseif v+0 == 4 then
        for j=26,31 do
            minetest.set_node({x=-26, y=12, z=j}, {name="default:wood"})
            minetest.set_node({x=-32, y=12, z=j}, {name="default:wood"})
        end
        for i=26,32 do
            minetest.set_node({x=i*(-1), y=12, z=31}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=12, z=26}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for j=27,30 do
            minetest.set_node({x=-27, y=13, z=j}, {name="default:wood"})
            minetest.set_node({x=-31, y=13, z=j}, {name="default:wood"})
        end
        for i=27,31 do
            minetest.set_node({x=i*(-1), y=13, z=27}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=13, z=30}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for j=28,29 do
            minetest.set_node({x=-28, y=14, z=j}, {name="default:wood"})
            minetest.set_node({x=-30, y=14, z=j}, {name="default:wood"})
        end
        for i=28,30 do
            minetest.set_node({x=i*(-1), y=14, z=28}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=14, z=29}, {name="default:wood"})
        end
        minetest.set_node({x=-26, y=9, z=25}, {name="castrum:character1"})
	elseif v+0 == 7 then
        for i=26,32 do
            for j=25,31 do
                for k=9,14 do
					if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:wood" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:junglewood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for i=26,32 do
            for j=25,31 do
                for k=9,14 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
            end
        end
    end
end