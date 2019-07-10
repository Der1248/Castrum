function Bridge_Status(player)
    file = io.open(minetest.get_worldpath().."/SAVE/Bridge.txt", "r")
	local level = file:read("*l")
    file:close()
    file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "r")
	local status = file:read("*l")
    file:close()
    if tonumber(level) < 9 then
        minetest.chat_send_player(player:get_player_name(), "build bridge first")
    elseif tonumber(level) == 9 then
        if tonumber(status) == 0 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("1")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
                end
            end
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:wood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
        elseif tonumber(status) == 1 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("0")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:wood"})
                end
            end
            minetest.set_node({x=-40, y=8, z=-36}, {name="castrum:bridge"})
            for j=36,44 do
                for k=9,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="air"})
                end
            end
        end
    elseif tonumber(level) == 10 then
        if tonumber(status) == 0 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("1")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
                end
            end
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:junglewood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
        elseif tonumber(status) == 1 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("0")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:junglewood"})
                end
            end
            minetest.set_node({x=-40, y=8, z=-36}, {name="castrum:bridge"})
            for j=36,44 do
                for k=9,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="air"})
                end
            end
        end
	elseif tonumber(level) == 11 then
        if tonumber(status) == 0 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("1")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="air"})
                end
            end
            for j=36,44 do
                for k=8,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="default:pine_wood"})
                end
            end
            minetest.set_node({x=-40, y=12, z=-32}, {name="castrum:bridge2"})
        elseif tonumber(status) == 1 then
            file = io.open(minetest.get_worldpath().."/SAVE/Bridge_status.txt", "w")
		    file:write("0")
		    file:close()
            for j=36,44 do
                for i=32,40 do
                    minetest.set_node({x=j*(-1), y=8, z=i*(-1)}, {name="default:pine_wood"})
                end
            end
            minetest.set_node({x=-40, y=8, z=-36}, {name="castrum:bridge"})
            for j=36,44 do
                for k=9,16 do
                    minetest.set_node({x=j*(-1), y=k, z=-32}, {name="air"})
                end
            end
        end
    end
end