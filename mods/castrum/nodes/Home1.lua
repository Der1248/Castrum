dofile(minetest.get_modpath("castrum").."/config.txt")
local home1 = {}
home1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
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
        need2 = "10 Wooden Planks"
        need3 = "Fountain lv.1"
    elseif tonumber(level) == 6 then
        label = (level-5).."/4"
        label2 = "Upgrade"
        need1 = "64 Cobblestone"
        need2 = "80 Jungle Wood Planks"
        need3 = "Fountain lv.2"
	elseif tonumber(level) == 7 then
        label = (level-5).."/4"
        label2 = "Upgrade"
        need1 = "128 Cobblestone"
        need2 = "160 Pine Wood Planks"
        need3 = "Fountain lv.4"
	elseif tonumber(level) == 8 then
        label = (level-5).."/4"
        label2 = "Upgrade"
        need1 = "256 Cobblestone"
        need2 = "320 Acacia Wood Planks"
        need3 = "Fountain lv.6"
    else
        label = (level-5).."/4"
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

minetest.register_node("castrum:home_1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Home 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "home1" , home1.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "home1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Home1(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "home1" , home1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") and tonumber(fountain) > 3 then
                    Item_Remove2(player, "main", "default:cobble 8")
                    Item_Remove2(player, "main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") then
                    txt = "build fountain first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:junglewood 80")
                    Item_Remove2(player, "main", "default:cobble 64")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:cobble 64") and inv:contains_item("main", "default:junglewood 80") then
                    txt = "upgrade fountain to lv.2 first"
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:cobble 128") and inv:contains_item("main", "default:pine_wood 160") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:pine_wood 160")
					Item_Remove2(player, "main", "default:cobble 128")
                    upgrade = true
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:cobble 128") and inv:contains_item("main", "default:pine_wood 160") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 8 and inv:contains_item("main", "default:cobble 256") and inv:contains_item("main", "default:acacia_wood 320") and tonumber(fountain) > 8 then
                    Item_Remove2(player, "main", "default:acacia_wood 320")
					Item_Remove2(player, "main", "default:cobble 256")
                    upgrade = true
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:cobble 256") and inv:contains_item("main", "default:acacia_wood 320") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 9 and upgrade then
                    Home1(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Home1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "home1" , home1.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)