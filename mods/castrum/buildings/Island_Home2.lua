function Island_Home2(v,player)
    if v+0 == 1 then
        minetest.set_node({x=158, y=9, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=152, y=9, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=152, y=9, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=158, y=9, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=159, y=9, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=151, y=9, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=153,157 do
            minetest.set_node({x=i, y=9, z=-22}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        minetest.set_node({x=158, y=10, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=152, y=10, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=152, y=10, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=158, y=10, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=159, y=10, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=151, y=10, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=153,157 do
            minetest.set_node({x=i, y=10, z=-22}, {name="default:sandstone"})
        end
		minetest.set_node({x=159, y=10, z=-17}, {name="default:glass"})
		minetest.set_node({x=159, y=10, z=-18}, {name="default:glass"})
		minetest.set_node({x=155, y=10, z=-22}, {name="default:glass"})
		minetest.set_node({x=151, y=10, z=-17}, {name="default:glass"})
		minetest.set_node({x=151, y=10, z=-18}, {name="default:glass"})
    elseif v+0 == 3 then
        minetest.set_node({x=158, y=11, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=152, y=11, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=152, y=11, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=158, y=11, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=159, y=11, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=151, y=11, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=153,157 do
            minetest.set_node({x=i, y=11, z=-22}, {name="default:sandstone"})
        end
	elseif v+0 == 4 then
        minetest.set_node({x=157, y=12, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=153, y=12, z=-14}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=158, y=12, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=152, y=12, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=153,157 do
            minetest.set_node({x=i, y=12, z=-21}, {name="default:sandstone"})
        end
	elseif v+0 == 5 then
		for j=14,20 do
            for i=153,157 do
				minetest.set_node({x=i, y=13, z=j*(-1)}, {name="default:sandstone"})
			end
        end
		minetest.set_node({x=157, y=13, z=-14}, {name="air"})
		minetest.set_node({x=153, y=13, z=-14}, {name="air"})
		minetest.set_node({x=155, y=13, z=-18}, {name="air"})
		minetest.set_node({x=155, y=9, z=-18}, {name="castrum:fire"})
    elseif v+0 == 0 then
        for i=151,159 do
            for k=9,13 do
                for j=14,22 do
                    minetest.set_node({x=i, y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end