dofile(minetest.get_modpath("castrum").."/config.txt")
local bridge = {}
bridge.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 9 then
        label = "not build yet ("..math.floor((level/9)*100).."%)"
        label2 = "Build"
        need1 = "3 Wooden Planks"
		need2 = "Fountain lv.1"
    elseif tonumber(level) == 9 then
        label = (level-8).."/4"
        label2 = "Upgrade"
        need1 = "27 Jungle Wood Planks"
		need2 = "Fountain lv.3"
	elseif tonumber(level) == 10 then
        label = (level-8).."/4"
        label2 = "Upgrade"
        need1 = "108 Pine Wood Planks"
		need2 = "Fountain lv.5"
	elseif tonumber(level) == 11 then
        label = (level-8).."/4"
        label2 = "Upgrade"
        need1 = "324 Acacia Wood Planks"
		need2 = "Fountain lv.7"
    else
        label = (level-8).."/4"
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
		if del_button == true then
			formspec = formspec.."button[0,3;5,1;;del]"
		end
	return formspec			
end

minetest.register_node("castrum:bridge",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Bridge",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
    end,
})

minetest.register_node("castrum:bridge2",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Bridge",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "bridge2" , bridge.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "bridge" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=-44, y=8, z=-40}, minetest.get_modpath("castrum").."/schematics/Bridge1/Bridge1_0.mts","0")
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
				
                local inv = player:get_inventory()
                local upgrade = false
				local txt = "not enough items"
                if tonumber(level) < 9 and inv:contains_item("main", "default:wood 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:wood 3")
                    upgrade = true
				elseif tonumber(level) < 9 and inv:contains_item("main", "default:wood 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:junglewood 27")
                    upgrade = true
				elseif tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "default:pine_wood 108") and tonumber(fountain) > 7 then
                    Item_Remove2(player, "main", "default:pine_wood 108")
                    upgrade = true
				elseif tonumber(level) == 10 and inv:contains_item("main", "default:pine_wood 108") then
                    txt = "upgrade fountain to lv.5 first"
				elseif tonumber(level) == 11 and inv:contains_item("main", "default:acacia_wood 324") and tonumber(fountain) > 9 then
                    Item_Remove2(player, "main", "default:acacia_wood 324")
                    upgrade = true
				elseif tonumber(level) == 11 and inv:contains_item("main", "default:acacia_wood 324") then
                    txt = "upgrade fountain to lv.7 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 12 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=-44, y=8, z=-40}, minetest.get_modpath("castrum").."/schematics/Bridge1/Bridge1_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
    if formname == "bridge2" then
        for k, v in pairs(fields) do
            if v == "del" then
				minetest.place_schematic({x=-44, y=8, z=-40}, minetest.get_modpath("castrum").."/schematics/Bridge1/Bridge1_0.mts","0")
                minetest.place_schematic({x=-44, y=8, z=-32}, minetest.get_modpath("castrum").."/schematics/Bridge2/Bridge2_0.mts","0")
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
            elseif v == "Upgrade" then
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
				local txt = "not enough items"
                if tonumber(level) < 9 and inv:contains_item("main", "default:wood 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:wood 3")
                    upgrade = true
				elseif tonumber(level) < 9 and inv:contains_item("main", "default:wood 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:junglewood 27")
                    upgrade = true
				elseif tonumber(level) == 9 and inv:contains_item("main", "default:junglewood 27") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "default:pine_wood 108") and tonumber(fountain) > 7 then
                    Item_Remove2(player, "main", "default:pine_wood 108")
                    upgrade = true
				elseif tonumber(level) == 10 and inv:contains_item("main", "default:pine_wood 108") then
                    txt = "upgrade fountain to lv.5 first"
				elseif tonumber(level) == 11 and inv:contains_item("main", "default:acacia_wood 324") and tonumber(fountain) > 9 then
                    Item_Remove2(player, "main", "default:acacia_wood 324")
                    upgrade = true
				elseif tonumber(level) == 11 and inv:contains_item("main", "default:acacia_wood 324") then
                    txt = "upgrade fountain to lv.7 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 12 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=-44, y=8, z=-32}, minetest.get_modpath("castrum").."/schematics/Bridge2/Bridge2_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "bridge" , bridge.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)