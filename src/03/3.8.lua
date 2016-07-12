--[[
3.8.- Suppose that you want to create a table that associates each
escape sequence for strings with its meaning. How could you
write a constructor for that table?


\a  bell
\b  back space
\f  form feed
\n  newline
\r  carriage return
\t  horizontal tab
\v  vertical tab
\\  backslash
\"  double quote
\'  single quote
--]]

t = {
    ['\a'] = "bell",
    ['\b'] = "back space",
    ['\f'] = "form feed",
    ['\n'] = "newline",
    ['\r'] = "carriage return",
    ['\t'] = "horizontal tab",
    ['\v'] = "vertical tab",
    ['\"'] = "double quote",
    ["\'"] = "single quote",
}

print(t['\a'])
print(t['\b'])
print(t['\f'])
print(t['\n'])
print(t['\r'])
print(t['\v'])
print(t['\"'])
print(t["\'"])
