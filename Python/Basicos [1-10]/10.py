#10. Calcular o fatorial de um número. ex: 5 x 4 x 3 x 2 x 1

num = int(input("Informe um numero: "))


while(num>0):
    fat = num x (num - 1)
    fat_num = fat
    num = num - 1 


print(O fatorial de {} é {}.format(num,fat_num))