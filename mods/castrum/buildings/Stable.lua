function Stable(v,player)
    if v+0 == 1 then
        for j=66,69 do
            minetest.set_node({x=j*(-1), y=9, z=-1}, {name="default:wood"})
            minetest.set_node({x=j*(-1), y=9, z=7}, {name="default:wood"})
        end
        for i=0,6 do
            minetest.set_node({x=-69, y=9, z=i}, {name="default:wood"})
        end
    elseif v+0 == 2 then
        for j=66,69 do
            minetest.set_node({x=j*(-1), y=10, z=-1}, {name="default:wood"})
            minetest.set_node({x=j*(-1), y=10, z=7}, {name="default:wood"})
        end
        for i=0,6 do
            minetest.set_node({x=-69, y=10, z=i}, {name="default:wood"})
        end
    elseif v+0 == 3 then
        for j=66,69 do
            minetest.set_node({x=j*(-1), y=11, z=-1}, {name="default:wood"})
            minetest.set_node({x=j*(-1), y=11, z=7}, {name="default:wood"})
        end
        for i=0,6 do
            minetest.set_node({x=-69, y=11, z=i}, {name="default:wood"})
        end
    elseif v+0 == 4 then
        for j=66,68 do
            minetest.set_node({x=j*(-1), y=12, z=0}, {name="default:wood"})
            minetest.set_node({x=j*(-1), y=12, z=6}, {name="default:wood"})
        end
        for i=1,5 do
            minetest.set_node({x=-68, y=12, z=i}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for i=1,5 do
            minetest.set_node({x=-67, y=13, z=i}, {name="default:wood"})
            minetest.set_node({x=-66, y=13, z=i}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for j=61,65 do
            minetest.set_node({x=j*(-1), y=9, z=-1}, {name="default:fence_wood"})
            minetest.set_node({x=j*(-1), y=9, z=7}, {name="default:fence_wood"})
        end
        for i=0,6 do
            minetest.set_node({x=-61, y=9, z=i}, {name="default:fence_wood"})
        end
        minetest.set_node({x=-61, y=9, z=3}, {name="doors:gate_wood_closed"})
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
        screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
    elseif v+0 == 7 then
        minetest.set_node({x=-67, y=9, z=0}, {name="castrum:cobble"})
        minetest.set_node({x=-68, y=9, z=1}, {name="castrum:cobble"})
        minetest.set_node({x=-68, y=9, z=0}, {name="default:river_water_source"})
        minetest.set_node({x=-68, y=9, z=6}, {name="farming:straw"})
        minetest.set_node({x=-68, y=10, z=6}, {name="farming:straw"})
        minetest.set_node({x=-67, y=9, z=6}, {name="farming:straw"})
        minetest.set_node({x=-68, y=9, z=5}, {name="farming:straw"})
	elseif v+0 == 8 then
		for j=61,69 do
            for i=0,7 do
                for k=9,14 do
					if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:junglewood"})
                    end
					if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:fence_wood" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:fence_junglewood"})
                    end
					if minetest.get_node({x=j*(-1), y=k, z=i}).name == "doors:gate_wood_closed" then
						minetest.set_node({x=j*(-1), y=k, z=i}, {name="doors:gate_junglewood_closed"})
						screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
						screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
						screwdriver_handler(player, {type="node", under={x=-61, y=9, z=3}, above={x=-61, y=9, z=3}}, 1)
					end
                end
            end
        end
        for j=61,69 do
            for k=9,14 do
                if minetest.get_node({x=j*(-1), y=k, z=-1}).name == "default:wood" then
					minetest.set_node({x=j*(-1), y=k, z=-1}, {name="default:junglewood"})
				end
				if minetest.get_node({x=j*(-1), y=k, z=-1}).name == "default:fence_wood" then
					minetest.set_node({x=j*(-1), y=k, z=-1}, {name="default:fence_junglewood"})
				end
            end
        end
    elseif v+0 == 0 then
        for j=61,69 do
            for i=0,7 do
                for k=9,14 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="air"})
                end
            end
        end
        for j=61,69 do
            for k=9,14 do
                minetest.set_node({x=j*(-1), y=k, z=-1}, {name="air"})
            end
        end
    end
end