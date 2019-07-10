function Lake2(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-31, y=8, z=-64}, {name="default:river_water_source"})
        minetest.set_node({x=-34, y=9, z=-67}, {name="default:chest"})
        screwdriver_handler(player, {type="node", under={x=-34, y=9, z=-67}, above={x=-34, y=9, z=-67}}, 1)
    elseif v+0 == 2 then
        minetest.set_node({x=-30, y=8, z=-64}, {name="default:river_water_source"})
        minetest.set_node({x=-32, y=8, z=-64}, {name="default:river_water_source"})
        minetest.set_node({x=-31, y=8, z=-65}, {name="default:river_water_source"})
        minetest.set_node({x=-31, y=8, z=-63}, {name="default:river_water_source"})
	elseif v+0 == 3 then
        minetest.set_node({x=-29, y=8, z=-64}, {name="default:river_water_source"})
        minetest.set_node({x=-30, y=8, z=-65}, {name="default:river_water_source"})
        minetest.set_node({x=-31, y=8, z=-66}, {name="default:river_water_source"})
        minetest.set_node({x=-32, y=8, z=-65}, {name="default:river_water_source"})
		minetest.set_node({x=-33, y=8, z=-64}, {name="default:river_water_source"})
		minetest.set_node({x=-32, y=8, z=-63}, {name="default:river_water_source"})
		minetest.set_node({x=-31, y=8, z=-62}, {name="default:river_water_source"})
		minetest.set_node({x=-30, y=8, z=-63}, {name="default:river_water_source"})
	elseif v+0 == 4 then
		minetest.set_node({x=-29, y=8, z=-63}, {name="default:river_water_source"})
		minetest.set_node({x=-30, y=8, z=-62}, {name="default:river_water_source"})
		minetest.set_node({x=-32, y=8, z=-62}, {name="default:river_water_source"})
		minetest.set_node({x=-33, y=8, z=-63}, {name="default:river_water_source"})
		minetest.set_node({x=-29, y=8, z=-63}, {name="default:river_water_source"})
		minetest.set_node({x=-33, y=8, z=-65}, {name="default:river_water_source"})
		minetest.set_node({x=-32, y=8, z=-66}, {name="default:river_water_source"})
		minetest.set_node({x=-30, y=8, z=-66}, {name="default:river_water_source"})
		minetest.set_node({x=-29, y=8, z=-65}, {name="default:river_water_source"})
    elseif v+0 == 0 then 
        for j=29,33 do
            for i=62,66 do
                for k=8,8 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="castrum:dirt_with_grass"})
                end
            end
        end
        minetest.set_node({x=-34, y=9, z=-67}, {name="air"})
    end
end