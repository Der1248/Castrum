dofile(minetest.get_modpath("castrum").."/config.txt")
local home4 = {}
home4.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    file = io.open(minetest.get_worldpath().."/SAVE/Home4.txt", "r")
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
        need3 = "Fountain lv.7"
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
		if del_button == true then
			formspec = formspec.."button[0,3;5,1;;del]"
		end
	return formspec			
end

minetest.register_node("castrum:home_4",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Home 4",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "home4" , home4.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "home4" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=-54, y=9, z=25}, minetest.get_modpath("castrum").."/schematics/Home4/Home4_0.mts","0")
                file = io.open(minetest.get_worldpath().."/SAVE/Home4.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "home4" , home4.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Home4.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") and tonumber(fountain) > 9 then
                    Item_Remove2(player, "main", "default:cobble 8")
                    Item_Remove2(player, "main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 6 and inv:contains_item("main", "default:cobble 8") and inv:contains_item("main", "default:wood 10") then
                    txt = "upgrade fountain to lv.7 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=-54, y=9, z=25}, minetest.get_modpath("castrum").."/schematics/Home4/Home4_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Home4.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "home4" , home4.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)