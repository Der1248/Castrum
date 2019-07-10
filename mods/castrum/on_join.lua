minetest.register_on_joinplayer(function(player)
	if file_check(minetest.get_worldpath().."/SAVE/Lake.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Lake.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Barracks.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Battleground.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Chapter.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "w")
		file:write("1")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Camp1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Knight_1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Fountain.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Walle.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Walln.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Walls.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Wallw.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Sandmine.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Sandmine.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Cactusfarm.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Cactusfarm.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Camp2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Island_Smithy.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Knight_2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Knight_2.txt", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/SAVE/Lake2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Lake2.txt", "w")
		file:write("0")
		file:close()
	end
	
	if file_check(minetest.get_worldpath().."/SAVE/Horse_1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Horse_1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Quarry.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Home1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Home2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Home2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Home3.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Barracks.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Pier.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Knight_3.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Knight_3.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Sail1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Sail1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Sail2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Sail2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Ship2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Ship2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Pirate_1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Farm.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Farm.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Meadow.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Meadow.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Camp3.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Cannon1.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Cannon1.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Cannon2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Cannon2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Cannon3.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Cannon3.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Battleground.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Pier2.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Pier2.txt", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/SAVE/Island_Chapter.txt") == true then
	else
		file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "w")
		file:write("1")
		file:close()
	end
	minetest.setting_set("time_speed", "0")
    minetest.set_timeofday(0.5)
	if player:get_player_name() == "singleplayer" then
    else
        minetest.kick_player(player:get_player_name(), "you can play castrum only as 'singleplayer'")
    end
    for i=0,90 do
        for j=9,30 do
            minetest.set_node({x=-134, y=j, z=i*(-1)}, {name="default:stone"})
        end
    end
    for i=0,96 do
        for j=9,30 do
            minetest.set_node({x=-134, y=j, z=i}, {name="default:stone"})
        end
    end
end)