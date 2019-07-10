function Wall_west(v,player)
    if v+0 == 1 then
        for i=0,29 do
            minetest.set_node({x=-74, y=9, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 2 then
        for i=0,29 do
            minetest.set_node({x=-74, y=10, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 3 then
        for i=0,29 do
            minetest.set_node({x=-74, y=11, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 4 then
        for i=0,29 do
            minetest.set_node({x=-74, y=12, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for i=0,29 do
            minetest.set_node({x=-74, y=13, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 6 then
        for i=0,29 do
            minetest.set_node({x=-74, y=14, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 7 then
        for i=0,29 do
            minetest.set_node({x=-74, y=15, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 8 then
        for i=0,29 do
            minetest.set_node({x=-74, y=16, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 9 then
        for i=0,29 do
            minetest.set_node({x=-74, y=17, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 10 then
        for i=0,29 do
            minetest.set_node({x=-74, y=18, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 11 then
        for i=0,29 do
            minetest.set_node({x=-74, y=19, z=i}, {name="default:cobble"})
        end
        for i=0,23 do
            minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:cobble"})
        end
    elseif v+0 == 12 then
        for j=71,74 do
            for i=0,29 do
                minetest.set_node({x=j*(-1), y=20, z=i}, {name="default:cobble"})
            end
            for i=0,23 do
                minetest.set_node({x=j*(-1), y=20, z=i*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 13 then
        for i=0,29 do
            if i%2 == 1 then
                minetest.set_node({x=-74, y=21, z=i}, {name="default:cobble"})
            end
        end
        for i=0,23 do
            if i%2 == 1 then
                minetest.set_node({x=-74, y=21, z=i*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 14 then
        minetest.set_node({x=-73, y=21, z=-21}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=-17}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=-13}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=19}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=23}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-73, y=21, z=27}, {name="castrum:castrum_knight2"})
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=-21}, above={x=-73, y=21, z=-21}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=-17}, above={x=-73, y=21, z=-17}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=-13}, above={x=-73, y=21, z=-13}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=19}, above={x=-73, y=21, z=19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=23}, above={x=-73, y=21, z=23}}, 1)
        screwdriver_handler(player, {type="node", under={x=-73, y=21, z=27}, above={x=-73, y=21, z=27}}, 1)
    elseif v+0 == 15 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:stone_block"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:stone_block"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:stone_block"})
            end
        end
    elseif v+0 == 16 then
        for i=71,74 do
            for k=9,21 do
                for j=0,29 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone_block"})
                    end
                end
                for j=0,23 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 17 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:desert_cobble"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:desert_cobble"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:desert_cobble"})
            end
        end
	elseif v+0 == 18 then
        for i=71,74 do
            for k=9,21 do
                for j=0,29 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:desert_cobble"})
                    end
                end
                for j=0,23 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 19 then
        for i=0,29 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=20, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=16, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=12, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=20, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=16, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=12, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=0,29 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=17, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=15, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=13, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=11, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=9, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%2 == 0 then
                minetest.set_node({x=-74, y=19, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=17, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=15, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=13, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=11, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=9, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
        for i=0,29 do
            if i%4 == 3 then
                minetest.set_node({x=-74, y=18, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=14, z=i}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=10, z=i}, {name="default:desert_stone_block"})
            end
        end
        for i=0,23 do
            if i%4 == 1 then
                minetest.set_node({x=-74, y=18, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=14, z=i*(-1)}, {name="default:desert_stone_block"})
                minetest.set_node({x=-74, y=10, z=i*(-1)}, {name="default:desert_stone_block"})
            end
        end
    elseif v+0 == 0 then
        for i=71,74 do
            for k=9,21 do
                for j=0,29 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
                for j=0,23 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    
    end
end