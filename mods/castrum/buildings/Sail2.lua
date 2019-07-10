function Sail2(v,player)
    if v+0 == 1 then
        for j=163,167 do
			minetest.set_node({x=j, y=14, z=50}, {name="wool:white"})
			minetest.set_node({x=j, y=13, z=51}, {name="wool:white"})
			minetest.set_node({x=j, y=12, z=51}, {name="wool:white"})
			minetest.set_node({x=j, y=11, z=50}, {name="wool:white"})
        end
	elseif v+0 == 2 then
        for j=163,167 do
			minetest.set_node({x=j, y=14, z=50}, {name="wool:pink"})
			minetest.set_node({x=j, y=13, z=51}, {name="wool:pink"})
			minetest.set_node({x=j, y=12, z=51}, {name="wool:pink"})
			minetest.set_node({x=j, y=11, z=50}, {name="wool:pink"})
        end
    elseif v+0 == 0 then 
        for j=163,167 do
			minetest.set_node({x=j, y=14, z=50}, {name="air"})
			minetest.set_node({x=j, y=13, z=51}, {name="air"})
			minetest.set_node({x=j, y=12, z=51}, {name="air"})
			minetest.set_node({x=j, y=11, z=50}, {name="air"})
        end
    end
end