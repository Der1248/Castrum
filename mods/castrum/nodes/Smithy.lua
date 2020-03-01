dofile(minetest.get_modpath("castrum").."/config.txt")
local smithy = {}
smithy.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "r")
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
        need1 = "8 Cobblestone"
        need2 = "6 Wooden Planks"
		need3 = "Fountain lv.1"
    elseif tonumber(level) == 6 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "80 Cobblestone"
        need2 = "60 Wooden Planks"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 7 then
        label = (level-5).."/3"
        label2 = "Upgrade"
        need1 = "80 Desert Cobblestone"
        need2 = "60 Jungle Wood Planks"
        need3 = "Fountain lv.5"
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
        formspec = formspec.."button[0,3;5,1;;Crafting]"
    end
    formspec = formspec.."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	if del_button == true then
		formspec = formspec.."button[0,4;5,1;;del]"
	end
	return formspec			
end

local craft = {}
craft.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    item  = ""
    need1 = ""
    need2 = ""
    if player:get_attribute("item") ~= nil then
        item = player:get_attribute("item")
    end
    if player:get_attribute("need1") ~= nil then
        need1 = player:get_attribute("need1")
    end
    if player:get_attribute("need2") ~= nil then
        need2 = player:get_attribute("need2")
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "r")
	local level = file:read("*l")
    file:close()
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;For:     "..item.."]"
        .."label[0,0.5;You need:]"
        .."label[0,0.8;"..need1.."]"
        .."label[0,1.1;"..need2.."]"
        .."button[0,2;5,1;;Craft]"
        .."button[0,3;1,1;;Soul]"
        .."button[1,3;1,1;;Steel\nIngot]"
		.."button[2,3;1,1;;Bronze\nIngot]"
        .."button[0,4;1,1;;Stone\nShovel]"
        .."button[1,4;1,1;;Stone\nPickaxe]"
        .."button[2,4;1,1;;Stone\nSword]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
        .."image_button[3.9,-0.3;0.8,0.8;;back;<]"
        if tonumber(level) > 6 then
            formspec = formspec .."button[0,5;1,1;;Steel\nShovel]"
                .."button[1,5;1,1;;Steel\nPickaxe]"
                .."button[2,5;1,1;;Steel\nSword]"
        end
		if tonumber(level) > 7 then
            formspec = formspec .."button[0,6;1,1;;Bronze\nShovel]"
                .."button[1,6;1,1;;Bronze\nPickaxe]"
                .."button[2,6;1,1;;Bronze\nSword]"
        end
	return formspec			
end

minetest.register_node("castrum:smithy",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Smithy",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "smithy" , smithy.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "smithy" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=-69, y=9, z=-14}, minetest.get_modpath("castrum").."/schematics/Smithy/Smithy_0.mts","0")
                file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "smithy" , smithy.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 6") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 8")
                    Item_Remove2(player, "main", "default:wood 6")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 80") and inv:contains_item("main", "default:wood 60") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:cobble 80")
                    Item_Remove2(player, "main", "default:wood 60")
                    upgrade = true
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 80") and inv:contains_item("main", "default:junglewood 60") and tonumber(fountain) > 7 then
                    Item_Remove2(player, "main", "default:desert_cobble 80")
                    Item_Remove2(player, "main", "default:junglewood 60")
                    upgrade = true
				elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 6") then
                    txt = "build fountain first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 80") and inv:contains_item("main", "default:wood 60") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 80") and inv:contains_item("main", "default:junglewood 60") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 8 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=-69, y=9, z=-14}, minetest.get_modpath("castrum").."/schematics/Smithy/Smithy_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Smithy.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "smithy" , smithy.get_formspec(player))
            elseif v == "Crafting" then
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
	if formname == "craft" then
        for k, v in pairs(fields) do
            if v == "Craft" then
                if player:get_attribute("need1string") and player:get_attribute("need2string") and player:get_attribute("need3string") and player:get_attribute("need3string") ~= "" then
                    if player:get_inventory():contains_item("main", player:get_attribute("need1string")) or player:get_attribute("need1string") == "air" then
						if player:get_inventory():contains_item("main", player:get_attribute("need2string")) or player:get_attribute("need2string") == "air" then
							if player:get_inventory():contains_item("main", player:get_attribute("need3string")) or player:get_attribute("need3string") == "air" then
								player:get_inventory():remove_item("main", player:get_attribute("need1string"))
								player:get_inventory():remove_item("main", player:get_attribute("need2string"))
								player:get_inventory():remove_item("main", player:get_attribute("need3string"))
								player:get_inventory():add_item("main", player:get_attribute("itemstring"))
							else
								minetest.chat_send_player(player:get_player_name(), "not enough items")
							end
						else
							minetest.chat_send_player(player:get_player_name(), "not enough items")
						end
                    else
                        minetest.chat_send_player(player:get_player_name(), "not enough items")
                    end
                else
                    minetest.chat_send_player(player:get_player_name(), "select item first")
                end
            elseif v == "Soul" then
                player:set_attribute("item", "Soul")
                player:set_attribute("need1", "25 Cobblestone")
                player:set_attribute("need2", "15 Wooden Planks")
                player:set_attribute("need1string", "default:cobble 25")
                player:set_attribute("need2string", "default:wood 15")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:soul")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nIngot" then
                player:set_attribute("item", "Steel Ingot")
                player:set_attribute("need1", "2 Coal Lump")
                player:set_attribute("need2", "1 Iron Lump")
                player:set_attribute("need1string", "default:coal_lump 2")
                player:set_attribute("need2string", "default:iron_lump")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "default:steel_ingot")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
			elseif v == "Bronze\nIngot" then
                player:set_attribute("item", "Bronze Ingot")
                player:set_attribute("need1", "2 Coal Lump")
                player:set_attribute("need2", "1 Copper Lump")
				player:set_attribute("need3", "1 Tin Lump")
                player:set_attribute("need1string", "default:coal_lump 2")
                player:set_attribute("need2string", "default:copper_lump")
				player:set_attribute("need3string", "default:tin_lump")
                player:set_attribute("itemstring", "default:bronze_ingot")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nShovel" then
                player:set_attribute("item", "Stone Shovel")
                player:set_attribute("need1", "1 Cobblestone")
                player:set_attribute("need2", "2 Wooden Planks")
                player:set_attribute("need1string", "default:cobble")
                player:set_attribute("need2string", "default:wood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:shovel_stone")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nPickaxe" then
                player:set_attribute("item", "Stone Pickaxe")
                player:set_attribute("need1", "3 Cobblestone")
                player:set_attribute("need2", "2 Wooden Planks")
                player:set_attribute("need1string", "default:cobble 3")
                player:set_attribute("need2string", "default:wood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:pick_stone")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Stone\nSword" then
                player:set_attribute("item", "Stone Sword")
                player:set_attribute("need1", "2 Cobblestone")
                player:set_attribute("need2", "1 Wooden Planks")
                player:set_attribute("need1string", "default:cobble 2")
                player:set_attribute("need2string", "default:wood")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:sword_stone")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nShovel" then
                player:set_attribute("item", "Steel Shovel")
                player:set_attribute("need1", "1 Steel Ingot")
                player:set_attribute("need2", "2 Jungle Wooden Planks")
                player:set_attribute("need1string", "default:steel_ingot")
                player:set_attribute("need2string", "default:junglewood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:shovel_steel")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nPickaxe" then
                player:set_attribute("item", "Steel Pickaxe")
                player:set_attribute("need1", "3 Steel Ingot")
                player:set_attribute("need2", "2 Jungle Wooden Planks")
                player:set_attribute("need1string", "default:steel_ingot 3")
                player:set_attribute("need2string", "default:junglewood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:pick_steel")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Steel\nSword" then
                player:set_attribute("item", "Steel Sword")
                player:set_attribute("need1", "2 Steel Ingot")
                player:set_attribute("need2", "1 Jungle Wooden Planks")
                player:set_attribute("need1string", "default:steel_ingot 2")
                player:set_attribute("need2string", "default:junglewood")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:sword_steel")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
			elseif v == "Bronze\nShovel" then
                player:set_attribute("item", "Bronze Shovel")
                player:set_attribute("need1", "1 Bronze Ingot")
                player:set_attribute("need2", "2 Pine Wooden Planks")
                player:set_attribute("need1string", "default:bronze_ingot")
                player:set_attribute("need2string", "default:pine_wood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:shovel_bronze")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Bronze\nPickaxe" then
                player:set_attribute("item", "Bronze Pickaxe")
                player:set_attribute("need1", "3 Bronze Ingot")
                player:set_attribute("need2", "2 Pine Wooden Planks")
                player:set_attribute("need1string", "default:bronze_ingot 3")
                player:set_attribute("need2string", "default:pine_wood 2")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:pick_bronze")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "Bronze\nSword" then
                player:set_attribute("item", "Bronze Sword")
                player:set_attribute("need1", "2 Bronze Ingot")
                player:set_attribute("need2", "1 Pine Wooden Planks")
                player:set_attribute("need1string", "default:bronze_ingot 2")
                player:set_attribute("need2string", "default:pine_wood")
				player:set_attribute("need3", "")
				player:set_attribute("need3string", "air")
                player:set_attribute("itemstring", "castrum:sword_bronze")
                minetest.show_formspec(player:get_player_name(), "craft" , craft.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "<" then
                minetest.show_formspec(player:get_player_name(), "smithy" , smithy.get_formspec(player))
            end
        end
	end
end)