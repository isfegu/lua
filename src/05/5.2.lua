--[[
5.2.- Write a function that receives an array and prints all elements
in that array. Consider the pros and cons of using table.unpack in this function.
--]]

function elements(t)
    for i, v in pairs(t) do
        print(v)
    end
end

print(table.unpack({'a', 'b', 'c', 1, 2}))
elements{'a', 'b', 'c', 1, 2}
print(table.unpack({'a', 'b', nil, 1, 2}))
elements{'a', 'b', nil, 1, 2}
print(table.unpack({'a', 'b', nil, 1, 2, foo = 'bar'}))
elements{'a', 'b', nil, 1, 2, foo = 'bar'}
print(table.unpack({'a', 'b', nil, 1, 2, bar = nil}))
elements{'a', 'b', nil, 1, 2, bar = nil}
print(table.unpack({[1] = 'a', [2] = 'b', [3] = nill, [4] = 'c'}))
elements{[1] = 'a', [2] = 'b', [3] = nill, [4] = 'c'}
