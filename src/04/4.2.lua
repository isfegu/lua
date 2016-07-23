--[[
4.2.- Rewrite the state machine of Listing 4.2 without using goto.

Listing 4.2
goto room1
-- initial room
::room1:: do
    local move = io.read()
    if move == "south" then goto room3
    elseif move == "east" then goto room2
    else
        print("invalid move")
        goto room1
        -- stay in the same room
    end
end

::room2:: do
    local move = io.read()
    if move == "south" then goto room4
    elseif move == "west" then goto room1
    else
        print("invalid move")
        goto room2
    end
end

::room3:: do
    local move = io.read()
    if move == "north" then goto room1
    elseif move == "east" then goto room4
    else
        print("invalid move")
        goto room3
    end
end

::room4:: do
    print("Congratulations, you won!")
end

--]]

function room1()
    local move = io.read()
    if move == "south" then
        room3()
    elseif move == "east" then
        room2()
    else
        print("Invalid move")
        return room1()
    end
end

function room2()
    local move = io.read()
    if move == "south" then
        room4()
    elseif move == "west" then
        room1()
    else
        print("Invalid move")
        return room2()
    end
end

function room3()
    local move = io.read()
    if move == "north" then
        room1()
    elseif move == "east" then
        room4()
    else
        print("Invalid move")
        return room3()
    end
end

function room4()
    print("Congratulations, you won!")
end

room1()