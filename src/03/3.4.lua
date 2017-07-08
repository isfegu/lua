--[[
3.4.- Can you write the function from the 3.3 exercise so that it uses
at most n additions and n multiplications (and no exponentiations)?
--]]

function polynomial(coefficients, value)
    if(#coefficients < 1 or value == nil) then
        return "Debes especificar coeficientes y un valor"
    end

    local result = 0
    local current = 1

    for i = 1, #coefficients do
        result = result + (coefficients[i] * current)
        if(i ~= #coefficients) then
            current = current * value
        end
    end
    return result
end


print(polynomial({1}, 2)) --> 1
print(polynomial({1,1}, 2)) --> 3
print(polynomial({1,2}, 2)) --> 5
print(polynomial({1,2,3}, 2)) --> 17
print(polynomial({1,2,3,4}, 2)) --> 49
