--[[
4.6.- Assuming that a goto could jump out of a function, explain what
the program in Listing 4.3 would do. (Try to reason about the label using the
same scoping rules used for local variables.)


    function getlabel ()
        return function () goto L1 end
        ::L1::
        return 0
    end

    function f (n)
        if n == 0 then return getlabel()
        else
            local res = f(n - 1)
            print(n)
            return res
        end
    end

    x = f(10)
    x()

R: Como dice el enunciado, si asumimos que se puede hacer un goto fuera de una función (que NO se
puede hacer). Este código mostraría 0. Por:

x = f(10) hace que f entre en recursividad hasta llegar a que n = 0. En ese caso retorna una función
lambda que redirige la ejecución a un label que retorna 0.
--]]
