dofile(minetest.get_modpath("castrum").."/config.txt")
local barracks = {}
barracks.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 6 then
        label = "not build yet ("..math.floor((level/6)*100).."%)"
        label2 = "Build"
        need1 = "20 Cobblestone"
        need2 = "20 Wooden Planks"
		need3 = "Fountain lv.1"
    elseif tonumber(level) == 6 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "50 Water Buckets"
        need2 = "200 Cobblestone"
        need3 = "200 Wooden Planks"
        need4 = "Fountain lv.3"
	elseif tonumber(level) == 7 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "50 River Water Buckets"
        need2 = "400 Desert Cobblestone"
        need3 = "400 Jungle Wood Planks"
        need4 = "Fountain lv.5"
    else
        label = (level-5).."/3"
        label2 = "Upgrade (comming soon)"
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Level:     "..label.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."label[0,1.7;"..need4.."]"
        .."button[0,2;5,1;;"..label2.."]"
        if tonumber(level) > 5 then
            formspec = formspec.."button[0,3;5,1;;Get Knights]"
        end
        formspec = formspec.."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
		if del_button == true then
			formspec = formspec.."button[0,4;5,1;;del]"
		end
	return formspec			
end

local knight = {}
knight.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    max = 0
    max1 = 0
    max2 = 0
    file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	local home1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "r")
	local home2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "r")
	local home3 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "r")
	local barracks = file:read("*l")
    file:close()
    if tonumber(home1) == 6 then
        max1 = max1+8
    elseif tonumber(home1) == 7 then
        max1 = max1+11
	elseif tonumber(home1) == 8 then
        max1 = max1+14
	elseif tonumber(home1) == 9 then
        max1 = max1+17
    end
    if tonumber(home2) == 6 then
        max1 = max1+8
    elseif tonumber(home2) == 7 then
        max1 = max1+11
	elseif tonumber(home2) == 8 then
        max1 = max1+14
    end
	if tonumber(home3) == 6 then
        max1 = max1+8
    elseif tonumber(home3) == 7 then
        max1 = max1+11
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	local camp1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	local camp2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	local camp3 = file:read("*l")
    file:close()
    if tonumber(camp1) == 1 then
        max2 = max2+20
    end
    if tonumber(camp2) == 1 then
        max2 = max2+20
    end
	if tonumber(camp3) == 1 then
        max2 = max2+20
    end
    if max1 > max2 then
        max = max2
    elseif max2 > max1 then
        max = max1
    else
        max = max1
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	local knight_1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Knight_2.txt", "r")
	local knight_2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Knight_3.txt", "r")
	local knight_3 = file:read("*l")
    file:close()
    if player:get_attribute("2item") ~= nil then
        item = player:get_attribute("2item")
    end
    if player:get_attribute("2need1") ~= nil then
        need1 = player:get_attribute("2need1")
    end
    if player:get_attribute("2need2") ~= nil then
        need2 = player:get_attribute("2need2")
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[3.9,0.5;You have:"..(knight_1+knight_2+knight_3).."/"..max.."]"
        .."button[0,2;5,1;;Get Knight]"
        .."button[0,3;1,1;;Knight\nlv.1]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
        if tonumber(barracks) > 6 then
            formspec = formspec.."button[1,3;1,1;;Knight\nlv.2]"
        end
		if tonumber(barracks) > 7 then
            formspec = formspec.."button[2,3;1,1;;Knight\nlv.3]"
        end
	return formspec			
end

minetest.register_node("castrum:barracks",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Barracks",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "barracks" , barracks.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "barracks" then
        for k, v in pairs(fields) do
            if v == "del" then
                Barracks(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "barracks" , barracks.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:wood 20") and inv:contains_item("main", "default:cobble 20") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:wood 20")
                    Item_Remove2(player, "main", "default:cobble 20")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:wood 200") and inv:contains_item("main", "default:cobble 200") and inv:contains_item("main", "castrum:bucket_water 50") and tonumber(fountain) > 5 then
                    Item_Remove(player,"default:wood",200)
					Item_Remove(player,"default:cobble",200)
                    Item_Remove2(player, "main", "castrum:bucket_water 50")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:junglewood 400") and inv:contains_item("main", "default:desert_cobble 400") and inv:contains_item("main", "castrum:bucket_river_water 50") and tonumber(fountain) > 7 then
					Item_Remove(player,"default:junglewood",400)
					Item_Remove(player,"default:desert_cobble",400)
                    Item_Remove2(player, "main", "castrum:bucket_river_water 50")
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:wood 20") and inv:contains_item("main", "default:cobble 20") then
                    txt = "build fountain first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:wood 200") and inv:contains_item("main", "default:cobble 200") and inv:contains_item("main", "castrum:bucket_water 50") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:junglewood 400") and inv:contains_item("main", "default:desert_cobble 400") and inv:contains_item("main", "castrum:bucket_river_water 50") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Barracks(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Barracks.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "barracks" , barracks.get_formspec(player))
            elseif v == "Get Knights" then
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "knight" then
        for k, v in pairs(fields) do
            if v == "Get Knight" then
                max = 0
                max1 = 0
                max2 = 0
                file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	            local home1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Home2.txt", "r")
	            local home2 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Home3.txt", "r")
	            local home3 = file:read("*l")
                file:close()
                if tonumber(home1) == 6 then
                    max1 = max1+8
                elseif tonumber(home1) == 7 then
                    max1 = max1+11
				elseif tonumber(home1) == 8 then
                    max1 = max1+14
				elseif tonumber(home1) == 9 then
                    max1 = max1+17
                end
                if tonumber(home2) == 6 then
                    max1 = max1+8
                elseif tonumber(home2) == 7 then
                    max1 = max1+11
				elseif tonumber(home2) == 8 then
                    max1 = max1+14
                end
				if tonumber(home3) == 6 then
                    max1 = max1+8
                elseif tonumber(home3) == 7 then
                    max1 = max1+11
                end
                file = io.open(minetest.get_worldpath().."/SAVE/Camp1.txt", "r")
	            local camp1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Camp2.txt", "r")
	            local camp2 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Camp3.txt", "r")
	            local camp3 = file:read("*l")
                file:close()
                if tonumber(camp1) == 1 then
                    max2 = max2+20
                end
                if tonumber(camp2) == 1 then
                    max2 = max2+20
                end
				if tonumber(camp3) == 1 then
                    max2 = max2+20
                end
                if max1 > max2 then
                    max = max2
                elseif max2 > max1 then
                    max = max1
                else
                    max = max1
                end
                file = io.open(minetest.get_worldpath().."/SAVE/Knight_1.txt", "r")
	            local knight_1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Knight_2.txt", "r")
	            local knight_2 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Knight_3.txt", "r")
	            local knight_3 = file:read("*l")
                file:close()
                if (tonumber(knight_1)+tonumber(knight_2)+tonumber(knight_3)) < max then
                    if player:get_attribute("2need1string") then
                        if player:get_inventory():contains_item("main", player:get_attribute("2need1string")) then
                            player:get_inventory():remove_item("main", player:get_attribute("2need1string"))
                            Add_knight(player,player:get_attribute("knightlv"),true)
                        else
                            minetest.chat_send_player(player:get_player_name(), "not enough items")
                        end
                    else
                        minetest.chat_send_player(player:get_player_name(), "select knight first")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "you can only have "..max.." knights")
                end
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
            elseif v == "Knight\nlv.1" then
                player:set_attribute("2item", "Knight lv.1")
                player:set_attribute("2need1", "1 Soul")
                player:set_attribute("2need2", "")
                player:set_attribute("2need1string", "castrum:soul")
                player:set_attribute("2need2string", "")
                player:set_attribute("knightlv", "1")
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
            elseif v == "Knight\nlv.2" then
                player:set_attribute("2item", "Knight lv.2")
                player:set_attribute("2need1", "4 Soul")
                player:set_attribute("2need2", "")
                player:set_attribute("2need1string", "castrum:soul 4")
                player:set_attribute("2need2string", "")
                player:set_attribute("knightlv", "2")
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
			elseif v == "Knight\nlv.3" then
                player:set_attribute("2item", "Knight lv.3")
                player:set_attribute("2need1", "8 Soul")
                player:set_attribute("2need2", "")
                player:set_attribute("2need1string", "castrum:soul 8")
                player:set_attribute("2need2string", "")
                player:set_attribute("knightlv", "3")
                minetest.show_formspec(player:get_player_name(), "knight" , knight.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "barracks" , barracks.get_formspec(player))
            end
        end
	end
end)