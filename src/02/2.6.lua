--[[
2.6.- Assume the following code:
    a = {};
    a.a = a
What would be the value of a.a.a.a ? Is any a in that sequence somehow different from the others?
Now, add the next line to the previous code:
    a.a.a.a = 3
What would be the value of a.a.a.a now?
--]]

a = {}
a.a = a     --> idem a["a"] = a

print(a)    --> table: 0x7dceb0
print(a["a"])   --> table: 0x7dceb0
print(a.a)  --> table: 0x7dceb0
print(a.a.a)  --> table: 0x7dceb0
print(a.a.a.a)  --> table: 0x7dceb0
a.a.a.a = 3
-- print(a.a.a.a)  --> Error: attempt to index a number value (field 'a')
print(a.a)  --> 3
print(a)  --> table: 0x7dceb0

print(a["a"])   --> 3
