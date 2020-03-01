function Bridge_Status(player,change,update)
    file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	local level = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "r")
	local status = file:read("*l")
    file:close()
    if tonumber(level) < 9 then
		if update == false then
			minetest.chat_send_player(player:get_player_name(), "build bridge first")
		end
		minetest.place_schematic({x=-44, y=8, z=-40}, minetest.get_modpath("castrum").."/schematics/Bridge1/Bridge1_"..(tonumber(level))..".mts","0")
    else
        if tonumber(status) == 0 then
			if change then
				file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
				file:write("1")
				file:close()
				minetest.place_schematic({x=-44, y=8, z=-40}, minetest.get_modpath("castrum").."/schematics/Bridge1/Bridge1_00.mts","0")
				minetest.place_schematic({x=-44, y=8, z=-32}, minetest.get_modpath("castrum").."/schematics/Bridge2/Bridge2_"..(tonumber(level))..".mts","0")
			else
				minetest.place_schematic({x=-44, y=8, z=-32}, minetest.get_modpath("castrum").."/schematics/Bridge2/Bridge2_0.mts","0")
				minetest.place_schematic({x=-44, y=8, z=-40}, minetest.get_modpath("castrum").."/schematics/Bridge1/Bridge1_"..(tonumber(level))..".mts","0")
			end
        elseif tonumber(status) == 1 then
            if change then
				file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
				file:write("0")
				file:close()
				minetest.place_schematic({x=-44, y=8, z=-32}, minetest.get_modpath("castrum").."/schematics/Bridge2/Bridge2_0.mts","0")
				minetest.place_schematic({x=-44, y=8, z=-40}, minetest.get_modpath("castrum").."/schematics/Bridge1/Bridge1_"..(tonumber(level))..".mts","0")
			else
				minetest.place_schematic({x=-44, y=8, z=-40}, minetest.get_modpath("castrum").."/schematics/Bridge1/Bridge1_00.mts","0")
				minetest.place_schematic({x=-44, y=8, z=-32}, minetest.get_modpath("castrum").."/schematics/Bridge2/Bridge2_"..(tonumber(level))..".mts","0")
			end
        end
    end
end