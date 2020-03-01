local new = {}
new.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[5,6.5]"
        .."background[5,6.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,0;Welcome to minetest castrum.]"
        .."label[0,0.3;You are on a floor plan of a castle.]"
        .."label[0,0.6;Hit a diamond block to build and upgrade a building.]"
        .."label[0,0.9;Go first to the quarry in the east.]"
        .."label[0,1.2;Collect resources and rebuild the old castle]"
        .."image_button[4.5,-0.3;0.8,0.8;;esc;X]"
	return formspec			
end

minetest.register_on_newplayer(function(player)
	player:setpos({x=-40, y=8.5, z=-5.0})
    minetest.show_formspec(player:get_player_name(), "new" , new.get_formspec(player))
    local privs = minetest.get_player_privs(player:get_player_name())
    privs["fast"] = true
    minetest.set_player_privs(player:get_player_name(), privs)
end)

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
	if formname == "new" then
        minetest.show_formspec(player:get_player_name(), "", "")
    end
end)