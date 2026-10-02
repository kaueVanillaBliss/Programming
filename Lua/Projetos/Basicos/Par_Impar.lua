-- 2. Leia um número e diga se é par ou ímpar.

local function par_impar()
    
    continuar = true
    
    while continuar do
        
        io.write("Me informe um numero")
        local num_1 = io.read("*n")
        
        if num_1 == 0 then
            print("Encerrando o programa")
            continuar = false
        elseif num_1 % 2 == 0 then
            print("É par")
        else 
            print("É impar!")
        end
        
        
    end
end

par_impar()