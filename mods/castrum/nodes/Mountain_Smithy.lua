dofile(minetest.get_modpath("castrum").."/config.txt")
local mountain_smithy = {}
mountain_smithy.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "r")
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
        need1 = "400 Moosy Cobblestone"
        need2 = "300 Wood"
		need3 = "Mountain Fountain lv.1"
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

local craft3 = {}
craft3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    need3 = ""
    if player:get_attribute("6item") ~= nil then
        item = player:get_attribute("6item")
    end
    if player:get_attribute("6need1") ~= nil then
        need1 = player:get_attribute("6need1")
    end
    if player:get_attribute("6need2") ~= nil then
        need2 = player:get_attribute("6need2")
    end
    if player:get_attribute("6need3") ~= nil then
        need3 = player:get_attribute("6need3")
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
        .."button[0,3;1,1;;White\nWool]"
		.."button[1,3;1,1;;Pink\nWool]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
	return formspec			
end

minetest.register_node("castrum:mountain_smithy",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Mountain Smithy",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mountain_smithy" , mountain_smithy.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "mountain_smithy" then
        for k, v in pairs(fields) do
            if v == "del" then
                Mountain_Smithy(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "mountain_smithy" , mountain_smithy.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:mossycobble 400") and inv:contains_item("main", "default:wood 300") and tonumber(fountain) > 2 then
                    Item_Remove(player,"default:mossycobble",400)
					Item_Remove(player,"default:wood",300)
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:mossycobble 400") and inv:contains_item("main", "default:wood 300") then
                    txt = "build mountain fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade then
                    Mountain_Smithy(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Smithy.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "mountain_smithy" , mountain_smithy.get_formspec(player))
            elseif v == "Crafting" then
                minetest.show_formspec(player:get_player_name(), "craft3" , craft3.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "craft3" then
        for k, v in pairs(fields) do
            if v == "Craft" then
                if player:get_attribute("6need1string") then
					if player:get_attribute("6need3string") ~= nil then
						if player:get_inventory():contains_item("main", player:get_attribute("6need1string")) and player:get_inventory():contains_item("main", player:get_attribute("6need2string")) and player:get_inventory():contains_item("main", player:get_attribute("6need3string")) then
							player:get_inventory():remove_item("main", player:get_attribute("6need1string"))
							player:get_inventory():remove_item("main", player:get_attribute("6need2string"))
							player:get_inventory():remove_item("main", player:get_attribute("6need3string"))
							player:get_inventory():add_item("main", player:get_attribute("6itemstring"))
						else
							minetest.chat_send_player(player:get_player_name(), "not enough items")
						end
					else
						if player:get_inventory():contains_item("main", player:get_attribute("6need1string")) and player:get_inventory():contains_item("main", player:get_attribute("6need2string")) then
							player:get_inventory():remove_item("main", player:get_attribute("6need1string"))
							player:get_inventory():remove_item("main", player:get_attribute("6need2string"))
							player:get_inventory():add_item("main", player:get_attribute("6itemstring"))
						else
							minetest.chat_send_player(player:get_player_name(), "not enough items")
						end
					end
                else
                    minetest.chat_send_player(player:get_player_name(), "select item first")
                end
            elseif v == "White\nWool" then
                player:set_attribute("6item", "White Wool")
                player:set_attribute("6need1", "10 Cotton")
                player:set_attribute("6need2", "10 Steel Ingot")
				player:set_attribute("6need3", "")
                player:set_attribute("6need1string", "farming:cotton 10")
                player:set_attribute("6need2string", "default:steel_ingot 10")
				player:set_attribute("6need3string", "")
                player:set_attribute("6itemstring", "wool:white")
                minetest.show_formspec(player:get_player_name(), "craft3" , craft3.get_formspec(player))
			elseif v == "Pink\nWool" then
                player:set_attribute("6item", "Pink Wool")
                player:set_attribute("6need1", "1 White Wool")
                player:set_attribute("6need2", "4 Rose")
				player:set_attribute("6need3", "4 White Dandelion")
                player:set_attribute("6need1string", "wool:white")
                player:set_attribute("6need2string", "flowers:rose 4")
				player:set_attribute("6need3string", "flowers:dandelion_white 4")
                player:set_attribute("6itemstring", "wool:pink")
                minetest.show_formspec(player:get_player_name(), "craft3" , craft3.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "mountain_smithy" , mountain_smithy.get_formspec(player))
            end
        end
	end
end)