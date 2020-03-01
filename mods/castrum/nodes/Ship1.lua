dofile(minetest.get_modpath("castrum").."/config.txt")
local ship1 = {}
ship1.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	local level = file:read("*l")
    file:close()
    local label = ""
    local label2 = ""
    local need1 = ""
    local need2 = ""
    local need3 = ""
    local need4 = ""
    if tonumber(level) < 5 then
        label = "not build yet ("..math.floor((level/5)*100).."%)"
        label2 = "Build"
        need1 = "10 Wooden Planks"
        need2 = "Fountain lv.2"
    elseif tonumber(level) == 5 then
        label = (level-4).."/3"
        label2 = "Upgrade"
        need1 = "50 Jungle Wood Planks"
        need2 = "Fountain lv.4"
	elseif tonumber(level) == 6 then
        label = (level-4).."/3"
        label2 = "Upgrade"
        need1 = "250 Pine Wood Planks"
        need2 = "Fountain lv.6"
    else
        label = (level-4).."/3"
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
		if tonumber(level) > 6 then
			formspec = formspec.."button[0,3;2.5,1;;Go to Island]"
			formspec = formspec.."button[2.5,3;2.5,1;;Go to Mountain]"
			formspec = formspec.."button[0,4;5,1;;Go to Cave]"
		elseif tonumber(level) > 5 then
			formspec = formspec.."button[0,3;2.5,1;;Go to Island]"
			formspec = formspec.."button[2.5,3;2.5,1;;Go to Mountain]"
        elseif tonumber(level) > 4 then
            formspec = formspec.."button[0,3;5,1;;Go to Island]"
		
        end
        formspec = formspec.."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
		if del_button == true then
			formspec = formspec.."button[0,5;5,1;;del]"
		end
	return formspec			
end

minetest.register_node("castrum:ship1",{
	tiles  = {"default_diamond_block.png"},
	description = "Configurate Ship 1",
    --groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    on_punch = function(pos, node, player, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "ship1" , ship1.get_formspec(player))
    end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "ship1" then
        for k, v in pairs(fields) do
            if v == "del" then
                Update_Ship1(0,false)
                file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "w")
		        file:write("0")
		        file:close()
                minetest.show_formspec(player:get_player_name(), "ship1" , ship1.get_formspec(player))
            elseif v == "Upgrade" or v == "Build" then
                file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "r")
	            local level = file:read("*l")
                file:close()
                file = io.open(minetest.get_worldpath().."/SAVE/Fountain.txt", "r")
	            local fountain = file:read("*l")
                file:close()
                local inv = player:get_inventory()
                local upgrade = false
                local txt = "not enough items"
                if tonumber(level) < 5 and inv:contains_item("main", "default:wood 10") and tonumber(fountain) > 4 then
                    Item_Remove2(player, "main", "default:wood 10")
                    upgrade = true
                elseif tonumber(level) < 5 and inv:contains_item("main", "default:wood 10") then
                    txt = "upgrade fountain to lv.2 first"
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:junglewood 50") and tonumber(fountain) > 6 then
                    Item_Remove2(player, "main", "default:junglewood 50")
                    upgrade = true
                elseif tonumber(level) == 5 and inv:contains_item("main", "default:junglewood 50") then
                    txt = "upgrade fountain to lv.4 first"
				elseif tonumber(level) == 6 and inv:contains_item("main", "default:pine_wood 250") and tonumber(fountain) > 8 then
                    Item_Remove2(player, "main", "default:pine_wood 250")
                    upgrade = true
                elseif tonumber(level) == 6 and inv:contains_item("main", "default:pine_wood 250") then
                    txt = "upgrade fountain to lv.6 first"
                end
                if upgrade == false then
                    minetest.chat_send_player(player:get_player_name(), txt)
                end
                if (tonumber(level)) < 7 and upgrade or buildings_costs == false then
                    Update_Ship1(tonumber(level)+1,false)
                    file = io.open(minetest.get_worldpath().."/SAVE/Ship1.txt", "w")
		            file:write(tonumber(level)+1)
		            file:close()
                end
                minetest.show_formspec(player:get_player_name(), "ship1" , ship1.get_formspec(player))
            elseif v == "Go to Island" then
                player:setpos({x=124, y=8.5, z=44})
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Go to Mountain" then
                player:setpos({x=312, y=8.5, z=44})
                minetest.show_formspec(player:get_player_name(), "", "")
			elseif v == "Go to Cave" then
                player:setpos({x=-74, y=8.5, z=111})
                minetest.show_formspec(player:get_player_name(), "", "")
            elseif v == "X" then
                minetest.show_formspec(player:get_player_name(), "", "")
            end
        end
	end
end)