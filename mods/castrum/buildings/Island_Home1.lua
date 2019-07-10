function Island_Home1(v,player)
    if v+0 == 1 then
        minetest.set_node({x=144, y=9, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=9, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=9, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=144, y=9, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=145, y=9, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=137, y=9, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=139,143 do
            minetest.set_node({x=i, y=9, z=-22}, {name="default:sandstone"})
        end
    elseif v+0 == 2 then
        minetest.set_node({x=144, y=10, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=10, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=10, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=144, y=10, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=145, y=10, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=137, y=10, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=139,143 do
            minetest.set_node({x=i, y=10, z=-22}, {name="default:sandstone"})
        end
		minetest.set_node({x=145, y=10, z=-17}, {name="default:glass"})
		minetest.set_node({x=145, y=10, z=-18}, {name="default:glass"})
		minetest.set_node({x=141, y=10, z=-22}, {name="default:glass"})
		minetest.set_node({x=137, y=10, z=-17}, {name="default:glass"})
		minetest.set_node({x=137, y=10, z=-18}, {name="default:glass"})
    elseif v+0 == 3 then
        minetest.set_node({x=144, y=11, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=11, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=138, y=11, z=-21}, {name="default:sandstone"})
		minetest.set_node({x=144, y=11, z=-21}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=145, y=11, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=137, y=11, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=139,143 do
            minetest.set_node({x=i, y=11, z=-22}, {name="default:sandstone"})
        end
	elseif v+0 == 4 then
        minetest.set_node({x=143, y=12, z=-14}, {name="default:sandstone"})
		minetest.set_node({x=139, y=12, z=-14}, {name="default:sandstone"})
		for j=15,20 do
            minetest.set_node({x=144, y=12, z=j*(-1)}, {name="default:sandstone"})
            minetest.set_node({x=138, y=12, z=j*(-1)}, {name="default:sandstone"})
        end
		for i=139,143 do
            minetest.set_node({x=i, y=12, z=-21}, {name="default:sandstone"})
        end
	elseif v+0 == 5 then
		for j=14,20 do
            for i=139,143 do
				minetest.set_node({x=i, y=13, z=j*(-1)}, {name="default:sandstone"})
			end
        end
		minetest.set_node({x=143, y=13, z=-14}, {name="air"})
		minetest.set_node({x=139, y=13, z=-14}, {name="air"})
		minetest.set_node({x=141, y=13, z=-18}, {name="air"})
		minetest.set_node({x=141, y=9, z=-18}, {name="castrum:fire"})
    elseif v+0 == 0 then
        for i=137,145 do
            for k=9,13 do
                for j=14,22 do
                    minetest.set_node({x=i, y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end