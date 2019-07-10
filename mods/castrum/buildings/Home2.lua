function Home2(v,player)
    if v+0 == 1 then
        for i=48,54 do
            for j=20,25 do
                minetest.set_node({x=i*(-1), y=9, z=j*(-1)}, {name="default:cobble"})
            end
        end
        minetest.set_node({x=-51, y=9, z=-19}, {name="stairs:stair_cobble"})
        screwdriver_handler(player, {type="node", under={x=-51, y=9, z=-19}, above={x=-51, y=9, z=-19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-51, y=9, z=-19}, above={x=-51, y=9, z=-19}}, 1)
    elseif v+0 == 2 then
        for j=20,25 do
            minetest.set_node({x=-48, y=10, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-54, y=10, z=j*(-1)}, {name="default:wood"})
        end
        for i=48,54 do
            minetest.set_node({x=i*(-1), y=10, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=10, z=-20}, {name="default:wood"})
        end
        minetest.set_node({x=-51, y=10, z=-20}, {name="air"})
    elseif v+0 == 3 then
        for j=20,25 do
            minetest.set_node({x=-48, y=11, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-54, y=11, z=j*(-1)}, {name="default:wood"})
        end
        for i=48,54 do
            minetest.set_node({x=i*(-1), y=11, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=11, z=-20}, {name="default:wood"})
        end
        minetest.set_node({x=-51, y=11, z=-20}, {name="air"})
        minetest.set_node({x=-51, y=10, z=-20}, {name="doors:door_wood_a"})
        screwdriver_handler(player, {type="node", under={x=-51, y=10, z=-20}, above={x=-51, y=10, z=-20}}, 1)
        screwdriver_handler(player, {type="node", under={x=-51, y=10, z=-20}, above={x=-51, y=10, z=-20}}, 1)
    elseif v+0 == 4 then
        for j=20,25 do
            minetest.set_node({x=-48, y=12, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-54, y=12, z=j*(-1)}, {name="default:wood"})
        end
        for i=48,54 do
            minetest.set_node({x=i*(-1), y=12, z=-25}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=12, z=-20}, {name="default:wood"})
        end
    elseif v+0 == 5 then
        for j=21,24 do
            minetest.set_node({x=-49, y=13, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-53, y=13, z=j*(-1)}, {name="default:wood"})
        end
        for i=49,53 do
            minetest.set_node({x=i*(-1), y=13, z=-24}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=13, z=-21}, {name="default:wood"})
        end
    elseif v+0 == 6 then
        for j=22,23 do
            minetest.set_node({x=-50, y=14, z=j*(-1)}, {name="default:wood"})
            minetest.set_node({x=-52, y=14, z=j*(-1)}, {name="default:wood"})
        end
        for i=50,52 do
            minetest.set_node({x=i*(-1), y=14, z=-23}, {name="default:wood"})
            minetest.set_node({x=i*(-1), y=14, z=-22}, {name="default:wood"})
        end
        minetest.set_node({x=-54, y=9, z=-19}, {name="castrum:character1"})
        screwdriver_handler(player, {type="node", under={x=-54, y=9, z=-19}, above={x=-54, y=9, z=-19}}, 1)
        screwdriver_handler(player, {type="node", under={x=-54, y=9, z=-19}, above={x=-54, y=9, z=-19}}, 1)
    elseif v+0 == 7 then
        for i=48,54 do
            for j=19,25 do
                for k=9,14 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:wood" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:junglewood"})
                    end
                end
            end
        end
	elseif v+0 == 8 then
        for i=48,54 do
            for j=19,25 do
                for k=9,14 do
                    if minetest.get_node({x=i*(-1), y=k, z=j*(-1)}).name == "default:junglewood" then
                        minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="default:pine_wood"})
                    end
                end
            end
        end
    elseif v+0 == 0 then
        for i=48,54 do
            for j=19,25 do
                for k=9,14 do
                    minetest.set_node({x=i*(-1), y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end