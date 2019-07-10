dofile(minetest.get_modpath("castrum").."/config.txt")
local moats = {}
moats.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "r")
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
        need1 = "3 Stone Shovel"
        need2 = "Bridge lv.1"
    elseif tonumber(level) == 9 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "27 Steel Shovel"
        need2 = "30 Water Buckets"
        need3 = "Bridge lv.2"
	elseif tonumber(level) == 10 then
        label = (level-8).."/3"
        label2 = "Upgrade"
		need1 = "54 Bronze Shovel"
        need2 = "60 Water Buckets"
        need3 = "Bridge lv.3"
    else
        label = (level-8).."/3"
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

minetest.register_node("castrum:moat_south",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Moat South",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "moats" , moats.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "moats" then
        for k, v in pairs(fields) do
            if v == "del" then
                Moat_south(0,player)
                file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "moats" , moats.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	            local bridge = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") and tonumber(bridge) > 8 then
                    Item_Remove2(player, "main", "castrum:shovel_stone 3")
                    upgrade = true
                elseif tonumber(level) < 9 and inv:contains_item("main", "castrum:shovel_stone 3") then
                    txt = "build bridge first"
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") and tonumber(bridge) > 9 then
                    Item_Remove2(player, "main", "castrum:shovel_steel 27")
					Item_Remove2(player, "main", "castrum:bucket_water 30")
                    upgrade = true
                elseif tonumber(level) == 9 and inv:contains_item("main", "castrum:shovel_steel 27") and inv:contains_item("main", "castrum:bucket_water 30") then
                    txt = "upgrade bridge to lv.2 first"
				elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") and tonumber(bridge) > 10 then
                    Item_Remove2(player, "main", "castrum:shovel_bronze 54")
					Item_Remove2(player, "main", "castrum:bucket_water 60")
                    upgrade = true
                elseif tonumber(level) == 10 and inv:contains_item("main", "castrum:shovel_bronze 54") and inv:contains_item("main", "castrum:bucket_water 60") then
                    txt = "upgrade bridge to lv.3 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 11 and upgrade then
                    Moat_south(tonumber(level)+1,player)
                    file = io.open(minetest.get_worldpath().."/SAVE/Moats.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "moats" , moats.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)