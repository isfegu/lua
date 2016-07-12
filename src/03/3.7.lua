--[[
3.7.- What will the following script print? Explain.
    sunday = "monday"; monday = "sunday"
    t = {sunday = "monday", [sunday] = monday}
    print(t.sunday, t[sunday], t[t.sunday])
--]]

sunday = "monday"; monday = "sunday"
t = {sunday = "monday", [sunday] = monday}

--[[
    t.sunday
        Es lo mismo que t["sunday"] por lo tanto muestra el item de la tabla sunday = "monday".
        Al construir la tabla
            t = {sunday = "monday"}
        es igual que hacer:
            t = {}
            t.sunday = "monday"
        y lo mismo que hacer:
            t = {}
            t["sunday"] = "monday"
--]]
print("t.sunday = " .. t.sunday .. " debe ser monday")        --> monday
print('t["sunday"] = ' .. t["sunday"] .. " debe ser monday")  --> monday

--[[
    t[sunday]
        Es lo mismo que t["monday"] ya que sunday vale "monday". Y el valor de t["monday"] = "sunday" (El valor de monday)
        Al contruir la tabla
            t = {[sunday] = monday}
        es igual que hacer:
            t = {}
            t[sunday] = monday
        y como sunday vale "monday" sería lo mismo que hacer
            t["monday"] = monday
        y como monday vale "sunday" sería lo mismo que hacer
            t["monday"] = "sunday"
--]]
print("t[sunday] = " .. t[sunday] .. " debe ser sunday")      --> sunday
print('t["monday"] = ' .. t["monday"] .. " debe ser sunday")  --> sunday

--[[
    t[t.sunday]
        t.sunday es lo mismo que t["sunday"] y su valor es "monday". Por tanto t["monday"] es "sunday"
]]
print(t.sunday .. " debe ser monday")
print(t[sunday] .. " debe ser sunday")
print(t[t.sunday] .. " debe ser sunday")