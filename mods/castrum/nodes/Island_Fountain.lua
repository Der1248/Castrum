dofile(minetest.get_modpath("castrum").."/config.txt")
local island_fountain = {}
island_fountain.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
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
        need1 = "10 Sand"
		need2 = "Island Walls lv.1"
	elseif tonumber(level) == 4 then
        label = (level-3).."/2"
        label2 = "Upgrade"
        need1 = "100 Desert Sand"
		need2 = "Island Walls lv.2"
    else
        label = (level-3).."/2"
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

minetest.register_node("castrum:island_fountain",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Fountain",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_fountain" , island_fountain.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "island_fountain" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=145, y=9, z=0}, minetest.get_modpath("castrum").."/schematics/Island_Fountain/Island_Fountain_0.mts","0") 
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_fountain" , island_fountain.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local level = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Walln.txt", "r")
	            local island_walln = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Walls.txt", "r")
	            local island_walls = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Wallw.txt", "r")
	            local island_wallw = file:read("*l")
                file:close()
				file = io.open(minetest.get_worldpath().."/SAVE/Island_Walle.txt", "r")
	            local island_walle = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
				if tonumber(level) < 4 and inv:contains_item("main", "default:sand 10") and tonumber(island_walle) > 6 and tonumber(island_wallw) > 6 and tonumber(island_walln) > 6 and tonumber(island_walls) > 6 then
                    Item_Remove2(player, "main", "default:sand 10")
                    upgrade = true
				elseif tonumber(level) < 4 and inv:contains_item("main", "default:sand 10") then
                    txt = "build island walls first"
				elseif tonumber(level) == 4 and inv:contains_item("main", "default:desert_sand 100") and tonumber(island_walle) > 7 and tonumber(island_wallw) > 7 and tonumber(island_walln) > 7 and tonumber(island_walls) > 7 then
                    Item_Remove2(player, "main", "default:desert_sand 100")
                    upgrade = true
				elseif tonumber(level) == 4 and inv:contains_item("main", "default:desert_sand 100") then
                    txt = "upgrade island walls to lv.2 first"
				end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 5 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=145, y=9, z=0}, minetest.get_modpath("castrum").."/schematics/Island_Fountain/Island_Fountain_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_fountain" , island_fountain.get_formspec(player))
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)