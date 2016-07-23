--[[
4.5.- Can you explain why Lua has the restriction that a goto cannot
jump out of a function? (Hint: how would you implement that feature?)

R:
--]]


function restriction()
    print('Dentro de la función restriction')
    jump()
    -- goto jump -- Este goto no funciona al salir del ámbito dela función
end

function jump()
    print('Dentro de la función jump')
end

::jump::
print('Después de label ::jump::')
restriction()