dofile(minetest.get_modpath("castrum").."/config.txt")
local island_smithy = {}
island_smithy.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "r")
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
        need1 = "80 Sand"
        need2 = "60 Wood"
		need3 = "Island Fountain lv.1"
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
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
    if tonumber(level) > 5 then
        formspec = formspec.."button[0,3;5,1;;Crafting]"
    end
	if del_button == true then
		formspec = formspec.."button[0,4;5,1;;del]"
	end
	return formspec			
end

local craft2 = {}
craft2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    need3 = ""
    if player:get_attribute("3item") ~= nil then
        item = player:get_attribute("3item")
    end
    if player:get_attribute("3need1") ~= nil then
        need1 = player:get_attribute("3need1")
    end
    if player:get_attribute("3need2") ~= nil then
        need2 = player:get_attribute("3need2")
    end
    if player:get_attribute("3need3") ~= nil then
        need3 = player:get_attribute("3need3")
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."label[0,1.4;"..need3.."]"
        .."button[0,2;5,1;;Craft]"
        .."button[0,3;1,1;;Glass]"
		.."button[1,3;1,1;;Pirat Soul]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
	return formspec			
end

minetest.register_node("castrum:island_smithy",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Smithy",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "island_smithy" then
        for k, v in pairs(fields) do
            if v == "del" then
                Island_Smithy(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:sand 80") and inv:contains_item("main", "default:wood 60") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:sand 80")
                    Item_Remove2(player, "main", "default:wood 60")
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:sand 80") and inv:contains_item("main", "default:wood 60") then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Island_Smithy(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Smithy.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
            elseif v == "Crafting" then
                minetest.show_formspec(player:get_player_name(), "craft2" , craft2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "craft2" then
        for k, v in pairs(fields) do
            if v == "Craft" then
                if player:get_attribute("3need1string") then
                    if player:get_inventory():contains_item("main", player:get_attribute("3need1string")) and player:get_inventory():contains_item("main", player:get_attribute("3need2string")) and player:get_inventory():contains_item("main", player:get_attribute("3need3string")) then
                        player:get_inventory():remove_item("main", player:get_attribute("3need1string"))
                        player:get_inventory():remove_item("main", player:get_attribute("3need2string"))
                        player:get_inventory():remove_item("main", player:get_attribute("3need3string"))
                        player:get_inventory():add_item("main", player:get_attribute("3itemstring"))
                    else
                        minetest.chat_send_player(player:get_player_name(), "not enough items")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "select item first")
                end
            elseif v == "Glass" then
                player:set_attribute("3item", "Glass")
                player:set_attribute("3need1", "25 Sand")
                player:set_attribute("3need2", "10 River Water Bucket")
                player:set_attribute("3need3", "5 Coal Lump")
                player:set_attribute("3need1string", "default:sand 25")
                player:set_attribute("3need2string", "castrum:bucket_river_water 10")
                player:set_attribute("3need3string", "default:coal_lump 5")
                player:set_attribute("3itemstring", "default:glass")
                minetest.show_formspec(player:get_player_name(), "craft2" , craft2.get_formspec(player))
			elseif v == "Pirat Soul" then
                player:set_attribute("3item", "Pirat Soul")
                player:set_attribute("3need1", "25 Sand")
                player:set_attribute("3need2", "15 Cactus")
                player:set_attribute("3need3", "")
                player:set_attribute("3need1string", "default:sand 25")
                player:set_attribute("3need2string", "default:cactus 15")
                player:set_attribute("3need3string", "")
                player:set_attribute("3itemstring", "castrum:pirate_soul")
                minetest.show_formspec(player:get_player_name(), "craft2" , craft2.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "island_smithy" , island_smithy.get_formspec(player))
            end
        end
	end
end)