-- Write a simple script that prints its own name without knowing it in advance.

function name ()
    print("What's your name?")
    name = io.read("*line")
    print("Your name is: " .. name)
end

name()