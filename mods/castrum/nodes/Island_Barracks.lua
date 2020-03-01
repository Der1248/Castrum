dofile(minetest.get_modpath("castrum").."/config.txt")
local island_barracks = {}
island_barracks.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
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
        need1 = "200 Sand"
        need2 = "80 Cactus"
		need3 = "Island Fountain lv.2"
    
    else
        label = (level-5).."/1"
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
		formspec = formspec.."button[0,3;5,1;;Get Pirates]"
	end
	formspec = formspec.."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	if del_button == true then
		formspec = formspec.."button[0,4;5,1;;del]"
	end
	return formspec			
end

local pirates = {}
pirates.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    max = 0
    max1 = 0
    max2 = 0
    file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
	local pirate_1 = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "r")
	local home_1 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Home2.txt", "r")
	local home_2 = file:read("*l")
    file:close()
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	local level = file:read("*l")
    file:close()
    if player:get_attribute("5item") ~= nil then
        item = player:get_attribute("5item")
    end
    if player:get_attribute("5need1") ~= nil then
        need1 = player:get_attribute("5need1")
    end
    if player:get_attribute("5need2") ~= nil then
        need2 = player:get_attribute("5need2")
    end
	local num = 0
	if home_1+0 == 5 then
		num = num+1
	end
	if home_2+0 == 5 then
		num = num+1
	end
	if level+0 == 6 then
		num = num+1
	end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[3.9,0.5;You have:"..pirate_1.."/"..num.."]"
        .."button[0,2;5,1;;Get Pirate]"
        .."button[0,3;1,1;;Pirate\nlv.1]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
	return formspec			
end

minetest.register_node("castrum:island_barracks",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Barracks",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_barracks" , island_barracks.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "island_barracks" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=165, y=9, z=6}, minetest.get_modpath("castrum").."/schematics/Island_Barracks/Island_Barracks_0.mts","0") 
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_barracks" , island_barracks.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:sand 200") and inv:contains_item("main", "default:cactus 80") and tonumber(fountain) > 4 then
					Item_Remove(player,"default:sand",200)
                    Item_Remove2(player, "main", "default:cactus 80")
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:sand 200") and inv:contains_item("main", "default:cactus 80") then
                    txt = "upgrade island fountain to lv.2 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=165, y=9, z=6}, minetest.get_modpath("castrum").."/schematics/Island_Barracks/Island_Barracks_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_barracks" , island_barracks.get_formspec(player))
            elseif v == "Get Pirates" then
                minetest.show_formspec(player:get_player_name(), "pirates" , pirates.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "pirates" then
        for k, v in pairs(fields) do
            if v == "Get Pirate" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Home1.txt", "r")
	            local home_1 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Home2.txt", "r")
	            local home_2 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Pirate_1.txt", "r")
	            local pirate_1 = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Barracks.txt", "r")
	            local level = file:read("*l")
                file:close()
				local num = 0
				if home_1+0 == 5 then
					num = num+1
				end
				if level+0 == 6 then
					num = num+1
				end
				if home_2+0 == 5 then
					num = num+1
				end
                if tonumber(pirate_1) < num then
                    if player:get_attribute("5need1string") then
                        if player:get_inventory():contains_item("main", player:get_attribute("5need1string")) then
                            player:get_inventory():remove_item("main", player:get_attribute("5need1string"))
                            Add_pirate(player,player:get_attribute("piratelv"),true)
                        else
                            minetest.chat_send_player(player:get_player_name(), "not enough items")
                        end
                    else
                        minetest.chat_send_player(player:get_player_name(), "select pirate first")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "you can only have "..num.." pirates")
                end
                minetest.show_formspec(player:get_player_name(), "pirates" , pirates.get_formspec(player))
            elseif v == "Pirate\nlv.1" then
                player:set_attribute("5item", "Pirate lv.1")
                player:set_attribute("5need1", "5 Pirate Souls")
                player:set_attribute("5need1string", "castrum:pirate_soul 5")
                player:set_attribute("piratelv", "1")
                minetest.show_formspec(player:get_player_name(), "pirates" , pirates.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "island_barracks" , island_barracks.get_formspec(player))
            end
        end
	end
end)