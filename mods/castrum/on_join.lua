local map_version = 14
minetest.register_on_joinplayer(function(player)
	minetest.mkdir(minetest.get_worldpath().."/SAVE")
	local files = {
		{"Lake","0"},
		{"Barracks","0"},
		{"Battleground","0"},
		{"Chapter","1"},
		{"Camp1","0"},
		{"Knight_1","0"},
		{"Island_Fountain","0"},
		{"Island_Walle","0"},
		{"Island_Walln","0"},
		{"Island_Walls","0"},
		{"Island_Wallw","0"},
		{"Sandmine","0"},
		{"Cactusfarm","0"},
		{"Camp2","0"},
		{"Island_Smithy","0"},
		{"Knight_2","0"},
		{"Lake2","0"},
		{"Horse_1","0"},
		{"Mountain_Quarry","0"},
		{"Mountain_Fountain","0"},
		{"Island_Home1","0"},
		{"Island_Home2","0"},
		{"Island_Barracks","0"},
		{"Island_Pier","0"},
		{"Knight_3","0"},
		{"Sail1","0"},
		{"Sail2","0"},
		{"Ship2","0"},
		{"Pirate_1","0"},
		{"Mountain_Smithy","0"},
		{"Farm","0"},
		{"Meadow","0"},
		{"Camp3","0"},
		{"Cannon1","0"},
		{"Cannon2","0"},
		{"Cannon3","0"},
		{"Island_Battleground","0"},
		{"Island_Pier2","0"},
		{"Island_Chapter","1"},
		{"Bridge","0"},
		{"Bridge_status","0"},
		{"Fountain","0"},
		{"Home1","0"},
		{"Home2","0"},
		{"Home3","0"},
		{"Home4","0"},
		{"Mine","0"},
		{"Moate","0"},
		{"Moatn","0"},
		{"Moats","0"},
		{"Moatw","0"},
		{"Pier","0"},
		{"Quarry","0"},
		{"Ship1","0"},
		{"Smithy","0"},
		{"Stable","0"},
		{"Tower1","0"},
		{"Tower2","0"},
		{"Tower3","0"},
		{"Tower4","0"},
		{"Tree","0"},
		{"Walle","0"},
		{"Walln","0"},
		{"Walls","0"},
		{"Wallw","0"},
		{"Market","0"},
		{"Map_Version",""..map_version},
	}
	for _, m in pairs(files) do
		if file_check(minetest.get_worldpath().."/SAVE/"..m[1]..".txt") == true then
		else
			if m[1] == "Map_Version" then
				update(player)
			end
			file = io.open(minetest.get_worldpath().."/SAVE/"..m[1]..".txt", "w")
			file:write(m[2])
			file:close()
		end
	end
	file = io.open(minetest.get_worldpath().."/SAVE/Map_Version.txt", "r")
	local map_ver = file:read("*l")
    file:close()
	if tonumber(map_ver) < map_version then
		update(player)
		file = io.open(minetest.get_worldpath().."/SAVE/Map_Version.txt", "w")
		file:write(map_version)
		file:close()
	end
	minetest.setting_set("time_speed", "0")
    minetest.set_timeofday(0.5)
	if player:get_player_name() == "singleplayer" then
    else
        minetest.kick_player(player:get_player_name(), "you can play castrum only as 'singleplayer'")
    end
end)