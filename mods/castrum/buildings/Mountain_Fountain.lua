function Mountain_Fountain(v,player)
    if v+0 == 1 then
        for i=334,338 do
            for j=3,5 do
                minetest.set_node({x=i, y=40, z=j*(-1)}, {name="default:mossycobble"})
            end
        end
        for i=335,337 do
            minetest.set_node({x=i, y=40, z=-2}, {name="default:mossycobble"})
			minetest.set_node({x=i, y=40, z=-6}, {name="default:mossycobble"})
        end
    elseif v+0 == 2 then
        minetest.set_node({x=334, y=41, z=-3}, {name="default:mossycobble"})
		minetest.set_node({x=334, y=41, z=-4}, {name="default:mossycobble"})
		minetest.set_node({x=334, y=41, z=-5}, {name="default:mossycobble"})
		minetest.set_node({x=338, y=41, z=-3}, {name="default:mossycobble"})
		minetest.set_node({x=338, y=41, z=-4}, {name="default:mossycobble"})
		minetest.set_node({x=338, y=41, z=-5}, {name="default:mossycobble"})
		minetest.set_node({x=335, y=41, z=-2}, {name="default:mossycobble"})
		minetest.set_node({x=336, y=41, z=-2}, {name="default:mossycobble"})
		minetest.set_node({x=337, y=41, z=-2}, {name="default:mossycobble"})
		minetest.set_node({x=335, y=41, z=-6}, {name="default:mossycobble"})
		minetest.set_node({x=336, y=41, z=-6}, {name="default:mossycobble"})
		minetest.set_node({x=337, y=41, z=-6}, {name="default:mossycobble"})
    elseif v+0 == 3 then
        minetest.set_node({x=336, y=41, z=-4}, {name="default:mossycobble"})
        minetest.set_node({x=336, y=42, z=-4}, {name="default:mossycobble"})
        minetest.set_node({x=336, y=43, z=-4}, {name="default:water_source"})
	elseif v+0 == 4 then
		minetest.set_node({x=335, y=40, z=-6}, {name="castrum:mossy_stone"})
		minetest.set_node({x=336, y=41, z=-6}, {name="castrum:mossy_stone"})
		minetest.set_node({x=337, y=40, z=-6}, {name="castrum:mossy_stone"})
		minetest.set_node({x=338, y=41, z=-5}, {name="castrum:mossy_stone"})
		minetest.set_node({x=338, y=40, z=-4}, {name="castrum:mossy_stone"})
		minetest.set_node({x=338, y=41, z=-3}, {name="castrum:mossy_stone"})
		minetest.set_node({x=337, y=40, z=-2}, {name="castrum:mossy_stone"})
		minetest.set_node({x=336, y=41, z=-2}, {name="castrum:mossy_stone"})
		minetest.set_node({x=335, y=40, z=-2}, {name="castrum:mossy_stone"})
		minetest.set_node({x=334, y=41, z=-3}, {name="castrum:mossy_stone"})
		minetest.set_node({x=334, y=40, z=-4}, {name="castrum:mossy_stone"})
		minetest.set_node({x=334, y=41, z=-5}, {name="castrum:mossy_stone"})
    elseif v+0 == 0 then
        for i=334,338 do
            for k=40,43 do
                for j=2,6 do
                    minetest.set_node({x=i, y=k, z=j*(-1)}, {name="air"})
                end
            end
        end
    end
end