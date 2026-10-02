-- 1. Leia dois números e imprima a soma, subtração, multiplicação e divisão.

local function calculadora_simples()
    io.write("Me informe dois numeros (separados por espaco")
    local num_1, num_2= io.read("*n","*n")

    local soma = num_1 + num_2
    local subtra = num_1 - num_2
    local mult = num_1 * num_2
    local div = num_1 / num_2


    print("A soma é =" .. soma)
    print("A subtracao é =" .. subtra)
    print("A multiplicacao é =" .. mult)
    print("A divisao é  =" .. div)
end

calculadora_simples()
