function Barracks(v,player)
    if v+0 == 1 then
        for j=37,43 do
            for i=25,31 do
                minetest.set_node({x=j*(-1), y=9, z=i}, {name="default:cobble"})
            end
        end
    elseif v+0 == 2 then 
        for i=25,30 do
            minetest.set_node({x=-43, y=10, z=i}, {name="default:cobble"})
            minetest.set_node({x=-37, y=10, z=i}, {name="default:cobble"})
        end
        for j=38,42 do
            minetest.set_node({x=j*(-1), y=10, z=31}, {name="default:cobble"})
        end
    elseif v+0 == 3 then 
        for i=26,30 do
            minetest.set_node({x=-43, y=11, z=i}, {name="default:cobble"})
            minetest.set_node({x=-37, y=11, z=i}, {name="default:cobble"})
        end
        for j=38,42 do
            minetest.set_node({x=j*(-1), y=11, z=31}, {name="default:cobble"})
        end
    elseif v+0 == 4 then 
        for i=27,30 do
            minetest.set_node({x=-43, y=12, z=i}, {name="default:cobble"})
            minetest.set_node({x=-37, y=12, z=i}, {name="default:cobble"})
        end
        for j=38,42 do
            minetest.set_node({x=j*(-1), y=12, z=31}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for j=38,42 do
            for i=27,30 do
                minetest.set_node({x=j*(-1), y=13, z=i}, {name="default:cobble"})
            end
        end
    elseif v+0 == 6 then
        minetest.set_node({x=-42, y=10, z=28}, {name="castrum:knight1_sit"})
        minetest.set_node({x=-40, y=10, z=30}, {name="castrum:knight1_sit"})
        minetest.set_node({x=-38, y=10, z=28}, {name="castrum:knight1_sit"})
        minetest.set_node({x=-40, y=10, z=28}, {name="castrum:fire"})
        screwdriver_handler(player, {type="node", under={x=-38, y=10, z=28}, above={x=-38, y=10, z=28}}, 1)
        screwdriver_handler(player, {type="node", under={x=-42, y=10, z=28}, above={x=-42, y=10, z=28}}, 1)
        screwdriver_handler(player, {type="node", under={x=-42, y=10, z=28}, above={x=-42, y=10, z=28}}, 1)
        screwdriver_handler(player, {type="node", under={x=-42, y=10, z=28}, above={x=-42, y=10, z=28}}, 1)
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
        for j=37,43 do
            for i=25,31 do
                for k=9,13 do
                    minetest.set_node({x=j*(-1), y=k, z=i}, {name="air"})
                end
            end
        end
    end
end