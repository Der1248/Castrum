function Island_Battleground(v,player)
    if v+0 == 1 then
        for j=180,184 do
            for i=42,46 do
                minetest.set_node({x=j, y=9, z=i}, {name="default:sandstone"})
            end
        end
    elseif v+0 == 2 then
        for j=180,184 do
            for i=42,46 do
                minetest.set_node({x=j, y=10, z=i}, {name="default:sandstone"})
            end
        end
        minetest.set_node({x=180, y=10, z=44}, {name="air"})
    elseif v+0 == 3 then
        minetest.set_node({x=180, y=11, z=46}, {name="default:sandstone"})
        minetest.set_node({x=182, y=11, z=46}, {name="default:sandstone"})
        minetest.set_node({x=184, y=11, z=46}, {name="default:sandstone"})
        minetest.set_node({x=184, y=11, z=44}, {name="default:sandstone"})
        minetest.set_node({x=184, y=11, z=42}, {name="default:sandstone"})
        minetest.set_node({x=182, y=11, z=42}, {name="default:sandstone"})
        minetest.set_node({x=180, y=11, z=42}, {name="default:sandstone"})
    elseif v+0 == 4 then
        minetest.set_node({x=180, y=12, z=46}, {name="castrum:fire"})
        minetest.set_node({x=182, y=12, z=46}, {name="castrum:fire"})
        minetest.set_node({x=184, y=12, z=46}, {name="castrum:fire"})
        minetest.set_node({x=184, y=12, z=44}, {name="castrum:fire"})
        minetest.set_node({x=184, y=12, z=42}, {name="castrum:fire"})
        minetest.set_node({x=182, y=12, z=42}, {name="castrum:fire"})
        minetest.set_node({x=180, y=12, z=42}, {name="castrum:fire"})
        minetest.set_node({x=182, y=11, z=44}, {name="castrum:skeleton_captain"})
        screwdriver_handler(player, {type="node", under={x=182, y=11, z=44}, above={x=182, y=11, z=44}}, 1)
    elseif v+0 == 0 then 
        for j=180,184 do
            for i=42,46 do
                for k=9,12 do
                    minetest.set_node({x=j, y=k, z=i}, {name="air"})
                end
            end
        end
    end
end