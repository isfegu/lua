--[[
5.1.- Write a function that receives an arbitrary number of strings
and returns all of them concatenated together.
--]]

function arbitrary (...)
    local concatenated = ''
    for i,v in pairs{...} do
        if type(v) == 'string' then
            concatenated = concatenated .. v
        end
    end
    return concatenated
end

print(arbitrary("a", 1, "c", "d", "e"))
