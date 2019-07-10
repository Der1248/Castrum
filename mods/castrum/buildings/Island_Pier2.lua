function Island_Pier2(v,player)
    if v+0 == 1 then
        for j=176,178 do
            for i=42,46 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=178, y=7, z=42}, {name="default:wood"})
        minetest.set_node({x=178, y=6, z=42}, {name="default:wood"})
        minetest.set_node({x=178, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=178, y=6, z=46}, {name="default:wood"})
    elseif v+0 == 2 then
        for j=179,181 do
            for i=42,46 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=181, y=7, z=42}, {name="default:wood"})
        minetest.set_node({x=181, y=6, z=42}, {name="default:wood"})
        minetest.set_node({x=181, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=181, y=6, z=46}, {name="default:wood"})
    elseif v+0 == 3 then
        for j=182,184 do
            for i=42,46 do
                minetest.set_node({x=j, y=8, z=i}, {name="default:wood"})
            end
        end
        minetest.set_node({x=184, y=7, z=42}, {name="default:wood"})
        minetest.set_node({x=184, y=6, z=42}, {name="default:wood"})
        minetest.set_node({x=184, y=7, z=46}, {name="default:wood"})
        minetest.set_node({x=184, y=6, z=46}, {name="default:wood"})
		minetest.set_node({x=179, y=8, z=44}, {name="castrum:island_battleground"})
	elseif v+0 == 4 then
        for j=176,184 do
            for i=42,46 do
				for k=6,8 do
					if minetest.get_node({x=j, y=k, z=i}).name == "default:wood" then
						minetest.set_node({x=j, y=k, z=i}, {name="default:junglewood"})
					end
				end
            end
        end
    elseif v+0 == 0 then
        for j=176,184 do
            for i=42,46 do
                for k=6,7 do
                    minetest.set_node({x=j, y=k, z=i}, {name="default:water_source"})
                end
                minetest.set_node({x=j, y=8, z=i}, {name="air"})
            end
        end
    end
end