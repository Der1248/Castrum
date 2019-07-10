function Island_Pier(v,player)
    if v+0 == 1 then
        for j=171,175 do
            for i=38,40 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=40}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=40}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=40}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=40}, {name="default:wood"})
    elseif v+0 == 2 then
        for j=171,175 do
            for i=41,43 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=43}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=43}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=43}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=43}, {name="default:wood"})
    elseif v+0 == 3 then
        for j=171,175 do
            for i=44,46 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=46}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=46}, {name="default:wood"})
    elseif v+0 == 4 then
        for j=171,175 do
            for i=47,49 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=49}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=49}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=49}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=49}, {name="default:wood"})
    elseif v+0 == 5 then
        for j=171,175 do
            for i=50,52 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=52}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=52}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=52}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=52}, {name="default:wood"})
	elseif v+0 == 6 then
        for j=171,175 do
            for i=53,55 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=55}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=55}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=55}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=55}, {name="default:wood"})
	elseif v+0 == 7 then
        for j=171,175 do
            for i=56,58 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=171, y=7, z=58}, {name="default:wood"})
        minetest.set_node({x=171, y=6, z=58}, {name="default:wood"})
        minetest.set_node({x=175, y=7, z=58}, {name="default:wood"})
        minetest.set_node({x=175, y=6, z=58}, {name="default:wood"})
		minetest.set_node({x=171, y=8, z=44}, {name="castrum:ship2"})
		minetest.set_node({x=175, y=8, z=44}, {name="castrum:island_pier2"})
	elseif v+0 == 8 then
        for j=171,175 do
            for i=38,58 do
				for k=6,8 do
					if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" then
						minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
					end
				end
            end
        end
    elseif v+0 == 0 then
        for j=171,175 do
            for i=38,58 do
                for k=6,7 do
                    minetest.set_node({x=j, y=k, z=i}, {name="default:water_source"})
                end
                minetest.set_node({x=j, y=8, z=i}, {name="air"})
            end
        end
    end
end