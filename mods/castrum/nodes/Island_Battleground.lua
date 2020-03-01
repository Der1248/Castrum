dofile(minetest.get_modpath("castrum").."/config.txt")
local island_battleground = {}
island_battleground.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "r")
	local level = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "r")
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
		need1 = "400 Sand"
        need2 = "Island Fountain lv.1"
    else
        label = (level-3).."/1"
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
            formspec = formspec.."button[0,3;5,1;;Start Island Chapter 1]"
		elseif tonumber(chapter) == 2 and tonumber(level) > 3 then
			formspec = formspec.."button[0,3;5,1;;Start Island Chapter 2]"
		elseif tonumber(chapter) == 3 and tonumber(level) > 3 then
			formspec = formspec.."button[0,3;5,1;;Start Island Chapter 3]"
        end
        formspec = formspec.."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
		if del_button == true then
			formspec = formspec.."button[0,4;5,1;;del]"
		end
	return formspec			
end

minetest.register_node("castrum:island_battleground",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Island Battleground",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "island_battleground" , island_battleground.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "island_battleground" then
        for k, v in pairs(fields) do
            if v == "del" then
                minetest.place_schematic({x=180, y=9, z=42}, minetest.get_modpath("castrum").."/schematics/Island_Battleground/Island_Battleground_0.mts","0") 
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "island_battleground" , island_battleground.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "r")
	            local level = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Island_Chapter.txt", "r")
	            local chapter = file:read("*l")
                file:close()
                local txt = "not enough items"
                if tonumber(level) < 4 and tonumber(fountain) > 3 and inv:contains_item("main", "default:sand 400") then
                    upgrade = true
                    Item_Remove2(player, "main", "default:sand 400")
                elseif tonumber(level) < 4 and inv:contains_item("main", "default:sand 400") then
                    txt = "build island fountain first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 4 and upgrade or buildings_costs == false then
                    minetest.place_schematic({x=180, y=9, z=42}, minetest.get_modpath("castrum").."/schematics/Island_Battleground/Island_Battleground_"..(tonumber(level)+1)..".mts","0")
                    file = io.open(minetest.get_worldpath().."/SAVE/Island_Battleground.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "island_battleground" , island_battleground.get_formspec(player))
            elseif v == "Start Island Chapter 1" then
                set_sea_fight(1,player)
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Start Island Chapter 2" then
                set_sea_fight(2,player)
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Start Island Chapter 3" then
                set_sea_fight(3,player)
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)