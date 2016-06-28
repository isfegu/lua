--[[
1.1.- Run the factorial example. What happens to your program if you
enter a negative number? Modify the example to avoid this problem.
--]]

function fact(n)
    if n < 0 then
        print("You must enter a non negative number")
    else
        if n == 0 then
            return 1
        else
            return n * fact(n-1)
        end
    end
end

print("Enter a number: ")
number = io.read("*n")
print(fact(number))