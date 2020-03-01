dofile(minetest.get_modpath("castrum").."/config.txt")
local quarry = {}
quarry.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "r")
	local level = file:read("*l")
    file:close()
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) == 0 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 1"
    elseif tonumber(level) == 1 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 2"
	elseif tonumber(level) == 2 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 3"
	elseif tonumber(level) == 3 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 4"
	elseif tonumber(level) == 4 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 5"
	elseif tonumber(level) == 5 then
        label = (level+1).."/7"
        label2 = "Upgrade"
        need1 = "Completed chapter 6"
    else
        label = (level+1).."/7"
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

minetest.register_node("castrum:quarry",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Quarry",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "quarry" , quarry.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "quarry" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=-20, y=9, z=-2}, minetest.get_modpath("castrum").."/schematics/Quarry/Quarry_0.mts","0")   
                file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "quarry" , quarry.get_formspec(player))
            elseif v == "Upgrade" then
                file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local txt = "not enough items"
                local inv = player:get_inventory()
                local upgrade = false
                if tonumber(level) == 0 and tonumber(chapter) > 1 then
                    upgrade = true
                elseif tonumber(level) == 1 and tonumber(chapter) > 2 then
                    upgrade = true
				elseif tonumber(level) == 2 and tonumber(chapter) > 3 then
                    upgrade = true
				elseif tonumber(level) == 3 and tonumber(chapter) > 4 then
                    upgrade = true
				elseif tonumber(level) == 4 and tonumber(chapter) > 5 then
                    upgrade = true
				elseif tonumber(level) == 5 and tonumber(chapter) > 6 then
                    upgrade = true
                elseif tonumber(level) == 0 then
                    txt = "complete chapter 1 first"
                elseif tonumber(level) == 1 then
                    txt = "complete chapter 2 first"
				elseif tonumber(level) == 2 then
                    txt = "complete chapter 3 first"
				elseif tonumber(level) == 3 then
                    txt = "complete chapter 4 first"
				elseif tonumber(level) == 4 then
                    txt = "complete chapter 5 first"
				elseif tonumber(level) == 5 then
                    txt = "complete chapter 6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 6 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=-20, y=9, z=-2}, minetest.get_modpath("castrum").."/schematics/Quarry/Quarry_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Quarry.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "quarry" , quarry.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)