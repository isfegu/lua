--[[
3.6.- Consider the following expression:
(x and y and (not z)) or ((not y) and x)
Are the parentheses necessary? Would you recommend their use in that expres-
sion?
--]]

local x = true
local y = true
local z = true

print((x and y and (not z)) or ((not y) and x))
print((x and y and not z) or (not y and x)) --> Los not tienen prevalencia sobre and y or. Sobran los paréntesis que los engloban
print(x and y and not z or (not y and x)) --> Los and tienen prevalencia sobre los or. Sobran los paréntesis que los engloban
print(x and y and not z or not y and x) --> Los and y los not tienen prevalencia sobre los or. Sobran los paréntesis que los engloban

-- Los paréntesis no son necesarios, pero ayudan a la hora de leer el código