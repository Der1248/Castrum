dofile(minetest.get_modpath("castrum").."/config.txt")
local market = {}
market.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Market.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 1 then
        label = "not build yet ("..math.floor((level/1)*100).."%)"
        label2 = "Build"
		need1 = "Completed island chapter 1"
    else
        label = (level).."/1"
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

minetest.register_node("castrum:market",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Market",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "market" , market.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "market" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=-44, y=9, z=-92}, minetest.get_modpath("castrum").."/schematics/Market/Market_0.mts","0") 
                file = io.open(minetest.get_worldpath().."/SAVE/Market.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "market" , market.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Market.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
				if tonumber(level) < 1 and tonumber(chapter) > 1 then
					upgrade = true
                else
                    txt = "complete island chapter 1 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 1 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=-44, y=9, z=-92}, minetest.get_modpath("castrum").."/schematics/Market/Market_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Market.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "market" , market.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)