--[=[
2.4.- How can you embed the following piece of XML as a string in Lua?

<![CDATA[
Hello world
]]>

Show at least two different ways.
--]=]

data = "<![CDATA[\n\z
Hello world\n\z
]]>"
print(data)

data = [===[
<![CDATA[
Hello world
]]>
]===]
print(data)