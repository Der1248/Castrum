function update(player)		
	minetest.place_schematic({ x = -184, y = 5, z =  -91 }, minetest.get_modpath("castrum").."/schematics/Sector/sector1.mts","0")
	minetest.place_schematic({ x = -134, y = 5, z =  -91 }, minetest.get_modpath("castrum").."/schematics/Sector/sector2.mts","0")
	minetest.place_schematic({ x =   54, y = 5, z =  -91 }, minetest.get_modpath("castrum").."/schematics/Sector/sector3.mts","0")
	minetest.place_schematic({ x =  242, y = 5, z =  -91 }, minetest.get_modpath("castrum").."/schematics/Sector/sector4.mts","0")
	minetest.place_schematic({ x = -134, y = 5, z =   97 }, minetest.get_modpath("castrum").."/schematics/Sector/sector5.mts","0")
	minetest.place_schematic({ x =  -66, y = 5, z = -142 }, minetest.get_modpath("castrum").."/schematics/Sector/sector6.mts","0")
	
	player:setpos({x=-40, y=8.5, z=-5.0})
	local files = {
		{"Tower1",{x=-13, y=9, z=-31}},
		{"Tower2",{x=-74, y=9, z=-31}},
		{"Tower3",{x=-74, y=9, z=30}},
		{"Tower4",{x=-13, y=9, z=30}},
		{"Walls",{x=-66, y=9, z=-31}},
		{"Wallw",{x=-74, y=9, z=-23}},
		{"Walln",{x=-66, y=9, z=34}},
		{"Walle",{x=-9, y=9, z=-23}},
		{"Fountain",{x=-45, y=9, z=-2}},
		{"Home1",{x=-32, y=9, z=-25}},
		{"Home2",{x=-54, y=9, z=-25}},
		{"Home3",{x=-32, y=9, z=25}},
		{"Home4",{x=-54, y=9, z=25}},
		{"Moats",{x=-83, y=4, z=-40}},
		{"Moatw",{x=-83, y=4, z=-31}},
		{"Moatn",{x=-83, y=4, z=38}},
		{"Moate",{x=-5, y=4, z=-31}},
		{"Camp1",{x=-67, y=9, z=-61}},
		{"Camp2",{x=-67, y=9, z=-74}},
		{"Camp3",{x=-89, y=9, z=-61}},
		{"Battleground",{x=-76, y=9, z=-84}},
		{"Barracks",{x=-43, y=9, z=25}},
		{"Stable",{x=-69, y=9, z=-1}},
		{"Smithy",{x=-69, y=9, z=-14}},
		{"Island_Walle",{x=178, y=9, z=-27}},
		{"Island_Walln",{x=119, y=9, z=33}},
		{"Island_Walls",{x=119, y=9, z=-27}},
		{"Island_Wallw",{x=118, y=9, z=-27}},
		{"Island_Barracks",{x=165, y=9, z=6}},
		{"Island_Fountain",{x=145, y=9, z=0}},
		{"Island_Home1",{x=137, y=9, z=-22}},
		{"Island_Home2",{x=151, y=9, z=-22}},
		{"Island_Smithy",{x=165, y=9, z=20}},
		{"Island_Pier",{x=171, y=6, z=38}},
		{"Island_Pier2",{x=176, y=6, z=42}},
		{"Island_Battleground",{x=180, y=9, z=42}},
		{"Ship2",{x=161, y=7, z=39}},
		{"Sail1",{x=161, y=12, z=44}},
		{"Sail2",{x=163, y=11, z=50}},
		{"Cannon1",{x=169, y=9, z=42}},
		{"Cannon2",{x=161, y=9, z=42}},
		{"Cannon3",{x=161, y=9, z=44}},
		{"Mountain_Smithy",{x=318, y=40, z=-15}},
		{"Mountain_Fountain",{x=334, y=40, z=-6}},
		{"Quarry",{x=-20, y=9, z=-2}},
		{"Tree",{x=-20, y=9, z=11}},
		{"Mine",{x=-20, y=9, z=-15}},
		{"Lake",{x=-34, y=8, z=-58}},
		{"Lake2",{x=-34, y=8, z=-67}},
		{"Sandmine",{x=123, y=8, z=6}},
		{"Cactusfarm",{x=123, y=8, z=-8}},
		{"Farm",{x=345, y=39, z=-2}},
		{"Mountain_Quarry",{x=345, y=39, z=-16}},
		{"Meadow",{x=318, y=39, z=-1}},
		{"Market",{x=-44, y=9, z=-92}},
	}
	for _, m in pairs(files) do
		file = io.open(minetest.get_worldpath().."/SAVE/"..m[1]..".txt", "r")
		local level = file:read("*l")
		file:close()
		minetest.place_schematic(m[2], minetest.get_modpath("castrum").."/schematics/"..m[1].."/"..m[1].."_"..tonumber(level)..".mts","0")
	end
	Bridge_Status(player,false,true)
	Update_knight(player)
	Update_horse(player)
	Update_pirate(player)
	Update_Pier(nil,true)
	Update_Ship1(nil,true)
	local inv = player:get_inventory()
    inv:remove_item("main", "castrum:knight_lv1 80")
    inv:remove_item("main", "castrum:knight_lv2 80")
	inv:remove_item("main", "castrum:knight_lv3 80")
	inv:remove_item("main", "castrum:horse1_item 5")
	inv:remove_item("main", "castrum:horse1_item_1 5")
	inv:remove_item("main", "castrum:horse1_item_2 5")
	inv:remove_item("main", "castrum:horse1_item_3 5")
	inv:remove_item("main", "castrum:pirate_lv1 9")
end