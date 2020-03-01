dofile(minetest.get_modpath("castrum").."/config.txt")
local mountain_fountain = {}
mountain_fountain.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 3 then
        label = "not build yet ("..math.floor((level/3)*100).."%)"
        label2 = "Build"
        need1 = "50 Moosy Cobblestone"
	elseif tonumber(level) == 3 then
        label = (level-2).."/2"
        label2 = "Upgrade"
        need1 = "800 Moosy Cobblestone"
    else
        label = (level-2).."/2"
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

minetest.register_node("castrum:mountain_fountain",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Mountain Fountain",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mountain_fountain" , mountain_fountain.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "mountain_fountain" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=334, y=40, z=-6}, minetest.get_modpath("castrum").."/schematics/Mountain_Fountain/Mountain_Fountain_0.mts","0")  
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "mountain_fountain" , mountain_fountain.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 3 and inv:contains_item("main", "default:mossycobble 50") then
                    Item_Remove2(player, "main", "default:mossycobble 50")
                    upgrade = true
				elseif tonumber(level) == 3 and inv:contains_item("main", "default:mossycobble 800") then
                    Item_Remove2(player, "main", "default:mossycobble 800")
                    upgrade = true
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 4 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=334, y=40, z=-6}, minetest.get_modpath("castrum").."/schematics/Mountain_Fountain/Mountain_Fountain_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Mountain_Fountain.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "mountain_fountain" , mountain_fountain.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)