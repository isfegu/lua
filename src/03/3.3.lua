--[[
3.3.- We can represent a polynomial a_n x^n + a_n-1 x^(n-1) + ... a_1 x^1 + a_0
in Lua as a list of its coefficients, such as { a_0 , a_1 , ..., a_n } .

Write a function that receives a polynomial (represented as a table) and a
value for x and returns the polynomial value.
--]]

function polynomial(coefficients, value)
    if( #coefficients < 1 or value == nil ) then
        return "Debes especificar coeficientes y un valor"
    end

    local result = 0

    for i = 1, #coefficients do
        result = result + (coefficients[i] * (value^(i-1)))
    end
    return result
end

print(polynomial({1}, 2)) --> 1
print(polynomial({1,1}, 2)) --> 3
print(polynomial({1,2}, 2)) --> 5
print(polynomial({1,2,3}, 2)) --> 17
print(polynomial({1,2,3,4}, 2)) --> 49