--[[
5.3.- Write a function that receives an arbitrary number of values and
returns all of them, except the first one.
--]]

function arbitrary( ... )
    local first = true
    for i, v in pairs{...} do
        if first then
            first = false
        else
            print(v)
        end
    end
end

function arbitrary_goto( ... )
    local t = {...}
    for i = 1, #t, 1 do
        if i == 1 then
            goto continue
        end
        print(t[i])
        ::continue::
    end
end

function arbitrary_param(first, ...)
    print(table.unpack({...}))
end

function arbitrary_best(first, ...)
    return {...}
end

arbitrary('a', 'b', 1, 2)
arbitrary_goto('a', 'b', 1, 2)
arbitrary_param('a', 'b', 1, 2)
arbitrary_best('a', 'b', 1, 2)