function Wall_north(v,player)
    if v+0 == 1 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 2 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 3 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 4 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 5 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 6 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 7 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 8 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 9 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 10 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 11 then
        for i=14,66 do
            minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:cobble"})
        end
    elseif v+0 == 12 then
        for i=14,66 do
            for j=34,37 do
                minetest.set_node({x=i*(-1), y=20, z=j}, {name="default:cobble"})
            end
        end
    elseif v+0 == 13 then
        for i=14,66 do
            if i%2 == 0 then
                minetest.set_node({x=i*(-1), y=21, z=37}, {name="default:cobble"})
            end
        end
    elseif v+0 == 14 then
        minetest.set_node({x=-64, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-60, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-56, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-24, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-20, y=21, z=36}, {name="castrum:castrum_knight2"})
        minetest.set_node({x=-16, y=21, z=36}, {name="castrum:castrum_knight2"})
        screwdriver_handler(player, {type="node", under={x=-64, y=21, z=36}, above={x=-64, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-60, y=21, z=36}, above={x=-60, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-56, y=21, z=36}, above={x=-56, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-24, y=21, z=36}, above={x=-24, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-20, y=21, z=36}, above={x=-20, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-16, y=21, z=36}, above={x=-16, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-64, y=21, z=36}, above={x=-64, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-60, y=21, z=36}, above={x=-60, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-56, y=21, z=36}, above={x=-56, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-24, y=21, z=36}, above={x=-24, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-20, y=21, z=36}, above={x=-20, y=21, z=36}}, 1)
        screwdriver_handler(player, {type="node", under={x=-16, y=21, z=36}, above={x=-16, y=21, z=36}}, 1)
    elseif v+0 == 15 then
        for i=14,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:stone_block"})
            end
        end
        for i=14,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:stone_block"})
            end
        end
        for i=14,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:stone_block"})
            end
        end
    elseif v+0 == 16 then
        for i=14,66 do
            for j=34,37 do
                for k=9,21 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 17 then
        for i=14,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:desert_cobble"})
            end
        end
        for i=14,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:desert_cobble"})
            end
        end
        for i=14,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:desert_cobble"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:desert_cobble"})
            end
        end
	elseif v+0 == 18 then
        for i=14,66 do
            for j=34,37 do
                for k=9,21 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 19 then
        for i=14,66 do
            if i%4 == 2 then
                minetest.set_node({x=i*(-1), y=20, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=16, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=12, z=37}, {name="default:desert_stone_block"})
            end
        end
        for i=14,66 do
            if i%2 == 1 then
                minetest.set_node({x=i*(-1), y=19, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=17, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=15, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=13, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=11, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=9, z=37}, {name="default:desert_stone_block"})
            end
        end
        for i=14,66 do
            if i%4 == 0 then
                minetest.set_node({x=i*(-1), y=18, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=14, z=37}, {name="default:desert_stone_block"})
                minetest.set_node({x=i*(-1), y=10, z=37}, {name="default:desert_stone_block"})
            end
        end
    elseif v+0 == 0 then
        for i=14,66 do
            for j=34,37 do
                for k=9,21 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
            end
        end
    end
end