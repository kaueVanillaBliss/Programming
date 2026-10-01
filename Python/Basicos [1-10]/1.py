# 1. Trocar o valor de duas variáveis


var_1 = int(input("Digite o valor da primeira var: "))
var_2 = int(input("Digite o valor da segunda var: "))

print("Valores antes da troca: Var_1 = {} e Var_2 = {}".format(var_1,var_2))

var_1, var_2 = var_2, var_1 # é possivel fazer isso em python. É conhecido como Tuple Unpacking

print("Valores após a troca: Var_1 = {} e Var_2 = {}".format(var_1,var_2))