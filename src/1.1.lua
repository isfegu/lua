-- 1.1 defines a factorial function prevent negative numbers

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