dofile(minetest.get_modpath("castrum").."/config.txt")
local fountain = {}
fountain.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	local level = file:read("*l")
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
        need1 = "10 Cobblestone"
		need2 = "Walls and Towers lv.1"
    elseif tonumber(level) == 4 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "25 Cobblestone"
        need2 = "8 Stone Pickaxe"
        need3 = "Walls and Towers lv.2"
		need4 = "Moats lv.1"
    elseif tonumber(level) == 5 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "100 Cobblestone"
        need2 = "32 Stone Pickaxe"
        need3 = "Walls and Towers lv.3"
    elseif tonumber(level) == 6 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "100 Desert Cobblestone"
        need2 = "32 Steel Pickaxe"
        need3 = "Walls and Towers lv.4"
        need4 = "Moats lv.2"
	elseif tonumber(level) == 7 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "400 Desert Cobblestone"
        need2 = "64 Steel Pickaxe"
        need3 = "Walls and Towers lv.5"
	elseif tonumber(level) == 8 then
        label = (level-3).."/6"
        label2 = "Upgrade"
        need1 = "600 Desert Cobblestone"
        need2 = "64 Bronze Pickaxe"
        need3 = "Walls and Towers lv.6"
		need4 = "Moats lv.3"
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
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
		if del_button == true then
			formspec = formspec.."button[0,3;5,1;;del]"
		end
	return formspec			
end

minetest.register_node("castrum:fountain",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Fountain",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "fountain" , fountain.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "fountain" then
        for k, v in pairs(fields) do
            if v == "del" then
                Fountain(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "fountain" , fountain.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Tower1.txt", "r")
	            local tower1 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Tower2.txt", "r")
	            local tower2 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Tower3.txt", "r")
	            local tower3 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Tower4.txt", "r")
	            local tower4 = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Walln.txt", "r")
	            local walln = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Walls.txt", "r")
	            local walls = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Walle.txt", "r")
	            local walle = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Wallw.txt", "r")
	            local wallw = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Moate.txt", "r")
	            local moate = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "r")
	            local moats = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Moatn.txt", "r")
	            local moatn = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Moatw.txt", "r")
	            local moatw = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 4 and inv:contains_item("main", "default:cobble 10") and tonumber(tower1) > 17 and tonumber(tower2) > 17 and tonumber(tower3) > 17 and tonumber(tower4) > 17 and tonumber(walle) > 13 and tonumber(wallw) > 13 and tonumber(walln) > 13 and tonumber(walls) > 13 then
                    Item_Remove2(player, "main", "default:cobble 10")
                    upgrade = true
				elseif tonumber(level) < 4 and inv:contains_item("main", "default:cobble 10") then
                    txt = "build walls and towers first"
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 25") and inv:contains_item("main", "castrum:pick_stone 8") and tonumber(tower1) > 18 and tonumber(tower2) > 18 and tonumber(tower3) > 18 and tonumber(tower4) > 18 and tonumber(walle) > 14 and tonumber(wallw) > 14 and tonumber(walln) > 14 and tonumber(walls) > 14 and tonumber(moate) > 8 and tonumber(moatw) > 8 and tonumber(moats) > 8 and tonumber(moatn) > 8 then
                    Item_Remove2(player, "main", "default:cobble 25")
                    Item_Remove2(player, "main", "castrum:pick_stone 8")
                    upgrade = true
				elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 25") and inv:contains_item("main", "castrum:pick_stone 8") and tonumber(tower1) > 18 and tonumber(tower2) > 18 and tonumber(tower3) > 18 and tonumber(tower4) > 18 and tonumber(walle) > 14 and tonumber(wallw) > 14 and tonumber(walln) > 14 and tonumber(walls) > 14 then
                    txt = "upgrade moats to lv.1 first"
                elseif tonumber(level) == 4 and inv:contains_item("main", "default:cobble 25") and inv:contains_item("main", "castrum:pick_stone 8") then
                    txt = "upgrade walls and towers to lv.2 first"
					
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 100") and inv:contains_item("main", "castrum:pick_stone 32") and tonumber(tower1) > 19 and tonumber(tower2) > 19 and tonumber(tower3) > 19 and tonumber(tower4) > 19 and tonumber(walle) > 15 and tonumber(wallw) > 15 and tonumber(walln) > 15 and tonumber(walls) > 15 then
                    Item_Remove2(player, "main", "default:cobble 100")
                    Item_Remove2(player, "main", "castrum:pick_stone 32")
                    upgrade = true
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:cobble 100") and inv:contains_item("main", "castrum:pick_stone 32") then
                    txt = "upgrade walls and towers to lv.3 first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 100") and inv:contains_item("main", "castrum:pick_steel 32") and tonumber(tower1) > 20 and tonumber(tower2) > 20 and tonumber(tower3) > 20 and tonumber(tower4) > 20 and tonumber(walle) > 16 and tonumber(wallw) > 16 and tonumber(walln) > 16 and tonumber(walls) > 16 and tonumber(moate) > 9 and tonumber(moatw) > 9 and tonumber(moats) > 9 and tonumber(moatn) > 9 then
                    Item_Remove2(player, "main", "default:desert_cobble 100")
                    Item_Remove2(player, "main", "castrum:pick_steel 32")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 100") and inv:contains_item("main", "castrum:pick_steel 32") and tonumber(tower1) > 20 and tonumber(tower2) > 20 and tonumber(tower3) > 20 and tonumber(tower4) > 20 and tonumber(walle) > 16 and tonumber(wallw) > 16 and tonumber(walln) > 16 and tonumber(walls) > 16 then
                    txt = "upgrade moats to lv.2 first"
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:desert_cobble 100") and inv:contains_item("main", "castrum:pick_steel 32") then
                    txt = "upgrade walls and towers to lv.4 first"
				
				elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 400") and inv:contains_item("main", "castrum:pick_steel 64") and tonumber(tower1) > 21 and tonumber(tower2) > 21 and tonumber(tower3) > 21 and tonumber(tower4) > 21 and tonumber(walle) > 17 and tonumber(wallw) > 17 and tonumber(walln) > 17 and tonumber(walls) > 17 then
					Item_Remove(player,"default:desert_cobble",400)
                    Item_Remove2(player, "main", "castrum:pick_steel 64")
                    upgrade = true
                elseif tonumber(level) == 7 and inv:contains_item("main", "default:desert_cobble 400") and inv:contains_item("main", "castrum:pick_steel 64") then
                    txt = "upgrade walls and towers to lv.5 first"
				elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") and inv:contains_item("main", "castrum:pick_bronze 64") and tonumber(tower1) > 22 and tonumber(tower2) > 22 and tonumber(tower3) > 22 and tonumber(tower4) > 22 and tonumber(walle) > 18 and tonumber(wallw) > 18 and tonumber(walln) > 18 and tonumber(walls) > 18 and tonumber(moate) > 10 and tonumber(moatw) > 10 and tonumber(moats) > 10 and tonumber(moatn) > 10 then
                    Item_Remove2(player, "main", "default:desert_cobble 600")
                    Item_Remove2(player, "main", "castrum:pick_bronze 64")
                    upgrade = true
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") and inv:contains_item("main", "castrum:pick_bronze 64") and tonumber(tower1) > 22 and tonumber(tower2) > 22 and tonumber(tower3) > 22 and tonumber(tower4) > 22 and tonumber(walle) > 18 and tonumber(wallw) > 18 and tonumber(walln) > 18 and tonumber(walls) > 18 then
                    txt = "upgrade moats to lv.3 first"
                elseif tonumber(level) == 8 and inv:contains_item("main", "default:desert_cobble 600") and inv:contains_item("main", "castrum:pick_bronze 64") then
                    txt = "upgrade walls and towers to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 9 and upgrade then
                    Fountain(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "fountain" , fountain.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)