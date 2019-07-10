function Ship2(v,player)
    if v+0 == 1 then
        for j=162,168 do
            for i=40,48 do
                minetest.set_node({x=j, y=7, z=i}, {name="default:wood"})
            end
        end
    elseif v+0 == 2 then
        for j=162,168 do
            for i=49,51 do
                minetest.set_node({x=j, y=7, z=i}, {name="default:wood"})
            end
        end
		for j=163,167 do
            for i=52,53 do
                minetest.set_node({x=j, y=7, z=i}, {name="default:wood"})
            end
        end
		for j=164,166 do
            for i=54,55 do
                minetest.set_node({x=j, y=7, z=i}, {name="default:wood"})
            end
        end
		minetest.set_node({x=165, y=7, z=56}, {name="default:wood"})
		minetest.set_node({x=165, y=7, z=57}, {name="default:wood"})
    elseif v+0 == 3 then
        for i=41,48 do
            minetest.set_node({x=169, y=8, z=i}, {name="default:wood"})
			minetest.set_node({x=161, y=8, z=i}, {name="default:wood"})
        end
		minetest.set_node({x=162, y=8, z=40}, {name="default:wood"})
		minetest.set_node({x=168, y=8, z=40}, {name="default:wood"})
		for j=163,167 do
            minetest.set_node({x=j, y=8, z=39}, {name="default:wood"})
        end
		minetest.set_node({x=165, y=8, z=40}, {name="default:wood"})
    elseif v+0 == 4 then
        for i=49,51 do
            minetest.set_node({x=169, y=8, z=i}, {name="default:wood"})
			minetest.set_node({x=161, y=8, z=i}, {name="default:wood"})
        end
		minetest.set_node({x=168, y=8, z=52}, {name="default:wood"})
		minetest.set_node({x=162, y=8, z=52}, {name="default:wood"})
		minetest.set_node({x=167, y=8, z=54}, {name="default:wood"})
		minetest.set_node({x=163, y=8, z=54}, {name="default:wood"})
		minetest.set_node({x=166, y=8, z=56}, {name="default:wood"})
		minetest.set_node({x=164, y=8, z=56}, {name="default:wood"})
		minetest.set_node({x=165, y=8, z=57}, {name="default:wood"})
		minetest.set_node({x=165, y=8, z=58}, {name="default:wood"})
    elseif v+0 == 5 then
		minetest.set_node({x=162, y=9, z=40}, {name="default:wood"})
		minetest.set_node({x=168, y=9, z=40}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=41}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=41}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=43}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=43}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=45}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=45}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=47}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=47}, {name="default:wood"})
		for j=163,167 do
            minetest.set_node({x=j, y=9, z=39}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        minetest.set_node({x=161, y=9, z=49}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=49}, {name="default:wood"})
		minetest.set_node({x=161, y=9, z=51}, {name="default:wood"})
		minetest.set_node({x=169, y=9, z=51}, {name="default:wood"})
		minetest.set_node({x=162, y=9, z=52}, {name="default:wood"})
		minetest.set_node({x=168, y=9, z=52}, {name="default:wood"})
		minetest.set_node({x=162, y=9, z=53}, {name="default:wood"})
		minetest.set_node({x=168, y=9, z=53}, {name="default:wood"})
		minetest.set_node({x=163, y=9, z=54}, {name="default:wood"})
		minetest.set_node({x=167, y=9, z=54}, {name="default:wood"})
		minetest.set_node({x=163, y=9, z=55}, {name="default:wood"})
		minetest.set_node({x=167, y=9, z=55}, {name="default:wood"})
		minetest.set_node({x=164, y=9, z=56}, {name="default:wood"})
		minetest.set_node({x=166, y=9, z=56}, {name="default:wood"})
		minetest.set_node({x=164, y=9, z=57}, {name="default:wood"})
		minetest.set_node({x=166, y=9, z=57}, {name="default:wood"})
		minetest.set_node({x=165, y=9, z=58}, {name="default:wood"})
		minetest.set_node({x=165, y=9, z=59}, {name="default:wood"})
	elseif v+0 == 7 then
		minetest.set_node({x=162, y=10, z=40}, {name="default:wood"})
		minetest.set_node({x=168, y=10, z=40}, {name="default:wood"})
		for j=163,167 do
            minetest.set_node({x=j, y=10, z=39}, {name="default:wood"})
        end
	elseif v+0 == 8 then
		minetest.set_node({x=167, y=8, z=40}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=167, y=8, z=40}, above={x=167, y=8, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=167, y=8, z=40}, above={x=167, y=8, z=40}}, 1)
		minetest.set_node({x=166, y=8, z=40}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=166, y=8, z=40}, above={x=166, y=8, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=166, y=8, z=40}, above={x=166, y=8, z=40}}, 1)
		minetest.set_node({x=164, y=8, z=40}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=40}, above={x=164, y=8, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=40}, above={x=164, y=8, z=40}}, 1)
		minetest.set_node({x=163, y=8, z=40}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=40}, above={x=163, y=8, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=40}, above={x=163, y=8, z=40}}, 1)
		minetest.set_node({x=168, y=8, z=41}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=41}, above={x=168, y=8, z=41}}, 1)
		minetest.set_node({x=168, y=8, z=43}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=43}, above={x=168, y=8, z=43}}, 1)
		minetest.set_node({x=168, y=8, z=44}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=44}, above={x=168, y=8, z=44}}, 1)
		minetest.set_node({x=168, y=8, z=45}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=45}, above={x=168, y=8, z=45}}, 1)
		minetest.set_node({x=168, y=8, z=47}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=47}, above={x=168, y=8, z=47}}, 1)
		minetest.set_node({x=162, y=8, z=41}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=41}, above={x=162, y=8, z=41}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=41}, above={x=162, y=8, z=41}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=41}, above={x=162, y=8, z=41}}, 1)
		minetest.set_node({x=162, y=8, z=43}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=43}, above={x=162, y=8, z=43}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=43}, above={x=162, y=8, z=43}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=43}, above={x=162, y=8, z=43}}, 1)
		minetest.set_node({x=162, y=8, z=45}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=45}, above={x=162, y=8, z=45}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=45}, above={x=162, y=8, z=45}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=45}, above={x=162, y=8, z=45}}, 1)
		minetest.set_node({x=162, y=8, z=47}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=47}, above={x=162, y=8, z=47}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=47}, above={x=162, y=8, z=47}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=47}, above={x=162, y=8, z=47}}, 1)
	elseif v+0 == 9 then
		minetest.set_node({x=168, y=8, z=49}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=49}, above={x=168, y=8, z=49}}, 1)
		minetest.set_node({x=168, y=8, z=51}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=168, y=8, z=51}, above={x=168, y=8, z=51}}, 1)
		minetest.set_node({x=167, y=8, z=52}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=167, y=8, z=52}, above={x=167, y=8, z=52}}, 1)
		minetest.set_node({x=167, y=8, z=53}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=167, y=8, z=53}, above={x=167, y=8, z=53}}, 1)
		minetest.set_node({x=166, y=8, z=54}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=166, y=8, z=54}, above={x=166, y=8, z=54}}, 1)
		minetest.set_node({x=166, y=8, z=55}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=166, y=8, z=55}, above={x=166, y=8, z=55}}, 1)
		minetest.set_node({x=162, y=8, z=49}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=49}, above={x=162, y=8, z=49}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=49}, above={x=162, y=8, z=49}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=49}, above={x=162, y=8, z=49}}, 1)
		minetest.set_node({x=162, y=8, z=51}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=51}, above={x=162, y=8, z=51}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=51}, above={x=162, y=8, z=51}}, 1)
		screwdriver_handler(player, {type="node", under={x=162, y=8, z=51}, above={x=162, y=8, z=51}}, 1)
		minetest.set_node({x=163, y=8, z=52}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=52}, above={x=163, y=8, z=52}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=52}, above={x=163, y=8, z=52}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=52}, above={x=163, y=8, z=52}}, 1)
		minetest.set_node({x=163, y=8, z=53}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=53}, above={x=163, y=8, z=53}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=53}, above={x=163, y=8, z=53}}, 1)
		screwdriver_handler(player, {type="node", under={x=163, y=8, z=53}, above={x=163, y=8, z=53}}, 1)
		minetest.set_node({x=164, y=8, z=54}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=54}, above={x=163, y=8, z=54}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=54}, above={x=163, y=8, z=54}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=54}, above={x=163, y=8, z=54}}, 1)
		minetest.set_node({x=164, y=8, z=55}, {name="stairs:stair_castrum_wood"})
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=55}, above={x=163, y=8, z=55}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=55}, above={x=163, y=8, z=55}}, 1)
		screwdriver_handler(player, {type="node", under={x=164, y=8, z=55}, above={x=163, y=8, z=55}}, 1)
		minetest.set_node({x=165, y=8, z=56}, {name="stairs:stair_castrum_wood"})
	elseif v+0 == 10 then
		minetest.set_node({x=162, y=11, z=40}, {name="default:fence_wood"})
		minetest.set_node({x=168, y=11, z=40}, {name="default:fence_wood"})
		for j=163,167 do
            minetest.set_node({x=j, y=11, z=39}, {name="default:fence_wood"})
        end
		for i=41,48 do
            minetest.set_node({x=161, y=10, z=i}, {name="default:fence_wood"})
			minetest.set_node({x=169, y=10, z=i}, {name="default:fence_wood"})
        end
		minetest.set_node({x=169, y=10, z=44}, {name="air"})
	elseif v+0 == 11 then
		for i=49,51 do
            minetest.set_node({x=161, y=10, z=i}, {name="default:fence_wood"})
			minetest.set_node({x=169, y=10, z=i}, {name="default:fence_wood"})
        end
		minetest.set_node({x=162, y=10, z=52}, {name="default:fence_wood"})
		minetest.set_node({x=168, y=10, z=52}, {name="default:fence_wood"})
		minetest.set_node({x=162, y=10, z=53}, {name="default:fence_wood"})
		minetest.set_node({x=168, y=10, z=53}, {name="default:fence_wood"})
		minetest.set_node({x=163, y=10, z=54}, {name="default:fence_wood"})
		minetest.set_node({x=167, y=10, z=54}, {name="default:fence_wood"})
		minetest.set_node({x=163, y=10, z=55}, {name="default:fence_wood"})
		minetest.set_node({x=167, y=10, z=55}, {name="default:fence_wood"})
		minetest.set_node({x=164, y=10, z=56}, {name="default:fence_wood"})
		minetest.set_node({x=166, y=10, z=56}, {name="default:fence_wood"})
		minetest.set_node({x=164, y=10, z=57}, {name="default:fence_wood"})
		minetest.set_node({x=166, y=10, z=57}, {name="default:fence_wood"})
		minetest.set_node({x=165, y=10, z=58}, {name="default:fence_wood"})
		minetest.set_node({x=165, y=10, z=59}, {name="default:fence_wood"})
	elseif v+0 == 12 then
		for k=8,14 do
            minetest.set_node({x=165, y=k, z=49}, {name="default:wood"})
        end
		minetest.set_node({x=166, y=14, z=49}, {name="default:fence_wood"})
		minetest.set_node({x=167, y=14, z=49}, {name="default:fence_wood"})
		minetest.set_node({x=164, y=14, z=49}, {name="default:fence_wood"})
		minetest.set_node({x=163, y=14, z=49}, {name="default:fence_wood"})
	elseif v+0 == 13 then
		for k=8,16 do
            minetest.set_node({x=165, y=k, z=43}, {name="default:wood"})
        end
	elseif v+0 == 14 then
		minetest.set_node({x=166, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=167, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=168, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=169, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=161, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=162, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=163, y=16, z=43}, {name="default:fence_wood"})
		minetest.set_node({x=164, y=16, z=43}, {name="default:fence_wood"})
		
		minetest.set_node({x=165, y=7, z=44}, {name="castrum:sail1"})
		minetest.set_node({x=165, y=7, z=50}, {name="castrum:sail2"})
		
		minetest.set_node({x=168, y=7, z=42}, {name="castrum:cannon1"})
		minetest.set_node({x=168, y=7, z=46}, {name="castrum:comming_soon"})
		minetest.set_node({x=168, y=7, z=48}, {name="castrum:comming_soon"})
		minetest.set_node({x=168, y=7, z=50}, {name="castrum:comming_soon"})
		
		minetest.set_node({x=162, y=7, z=42}, {name="castrum:cannon2"})
		minetest.set_node({x=162, y=7, z=44}, {name="castrum:cannon3"})
		minetest.set_node({x=162, y=7, z=46}, {name="castrum:comming_soon"})
		minetest.set_node({x=162, y=7, z=48}, {name="castrum:comming_soon"})
		minetest.set_node({x=162, y=7, z=50}, {name="castrum:comming_soon"})
		minetest.set_node({x=165, y=9, z=40}, {name="castrum:pirate_captain"})
		screwdriver_handler(player, {type="node", under={x=165, y=9, z=40}, above={x=165, y=9, z=40}}, 1)
		screwdriver_handler(player, {type="node", under={x=165, y=9, z=40}, above={x=165, y=9, z=40}}, 1)
    elseif v+0 == 0 then
        for j=161,169 do
            for i=39,59 do
				for k=8,16 do
					minetest.set_node({x=j, y=k, z=i}, {name="air"})
				end
				minetest.set_node({x=j, y=7, z=i}, {name="default:water_source"})
            end
        end
    end
end