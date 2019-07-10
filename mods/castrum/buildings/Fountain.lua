function Fountain(v,player)
    if v+0 == 1 then
        for i=39,41 do
            for j=0,8 do
                minetest.set_node({x=i*(-1), y=9, z=j}, {name="castrum:cobble"})
            end
            for j=1,2 do
                minetest.set_node({x=i*(-1), y=9, z=j*(-1)}, {name="castrum:cobble"})
            end
        end
        for i=35,45 do
            for j=2,4 do
                minetest.set_node({x=i*(-1), y=9, z=j}, {name="castrum:cobble"})
            end
        end
    elseif v+0 == 2 then
        for j=0,7 do
            minetest.set_node({x=38*(-1), y=9, z=j}, {name="castrum:cobble"})
            minetest.set_node({x=42*(-1), y=9, z=j}, {name="castrum:cobble"})
            minetest.set_node({x=37*(-1), y=9, z=j}, {name="castrum:cobble"})
            minetest.set_node({x=43*(-1), y=9, z=j}, {name="castrum:cobble"})
        end
        for j=0,6 do
            minetest.set_node({x=36*(-1), y=9, z=j}, {name="castrum:cobble"})
            minetest.set_node({x=44*(-1), y=9, z=j}, {name="castrum:cobble"})
        end
        minetest.set_node({x=38*(-1), y=9, z=1*(-1)}, {name="castrum:cobble"})
        minetest.set_node({x=42*(-1), y=9, z=1*(-1)}, {name="castrum:cobble"})
        minetest.set_node({x=37*(-1), y=9, z=1*(-1)}, {name="castrum:cobble"})
        minetest.set_node({x=43*(-1), y=9, z=1*(-1)}, {name="castrum:cobble"})
    elseif v+0 == 3 then
        minetest.set_node({x=-41, y=10, z=-2}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=10, z=-2}, {name="castrum:cobble"})
        minetest.set_node({x=-39, y=10, z=-2}, {name="castrum:cobble"})
        minetest.set_node({x=-38, y=10, z=-1}, {name="castrum:cobble"})
        minetest.set_node({x=-37, y=10, z=-1}, {name="castrum:cobble"})
        minetest.set_node({x=-42, y=10, z=-1}, {name="castrum:cobble"})
        minetest.set_node({x=-43, y=10, z=-1}, {name="castrum:cobble"})
        minetest.set_node({x=-44, y=10, z=0}, {name="castrum:cobble"})
        minetest.set_node({x=-44, y=10, z=1}, {name="castrum:cobble"})
        minetest.set_node({x=-36, y=10, z=0}, {name="castrum:cobble"})
        minetest.set_node({x=-36, y=10, z=1}, {name="castrum:cobble"})
        minetest.set_node({x=-35, y=10, z=2}, {name="castrum:cobble"})
        minetest.set_node({x=-35, y=10, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-35, y=10, z=4}, {name="castrum:cobble"})
        minetest.set_node({x=-45, y=10, z=2}, {name="castrum:cobble"})
        minetest.set_node({x=-45, y=10, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-45, y=10, z=4}, {name="castrum:cobble"})
        minetest.set_node({x=-36, y=10, z=5}, {name="castrum:cobble"})
        minetest.set_node({x=-36, y=10, z=6}, {name="castrum:cobble"})
        minetest.set_node({x=-44, y=10, z=5}, {name="castrum:cobble"})
        minetest.set_node({x=-44, y=10, z=6}, {name="castrum:cobble"})
        minetest.set_node({x=-38, y=10, z=7}, {name="castrum:cobble"})
        minetest.set_node({x=-37, y=10, z=7}, {name="castrum:cobble"})
        minetest.set_node({x=-42, y=10, z=7}, {name="castrum:cobble"})
        minetest.set_node({x=-43, y=10, z=7}, {name="castrum:cobble"})
        minetest.set_node({x=-41, y=10, z=8}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=10, z=8}, {name="castrum:cobble"})
        minetest.set_node({x=-39, y=10, z=8}, {name="castrum:cobble"})
    elseif v+0 == 4 then
        minetest.set_node({x=-40, y=10, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=11, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=12, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=13, z=3}, {name="castrum:cobble"})
        minetest.set_node({x=-40, y=14, z=3}, {name="default:water_source"})
        minetest.set_node({x=-40, y=13, z=4}, {name="default:water_source"})
        minetest.set_node({x=-40, y=13, z=2}, {name="default:water_source"})
        minetest.set_node({x=-41, y=13, z=3}, {name="default:water_source"})
        minetest.set_node({x=-39, y=13, z=3}, {name="default:water_source"})
    elseif v+0 == 5 then
        minetest.set_node({x=-41, y=9, z=-2}, {name="default:stone_block"})
        minetest.set_node({x=-40, y=10, z=-2}, {name="default:stone_block"})
        minetest.set_node({x=-39, y=9, z=-2}, {name="default:stone_block"})
        minetest.set_node({x=-38, y=10, z=-1}, {name="default:stone_block"})
        minetest.set_node({x=-37, y=9, z=-1}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=10, z=0}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=9, z=1}, {name="default:stone_block"})
        minetest.set_node({x=-35, y=10, z=2}, {name="default:stone_block"})
        minetest.set_node({x=-35, y=9, z=3}, {name="default:stone_block"})
        minetest.set_node({x=-35, y=10, z=4}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=9, z=5}, {name="default:stone_block"})
        minetest.set_node({x=-36, y=10, z=6}, {name="default:stone_block"})
        minetest.set_node({x=-37, y=9, z=7}, {name="default:stone_block"})
        minetest.set_node({x=-38, y=10, z=7}, {name="default:stone_block"})
        minetest.set_node({x=-39, y=9, z=8}, {name="default:stone_block"})
        minetest.set_node({x=-40, y=10, z=8}, {name="default:stone_block"})
        minetest.set_node({x=-41, y=9, z=8}, {name="default:stone_block"})
        minetest.set_node({x=-42, y=10, z=7}, {name="default:stone_block"})
        minetest.set_node({x=-43, y=9, z=7}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=10, z=6}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=9, z=5}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=10, z=4}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=9, z=3}, {name="default:stone_block"})
        minetest.set_node({x=-45, y=10, z=2}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=9, z=1}, {name="default:stone_block"})
        minetest.set_node({x=-44, y=10, z=0}, {name="default:stone_block"})
        minetest.set_node({x=-43, y=9, z=-1}, {name="default:stone_block"})
        minetest.set_node({x=-42, y=10, z=-1}, {name="default:stone_block"})
    elseif v+0 == 6 then
        for k=9,14 do
            for i=35,45 do
                for j=0,2 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "castrum:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:stone_block"})
                    end
                end
                for j=0,8 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "castrum:cobble" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:stone_block"})
                    end
                end
            end
        end
    elseif v+0 == 7 then
        minetest.set_node({x=-41, y=9, z=-2}, {name="default:desert_cobble"})
        minetest.set_node({x=-40, y=10, z=-2}, {name="default:desert_cobble"})
        minetest.set_node({x=-39, y=9, z=-2}, {name="default:desert_cobble"})
        minetest.set_node({x=-38, y=10, z=-1}, {name="default:desert_cobble"})
        minetest.set_node({x=-37, y=9, z=-1}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=10, z=0}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=9, z=1}, {name="default:desert_cobble"})
        minetest.set_node({x=-35, y=10, z=2}, {name="default:desert_cobble"})
        minetest.set_node({x=-35, y=9, z=3}, {name="default:desert_cobble"})
        minetest.set_node({x=-35, y=10, z=4}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=9, z=5}, {name="default:desert_cobble"})
        minetest.set_node({x=-36, y=10, z=6}, {name="default:desert_cobble"})
        minetest.set_node({x=-37, y=9, z=7}, {name="default:desert_cobble"})
        minetest.set_node({x=-38, y=10, z=7}, {name="default:desert_cobble"})
        minetest.set_node({x=-39, y=9, z=8}, {name="default:desert_cobble"})
        minetest.set_node({x=-40, y=10, z=8}, {name="default:desert_cobble"})
        minetest.set_node({x=-41, y=9, z=8}, {name="default:desert_cobble"})
        minetest.set_node({x=-42, y=10, z=7}, {name="default:desert_cobble"})
        minetest.set_node({x=-43, y=9, z=7}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=10, z=6}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=9, z=5}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=10, z=4}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=9, z=3}, {name="default:desert_cobble"})
        minetest.set_node({x=-45, y=10, z=2}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=9, z=1}, {name="default:desert_cobble"})
        minetest.set_node({x=-44, y=10, z=0}, {name="default:desert_cobble"})
        minetest.set_node({x=-43, y=9, z=-1}, {name="default:desert_cobble"})
        minetest.set_node({x=-42, y=10, z=-1}, {name="default:desert_cobble"})
	elseif v+0 == 8 then
        for k=9,14 do
            for i=35,45 do
                for j=0,2 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:desert_cobble"})
                    end
                end
                for j=0,8 do
                    if minetest.get_node({x=i*(-1), y=k, z=j}).name == "default:stone_block" then
                        minetest.set_node({x=i*(-1), y=k, z=j}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 9 then
        minetest.set_node({x=-41, y=9, z=-2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-40, y=10, z=-2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-39, y=9, z=-2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-38, y=10, z=-1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-37, y=9, z=-1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=10, z=0}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=9, z=1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-35, y=10, z=2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-35, y=9, z=3}, {name="default:desert_stone_block"})
        minetest.set_node({x=-35, y=10, z=4}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=9, z=5}, {name="default:desert_stone_block"})
        minetest.set_node({x=-36, y=10, z=6}, {name="default:desert_stone_block"})
        minetest.set_node({x=-37, y=9, z=7}, {name="default:desert_stone_block"})
        minetest.set_node({x=-38, y=10, z=7}, {name="default:desert_stone_block"})
        minetest.set_node({x=-39, y=9, z=8}, {name="default:desert_stone_block"})
        minetest.set_node({x=-40, y=10, z=8}, {name="default:desert_stone_block"})
        minetest.set_node({x=-41, y=9, z=8}, {name="default:desert_stone_block"})
        minetest.set_node({x=-42, y=10, z=7}, {name="default:desert_stone_block"})
        minetest.set_node({x=-43, y=9, z=7}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=10, z=6}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=9, z=5}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=10, z=4}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=9, z=3}, {name="default:desert_stone_block"})
        minetest.set_node({x=-45, y=10, z=2}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=9, z=1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-44, y=10, z=0}, {name="default:desert_stone_block"})
        minetest.set_node({x=-43, y=9, z=-1}, {name="default:desert_stone_block"})
        minetest.set_node({x=-42, y=10, z=-1}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then
        for k=9,14 do
            for i=35,45 do
                for j=0,2 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
                for j=0,8 do
                    minetest.set_node({x=i*(-1), y=k, z=j}, {name="air"})
                end
            end
        end
    end
end