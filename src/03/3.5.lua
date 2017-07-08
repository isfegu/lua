--[[
3.5.- How can you check whether a value is a boolean without using
the type function?
--]]

function isBool(value)
    if value == true or value == false then
        return true
    end
    return false
end

print(isBool(true))
print(isBool(false))
print(isBool('Hola mundo'))
print(isBool(1975))
print(isBool({'hola', 'mundo'}))