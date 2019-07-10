function Battleground(v,player)
    if v+0 == 1 then
        for j=72,76 do
            for i=80,84 do
                minetest.set_node({x=j*(-1), y=9, z=i*(-1)}, {name="default:cobble"})
            end
        end
    elseif v+0 == 2 then
        for j=72,76 do
            for i=80,84 do
                minetest.set_node({x=j*(-1), y=10, z=i*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-74, y=10, z=-80}, {name="air"})
    elseif v+0 == 3 then
        minetest.set_node({x=-72, y=11, z=-80}, {name="default:cobble"})
        minetest.set_node({x=-72, y=11, z=-82}, {name="default:cobble"})
        minetest.set_node({x=-72, y=11, z=-84}, {name="default:cobble"})
        minetest.set_node({x=-74, y=11, z=-84}, {name="default:cobble"})
        minetest.set_node({x=-76, y=11, z=-84}, {name="default:cobble"})
        minetest.set_node({x=-76, y=11, z=-82}, {name="default:cobble"})
        minetest.set_node({x=-76, y=11, z=-80}, {name="default:cobble"})
    elseif v+0 == 4 then
        minetest.set_node({x=-72, y=12, z=-80}, {name="castrum:fire"})
        minetest.set_node({x=-72, y=12, z=-82}, {name="castrum:fire"})
        minetest.set_node({x=-72, y=12, z=-84}, {name="castrum:fire"})
        minetest.set_node({x=-74, y=12, z=-84}, {name="castrum:fire"})
        minetest.set_node({x=-76, y=12, z=-84}, {name="castrum:fire"})
        minetest.set_node({x=-76, y=12, z=-82}, {name="castrum:fire"})
        minetest.set_node({x=-76, y=12, z=-80}, {name="castrum:fire"})
        minetest.set_node({x=-74, y=11, z=-81}, {name="castrum:knight_dark"})
        screwdriver_handler(player, {type="node", under={x=-74, y=11, z=-81}, above={x=-74, y=11, z=-81}}, 1)
        screwdriver_handler(player, {type="node", under={x=-74, y=11, z=-81}, above={x=-74, y=11, z=-81}}, 1)
    elseif v+0 == 5 then
        minetest.set_node({x=-72, y=11, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=11, z=-82}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=11, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-74, y=11, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=11, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=11, z=-82}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=11, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=9, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=9, z=-82}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=9, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-74, y=9, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=9, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=9, z=-82}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=9, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-74, y=9, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-73, y=10, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-75, y=10, z=-80}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=10, z=-81}, {name="default:stone_block"})
        minetest.set_node({x=-76, y=10, z=-83}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=10, z=-81}, {name="default:stone_block"})
        minetest.set_node({x=-72, y=10, z=-83}, {name="default:stone_block"})
        minetest.set_node({x=-73, y=10, z=-84}, {name="default:stone_block"})
        minetest.set_node({x=-75, y=10, z=-84}, {name="default:stone_block"})
    elseif v+0 == 6 then 
        for j=72,76 do
            for i=80,84 do
                for k=9,12 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:cobble" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:stone_block"})
                    end
                end
            end
        end
	elseif v+0 == 7 then
        minetest.set_node({x=-72, y=11, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=11, z=-82}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=11, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-74, y=11, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=11, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=11, z=-82}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=11, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=9, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=9, z=-82}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=9, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-74, y=9, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=9, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=9, z=-82}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=9, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-74, y=9, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-73, y=10, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-75, y=10, z=-80}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=10, z=-81}, {name="default:desert_cobble"})
        minetest.set_node({x=-76, y=10, z=-83}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=10, z=-81}, {name="default:desert_cobble"})
        minetest.set_node({x=-72, y=10, z=-83}, {name="default:desert_cobble"})
        minetest.set_node({x=-73, y=10, z=-84}, {name="default:desert_cobble"})
        minetest.set_node({x=-75, y=10, z=-84}, {name="default:desert_cobble"})
	elseif v+0 == 8 then 
        for j=72,76 do
            for i=80,84 do
                for k=9,12 do
                    if minetest.get_node({x=j*(-1), y=k, z=i*(-1)}).name == "default:stone_block" then
                        minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="default:desert_cobble"})
                    end
                end
            end
        end
	elseif v+0 == 9 then 
        minetest.set_node({x=-72, y=11, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=11, z=-82}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=11, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-74, y=11, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=11, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=11, z=-82}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=11, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=9, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=9, z=-82}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=9, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-74, y=9, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=9, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=9, z=-82}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=9, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-74, y=9, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-73, y=10, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-75, y=10, z=-80}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=10, z=-81}, {name="default:desert_stone_block"})
        minetest.set_node({x=-76, y=10, z=-83}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=10, z=-81}, {name="default:desert_stone_block"})
        minetest.set_node({x=-72, y=10, z=-83}, {name="default:desert_stone_block"})
        minetest.set_node({x=-73, y=10, z=-84}, {name="default:desert_stone_block"})
        minetest.set_node({x=-75, y=10, z=-84}, {name="default:desert_stone_block"})
    elseif v+0 == 0 then 
        for j=72,76 do
            for i=80,84 do
                for k=9,12 do
                    minetest.set_node({x=j*(-1), y=k, z=i*(-1)}, {name="air"})
                end
            end
        end
    end
end