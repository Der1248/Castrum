function Island_Fountain(v,player)
    if v+0 == 1 then
        for i=147,149 do
            for j=0,6 do
                minetest.set_node({x=i, y=9, z=j}, {name="default:sandstone"})
            end
        end
        for i=145,151 do
            for j=2,4 do
                minetest.set_node({x=i, y=9, z=j}, {name="default:sandstone"})
            end
        end
    elseif v+0 == 2 then
        minetest.set_node({x=150, y=9, z=5}, {name="default:sandstone"})
        minetest.set_node({x=146, y=9, z=5}, {name="default:sandstone"})
        minetest.set_node({x=150, y=9, z=1}, {name="default:sandstone"})
        minetest.set_node({x=146, y=9, z=1}, {name="default:sandstone"})
        minetest.set_node({x=150, y=10, z=5}, {name="default:sandstone"})
        minetest.set_node({x=146, y=10, z=5}, {name="default:sandstone"})
        minetest.set_node({x=150, y=10, z=1}, {name="default:sandstone"})
        minetest.set_node({x=146, y=10, z=1}, {name="default:sandstone"})
        minetest.set_node({x=148, y=10, z=3}, {name="default:sandstone"})
    elseif v+0 == 3 then
        minetest.set_node({x=149, y=10, z=6}, {name="default:sandstone"})
        minetest.set_node({x=148, y=10, z=6}, {name="default:sandstone"})
        minetest.set_node({x=147, y=10, z=6}, {name="default:sandstone"})
        minetest.set_node({x=149, y=10, z=0}, {name="default:sandstone"})
        minetest.set_node({x=148, y=10, z=0}, {name="default:sandstone"})
        minetest.set_node({x=147, y=10, z=0}, {name="default:sandstone"})
        minetest.set_node({x=145, y=10, z=2}, {name="default:sandstone"})
        minetest.set_node({x=145, y=10, z=3}, {name="default:sandstone"})
        minetest.set_node({x=145, y=10, z=4}, {name="default:sandstone"})
        minetest.set_node({x=151, y=10, z=2}, {name="default:sandstone"})
        minetest.set_node({x=151, y=10, z=3}, {name="default:sandstone"})
        minetest.set_node({x=151, y=10, z=4}, {name="default:sandstone"})
    elseif v+0 == 4 then
        minetest.set_node({x=148, y=11, z=3}, {name="default:sandstone"})
        minetest.set_node({x=148, y=12, z=3}, {name="default:sandstone"})
        minetest.set_node({x=148, y=13, z=3}, {name="default:water_source"})
	elseif v+0 == 5 then
		minetest.set_node({x=148, y=10, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=147, y=9, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=149, y=9, z=6}, {name="default:desert_sandstone"})
		minetest.set_node({x=146, y=10, z=5}, {name="default:desert_sandstone"})
		minetest.set_node({x=150, y=10, z=5}, {name="default:desert_sandstone"})
		minetest.set_node({x=145, y=9, z=4}, {name="default:desert_sandstone"})
		minetest.set_node({x=151, y=9, z=4}, {name="default:desert_sandstone"})
		minetest.set_node({x=145, y=10, z=3}, {name="default:desert_sandstone"})
		minetest.set_node({x=151, y=10, z=3}, {name="default:desert_sandstone"})
		minetest.set_node({x=145, y=9, z=2}, {name="default:desert_sandstone"})
		minetest.set_node({x=151, y=9, z=2}, {name="default:desert_sandstone"})
		minetest.set_node({x=146, y=10, z=1}, {name="default:desert_sandstone"})
		minetest.set_node({x=150, y=10, z=1}, {name="default:desert_sandstone"})
		minetest.set_node({x=147, y=9, z=0}, {name="default:desert_sandstone"})
		minetest.set_node({x=149, y=9, z=0}, {name="default:desert_sandstone"})
		minetest.set_node({x=148, y=10, z=0}, {name="default:desert_sandstone"})
    elseif v+0 == 0 then
        for i=145,151 do
            for k=9,13 do
                for j=0,6 do
                    minetest.set_node({x=i, y=k, z=j}, {name="air"})
                end
            end
        end
    end
end