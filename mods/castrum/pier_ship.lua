function Update_Pier(v,update)
	local level = ""
	if update then
		file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "r")
		level = file:read("*l")
		file:close()
	else
		level = v
	end
	if tonumber(level) == 0 then
		minetest.place_schematic({x=-8, y=6, z=-65}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_0.mts","0")
        minetest.place_schematic({x=121, y=6, z=38}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_i0.mts","0")
		minetest.place_schematic({x=309, y=6, z=38}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_m0.mts","0")
		minetest.place_schematic({x=-76, y=6, z=104}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_c0.mts","0")
    elseif tonumber(level) < 6 then
		minetest.place_schematic({x=-8, y=6, z=-65}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_"..(tonumber(level))..".mts","0")
    elseif tonumber(level) == 6 then
		minetest.place_schematic({x=-8, y=6, z=-65}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_6.mts","0")
        minetest.place_schematic({x=121, y=6, z=38}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_i6.mts","0")
	elseif tonumber(level) == 7 then
		minetest.place_schematic({x=-8, y=6, z=-65}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_7.mts","0")
        minetest.place_schematic({x=121, y=6, z=38}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_i7.mts","0")
		minetest.place_schematic({x=309, y=6, z=38}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_m7.mts","0")
	elseif tonumber(level) == 8 then
		minetest.place_schematic({x=-8, y=6, z=-65}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_8.mts","0")
        minetest.place_schematic({x=121, y=6, z=38}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_i8.mts","0")
		minetest.place_schematic({x=309, y=6, z=38}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_m8.mts","0")
		minetest.place_schematic({x=-76, y=6, z=104}, minetest.get_modpath("castrum").."/schematics/Pier/Pier_c8.mts","0")
    end
end

function Update_Ship1(v,update)
	local level = ""
	if update then
		file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
		level = file:read("*l")
		file:close()
	else
		level = v
	end
	if tonumber(level) == 0 then
		minetest.place_schematic({x=-16, y=7, z=-65}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_0.mts","0")
        minetest.place_schematic({x=127, y=7, z=39}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_i0.mts","0")
		minetest.place_schematic({x=315, y=7, z=39}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_m0.mts","0")
		minetest.place_schematic({x=-84, y=7, z=104}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_c0.mts","0")
    elseif tonumber(level) < 6 then
		minetest.place_schematic({x=-16, y=7, z=-65}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_"..(tonumber(level))..".mts","0")
    elseif tonumber(level) == 6 then
		minetest.place_schematic({x=-16, y=7, z=-65}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_6.mts","0")
        minetest.place_schematic({x=127, y=7, z=39}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_i6.mts","0")
	elseif tonumber(level) == 7 then
		minetest.place_schematic({x=-16, y=7, z=-65}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_7.mts","0")
        minetest.place_schematic({x=127, y=7, z=39}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_i7.mts","0")
		minetest.place_schematic({x=315, y=7, z=39}, minetest.get_modpath("castrum").."/schematics/Ship1/Ship1_m7.mts","0")
    end
end