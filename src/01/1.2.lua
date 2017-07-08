--[[
1.2.- Run the twice example, both by loading the file with the -l
option and with dofile . Which way do you prefer?
--]]

--[[
root@664f9b7dce52:/var/lua/src# lua
Lua 5.3.1  Copyright (C) 1994-2015 Lua.org, PUC-Rio
> dofile("lib1.lua")
> n = norm(3.4, 1.0)
> print(twice(n))
7.0880180586677
--]]

--[[
root@664f9b7dce52:/var/lua/src# lua -l 1.2 -e "n = norm(3.4, 1.0); print(twice(n))"
7.0880180586677
]]--

function norm (x,y)
    return (x^2 + y^2)^0.5
end

function twice (x)
    return 2*x
end