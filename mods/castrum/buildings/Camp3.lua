function Camp3(v,player)
    if v+0 == 1 then
        minetest.set_node({x=-85, y=9, z=-57}, {name="castrum:fire"})
    elseif v+0 == 0 then 
        for j=81,89 do
            for i=53,61 do
                for k=9,9 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end