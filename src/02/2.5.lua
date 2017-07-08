--[[
2.5.- Suppose you need to format a long sequence of arbitrary bytes
as a string literal in Lua. How would you do it? Consider issues like readability,
maximum line length, and performance.
--]]

data = "\x00\x01\x02\x03\x04\x05\x06\x07\z
        \x08\x09\x0A\x0B\x0C\x0D\x0E\x0F"

print(data)