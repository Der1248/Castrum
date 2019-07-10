dofile(minetest.get_modpath("castrum").."/config.txt")
local stable = {}
stable.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 7 then
        label = "not build yet ("..math.floor((level/7)*100).."%)"
        label2 = "Build"
        need1 = "100 Wooden Planks"
        need2 = "25 River Water Buckets"
		need3 = "Fountain lv.4"
	elseif tonumber(level) == 7 then
        label = (level-6).."/2"
        label2 = "Upgrade"
        need1 = "400 Jungle Wood Planks"
        need2 = "100 River Water Buckets"
		need3 = "Fountain lv.6"
    else
        label = (level-6).."/2"
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
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
		if tonumber(level) > 6 then
            formspec = formspec.."button[0,3;5,1;;Get Horse]"
        end
		if del_button == true then
			formspec = formspec.."button[0,4;5,1;;del]"
		end
	return formspec			
end

local horse = {}
horse.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    max = 0
    max1 = 0
    max2 = 0
    file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	local stable = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Horse_1.txt", "r")
	local horse_1 = file:read("*l")
    file:close()
    if player:get_attribute("4item") ~= nil then
        item = player:get_attribute("4item")
    end
    if player:get_attribute("4need1") ~= nil then
        need1 = player:get_attribute("4need1")
    end
    if player:get_attribute("4need2") ~= nil then
        need2 = player:get_attribute("4need2")
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[3.9,0.5;You have:"..horse_1.."/"..(stable-6).."]"
        .."button[0,2;5,1;;Get Horse]"
        .."button[0,3;1,1;;Horse\nlv.1]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
	return formspec			
end

minetest.register_node("castrum:stable",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Stable",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "stable" then
        for k, v in pairs(fields) do
            if v == "del" then
                Stable(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 7 and inv:contains_item("main", "default:wood 100") and inv:contains_item("main", "castrum:bucket_river_water 25") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:wood 100")
                    Item_Remove2(player, "main", "castrum:bucket_river_water 25")
                    upgrade = true
                elseif tonumber(level) < 7 and inv:contains_item("main", "default:wood 100") and inv:contains_item("main", "castrum:bucket_river_water 25") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:junglewood 400") and inv:contains_item("main", "castrum:bucket_river_water 100") and tonumber(fountain) > 8 then
                    Item_Remove2(player, "main", "default:junglewood 400")
                    Item_Remove2(player, "main", "castrum:bucket_river_water 100")
                    upgrade = true
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:junglewood 400") and inv:contains_item("main", "castrum:bucket_river_water 100") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade then
                    Stable(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
            elseif v == "Get Horse" then
                minetest.show_formspec(player:get_player_name(), "horse" , horse.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "horse" then
        for k, v in pairs(fields) do
            if v == "Get Horse" then
                file = io.open(minetest.get_worldpath().."/SAVE/Stable.txt", "r")
	            local stable = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Horse_1.txt", "r")
	            local horse_1 = file:read("*l")
                file:close()
                if tonumber(horse_1) < (stable-6) then
                    if player:get_attribute("4need1string") then
                        if player:get_inventory():contains_item("main", player:get_attribute("4need1string")) and player:get_inventory():contains_item("main", player:get_attribute("4need2string")) then
                            player:get_inventory():remove_item("main", player:get_attribute("4need1string"))
                            player:get_inventory():remove_item("main", player:get_attribute("4need2string"))
                            Add_horse(player,player:get_attribute("horselv"),true)
                        else
                            minetest.chat_send_player(player:get_player_name(), "not enough items")
                        end
                    else
                        minetest.chat_send_player(player:get_player_name(), "select horse first")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "you can only have "..(stable-6).." horse")
                end
                minetest.show_formspec(player:get_player_name(), "horse" , horse.get_formspec(player))
            elseif v == "Horse\nlv.1" then
                player:set_attribute("4item", "Horse lv.1")
                player:set_attribute("4need1", "7 Souls")
                player:set_attribute("4need2", "15 River Water Buckets")
                player:set_attribute("4need1string", "castrum:soul 7")
                player:set_attribute("4need2string", "castrum:bucket_river_water 15")
                player:set_attribute("horselv", "1")
                minetest.show_formspec(player:get_player_name(), "horse" , horse.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "stable" , stable.get_formspec(player))
            end
        end
	end
end)