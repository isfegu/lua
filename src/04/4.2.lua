--[[
4.2.- Describe four different ways to write an unconditional loop in
Lua. Which one do you prefer?

R: Depende la situación
--]]

local i = 0
while true do
    print('Primera opción')
    -- Para no hacerlo infinito:
    i = i + 1
    if i == 2 then
        break
    end
end

i = 0
repeat
    print('Segunda opción')
    -- Para no hacerlo infinito:
    i = i + 1
    if i == 2 then
        break
    end
until false

i = 0
::loop::
print('Tercera opción')
-- Para no hacerlo infinito
i = i + 1
if i < 2 then
    goto loop
end

i = 0
function recursiva ()
    print( 'Cuarta opción')
    i = i + 1
    if i < 2 then
        recursiva ()
    end
end
recursiva()