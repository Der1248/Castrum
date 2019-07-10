function Sail1(v,player)
    if v+0 == 1 then
        for j=161,169 do
			minetest.set_node({x=j, y=16, z=44}, {name="wool:white"})
			minetest.set_node({x=j, y=15, z=45}, {name="wool:white"})
			minetest.set_node({x=j, y=14, z=45}, {name="wool:white"})
			minetest.set_node({x=j, y=13, z=45}, {name="wool:white"})
			minetest.set_node({x=j, y=12, z=44}, {name="wool:white"})
        end
	elseif v+0 == 2 then
        for j=161,169 do
			minetest.set_node({x=j, y=16, z=44}, {name="wool:pink"})
			minetest.set_node({x=j, y=15, z=45}, {name="wool:pink"})
			minetest.set_node({x=j, y=14, z=45}, {name="wool:pink"})
			minetest.set_node({x=j, y=13, z=45}, {name="wool:pink"})
			minetest.set_node({x=j, y=12, z=44}, {name="wool:pink"})
        end
    elseif v+0 == 0 then 
        for j=161,169 do
			minetest.set_node({x=j, y=16, z=44}, {name="air"})
			minetest.set_node({x=j, y=15, z=45}, {name="air"})
			minetest.set_node({x=j, y=14, z=45}, {name="air"})
			minetest.set_node({x=j, y=13, z=45}, {name="air"})
			minetest.set_node({x=j, y=12, z=44}, {name="air"})
        end
    end
end