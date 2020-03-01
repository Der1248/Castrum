dofile(minetest.get_modpath("castrum").."/config.txt")
local battleground = {}
battleground.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "r")
	local level = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	local chapter = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 4 then
        label = "not build yet ("..math.floor((level/4)*100).."%)"
        label2 = "Build"
		need1 = "4 Cobblestone"
        need2 = "Fountain lv.1"
    elseif tonumber(level) == 4 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
        need2 = "40 Cobblestone"
		need3 = "Fountain lv.2"
    elseif tonumber(level) == 5 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
        need2 = "200 Cobblestone"
		need3 = "Fountain lv.3"
	elseif tonumber(level) == 6 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
        need2 = "200 Desert Cobblestone"
		need3 = "Fountain lv.4"
	elseif tonumber(level) == 7 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
        need2 = "400 Desert Cobblestone"
		need3 = "Fountain lv.5"
	elseif tonumber(level) == 8 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
        need2 = "600 Desert Cobblestone"
		need3 = "Fountain lv.6"
    else
        label = (level-3).."/6"
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
        if tonumber(chapter) == 1 and tonumber(level) > 3 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 1]"
        elseif tonumber(chapter) == 2 and tonumber(level) > 4 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 2]"
        elseif tonumber(chapter) == 2 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 2 (battleground lv.2 needed)]"
        elseif tonumber(chapter) == 3 and tonumber(level) > 5 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 3]"
        elseif tonumber(chapter) == 3 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 3 (battleground lv.3 needed)]"
		elseif tonumber(chapter) == 4 and tonumber(level) > 6 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 4]"
		elseif tonumber(chapter) == 4 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 4 (battleground lv.4 needed)]"
		elseif tonumber(chapter) == 5 and tonumber(level) > 7 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 5]"
		elseif tonumber(chapter) == 5 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 5 (battleground lv.5 needed)]"	
		elseif tonumber(chapter) == 6 and tonumber(level) > 8 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 6]"
		elseif tonumber(chapter) == 6 then
            formspec = formspec.."button[0,3;5,1;;Start Chapter 6 (battleground lv.6 needed)]"	
        end
        formspec = formspec.."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
		if del_button == true then
			formspec = formspec.."button[0,4;5,1;;del]"
		end
	return formspec			
end

minetest.register_node("castrum:battleground",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Battleground",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "battleground" , battleground.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "battleground" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=-76, y=9, z=-84}, minetest.get_modpath("castrum").."/schematics/Battleground/Battleground.mts","0")
                file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "battleground" , battleground.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 4 and tonumber(fountain) > 3 and inv:contains_item("main", "default:cobble 4") then
                    upgrade = true
                    Item_Remove2(player, "main", "default:cobble 4")
                elseif tonumber(level) < 4 and inv:contains_item("main", "default:cobble 4") then
                    txt = "build fountain first"
                elseif tonumber(level) == 4 and tonumber(fountain) > 4 and inv:contains_item("main", "default:cobble 40") and tonumber(chapter) > 1 then
                    upgrade = true
                    Item_Remove2(player, "main", "default:cobble 40")
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 40") and tonumber(fountain) > 4 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 40") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 5 and tonumber(fountain) > 5 and inv:contains_item("main", "default:cobble 200") and tonumber(chapter) > 2 then
                    upgrade = true
                    Item_Remove(player,"default:cobble",200)
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 200") and tonumber(fountain) > 5 then
                    txt = "complete chapter 2 first"
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 200") then
                    txt = "upgrade fountain to lv.3 first"
				elseif tonumber(level) == 6 and tonumber(fountain) > 6 and inv:contains_item("main", "default:desert_cobble 200") and tonumber(chapter) > 3 then
                    upgrade = true
                    Item_Remove(player,"default:desert_cobble",200)
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 200") and tonumber(fountain) > 6 then
                    txt = "complete chapter 3 first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 200") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 7 and tonumber(fountain) > 7 and inv:contains_item("main", "default:desert_cobble 400") and tonumber(chapter) > 4 then
                    upgrade = true
					Item_Remove(player,"default:desert_cobble",400)
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 400") and tonumber(fountain) > 7 then
                    txt = "complete chapter 4 first"
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 400") then
                    txt = "upgrade fountain to lv.5 first"
				elseif tonumber(level) == 8 and tonumber(fountain) > 8 and inv:contains_item("main", "default:desert_cobble 600") and tonumber(chapter) > 5 then
                    upgrade = true
					Item_Remove(player,"default:desert_cobble",600)
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") and tonumber(fountain) > 8 then
                    txt = "complete chapter 5 first"
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 9 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=-76, y=9, z=-84}, minetest.get_modpath("castrum").."/schematics/Battleground/Battleground_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Battleground.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "battleground" , battleground.get_formspec(player))
            elseif v == "Start Chapter 1" then
                get_fight(1,player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "Start Chapter 2" then
                get_fight(2,player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "Start Chapter 3" then
                get_fight(3,player)
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Start Chapter 4" then
                get_fight(4,player)
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Start Chapter 5" then
                get_fight(5,player)
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Start Chapter 6" then
                get_fight(6,player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)