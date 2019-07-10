dofile(minetest.get_modpath("castrum").."/config.txt")
local walle = {}
walle.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 14 then
        label = "not build yet ("..math.floor((level/14)*100).."%)"
        label2 = "Build"
        need1 = "3 Cobblestone"
    elseif tonumber(level) == 14 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "10 Cobblestone"
        need2 = "3 Stone Sword"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 15 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Cobblestone"
        need2 = "12 Stone Sword"
        need3 = "Fountain lv.3"
    elseif tonumber(level) == 16 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "40 Desert Cobblestone"
        need2 = "12 Steel Sword"
        need3 = "Fountain lv.3"
	elseif tonumber(level) == 17 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "160 Desert Cobblestone"
        need2 = "48 Steel Sword"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 18 then
        label = (level-13).."/6"
        label2 = "Upgrade"
        need1 = "320 Desert Cobblestone"
        need2 = "48 Bronze Sword"
        need3 = "Fountain lv.5"
    else
        label = (level-13).."/6"
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

minetest.register_node("castrum:wall_east",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Wall East",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "walle" , walle.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "walle" then
        for k, v in pairs(fields) do
            if v == "del" then
                Wall_east(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "walle" , walle.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 14 and inv:contains_item("main", "default:cobble 3") then
                    Item_Remove2(player, "main", "default:cobble 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    Item_Remove2(player, "main", "castrum:sword_stone 3")
                    upgrade = true
                elseif tonumber(level) == 14 and inv:contains_item("main", "default:cobble 10") and inv:contains_item("main", "castrum:sword_stone 3") then
                    txt = "build fountain first"
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_stone 12")
                    upgrade = true
                elseif tonumber(level) == 15 and inv:contains_item("main", "default:cobble 40") and inv:contains_item("main", "castrum:sword_stone 12") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") and tonumber(fountain) > 5 then
                    Item_Remove2(player, "main", "default:desert_cobble 40")
                    Item_Remove2(player, "main", "castrum:sword_steel 12")
                    upgrade = true
                elseif tonumber(level) == 16 and inv:contains_item("main", "default:desert_cobble 40") and inv:contains_item("main", "castrum:sword_steel 12") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:desert_cobble 160")
                    Item_Remove2(player, "main", "castrum:sword_steel 48")
                    upgrade = true
                elseif tonumber(level) == 17 and inv:contains_item("main", "default:desert_cobble 160") and inv:contains_item("main", "castrum:sword_steel 48") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") and tonumber(fountain) > 7 then
                    Item_Remove(player,"default:desert_cobble",320)
                    Item_Remove2(player, "main", "castrum:sword_bronze 48")
                    upgrade = true
                elseif tonumber(level) == 18 and inv:contains_item("main", "default:desert_cobble 320") and inv:contains_item("main", "castrum:sword_bronze 48") then
                    txt = "upgrade fountain to lv.5 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 19 and upgrade then
                    Wall_east(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "walle" , walle.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)