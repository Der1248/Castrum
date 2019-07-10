function Island_Barracks(v,player)
    if v+0 == 1 then
        for j=165,173 do
            for i=6,14 do
                minetest.set_node({x=j, y=9, z=i}, {name="default:sandstone"})
            end
        end
    elseif v+0 == 2 then 
        for j=165,171 do
            minetest.set_node({x=j, y=10, z=6}, {name="default:sandstone"})
			minetest.set_node({x=j, y=10, z=14}, {name="default:sandstone"})
        end
		minetest.set_node({x=172, y=10, z=7}, {name="default:sandstone"})
		minetest.set_node({x=172, y=10, z=13}, {name="default:sandstone"})
        for i=8,12 do
            minetest.set_node({x=173, y=10, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 3 then 
        for j=166,171 do
            minetest.set_node({x=j, y=11, z=6}, {name="default:sandstone"})
			minetest.set_node({x=j, y=11, z=14}, {name="default:sandstone"})
        end
		minetest.set_node({x=172, y=11, z=7}, {name="default:sandstone"})
		minetest.set_node({x=172, y=11, z=13}, {name="default:sandstone"})
        for i=8,12 do
            minetest.set_node({x=173, y=11, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 4 then 
        for j=167,171 do
            minetest.set_node({x=j, y=12, z=6}, {name="default:sandstone"})
			minetest.set_node({x=j, y=12, z=14}, {name="default:sandstone"})
        end
		minetest.set_node({x=172, y=12, z=7}, {name="default:sandstone"})
		minetest.set_node({x=172, y=12, z=13}, {name="default:sandstone"})
        for i=8,12 do
            minetest.set_node({x=173, y=12, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 5 then
        for j=168,171 do
            minetest.set_node({x=j, y=13, z=6}, {name="default:sandstone"})
			minetest.set_node({x=j, y=13, z=14}, {name="default:sandstone"})
        end
		minetest.set_node({x=172, y=13, z=7}, {name="default:sandstone"})
		minetest.set_node({x=172, y=13, z=13}, {name="default:sandstone"})
        for i=8,12 do
            minetest.set_node({x=173, y=13, z=i}, {name="default:sandstone"})
        end
    elseif v+0 == 6 then
		for j=168,172 do
            for i=7,13 do
                minetest.set_node({x=j, y=14, z=i}, {name="default:sandstone"})
            end
        end
		minetest.set_node({x=172, y=14, z=7}, {name="air"})
		minetest.set_node({x=172, y=14, z=13}, {name="air"})
		minetest.set_node({x=169, y=10, z=10}, {name="castrum:fire"})
    elseif v+0 == 7 then
        for j=37,43 do
            for i=25,31 do
                for k=9,13 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:stone_block"})
                    end
                end
            end
        end
	elseif v+0 == 8 then
        for j=37,43 do
            for i=25,31 do
                for k=9,13 do
                    if minetest.get_node({x=j*(-1), y=k, z=i}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i}, {name="default:desert_cobble"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for j=165,173 do
            for i=6,14 do
                for k=9,14 do
                    minetest.set_node({x=j, y=k, z=i}, {name="air"})
                end
            end
        end
    end
end