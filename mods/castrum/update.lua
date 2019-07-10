minetest.register_chatcommand("update", {
	params = "",
	description = "Run this command after update",
	func = function(name, param)
        local player = minetest.get_player_by_name(name)
		file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Home1(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Home2(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Barracks(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Battleground(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Camp1(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Fountain(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Lake.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Lake(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Mine.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Mine(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Moate.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Moat_east(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Moatw.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Moat_west(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Moat_south(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Moatn.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Moat_north(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Pier.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Pier(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Quarry(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Ship1(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Smithy(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Tower1.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Tower1(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Tower2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Tower2(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Tower3.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Tower3(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Tower4.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Tower4(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Tree.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Tree(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Wall_east(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Wallw.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Wall_west(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Walls.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Wall_south(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Walln.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Wall_north(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Fountain(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Walln(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Walls(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Wallw(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Walle(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Sandmine.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Sandmine(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	    local level = file:read("*l")
        file:close()
        if tonumber(level) > 0 then
            Update_knight(player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Camp2(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Camp3(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Cactusfarm.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Cactusfarm(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Smithy(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Lake2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Lake2(i,player)
        end
        file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Bridge(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Stable(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Mountain_Quarry(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Mountain_Fountain(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Home1(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Home2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Home2(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Home3(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Barracks(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Pier(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Sail1(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Sail2(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Ship2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Ship2(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Mountain_Smithy(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Farm.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Farm(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	    local level = file:read("*l")
        file:close()
        if tonumber(level) > 0 then
            Update_horse(player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	    local level = file:read("*l")
        file:close()
        if tonumber(level) > 0 then
            Update_pirate(player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Camp3(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Cannon1(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Cannon2(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Cannon3.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Cannon3(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier2.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Pier2(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Island_Battleground(i,player)
        end
		file = io.open(minetest.get_worldpath().."/SAVE/Meadow.txt", "r")
	    local level = file:read("*l")
        file:close()
        for i=1,tonumber(level) do
            Meadow(i,player)
        end
	end,
})