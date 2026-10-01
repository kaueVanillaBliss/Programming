# Encontrar o maior entre três números

num1, num2, num3 = map(int,input("Informe três numeros: ").split())

if num1 > num2 and num1 > num3:
    print("O maior numero é o {}".format(num1))
elif num2 > num1 and num2 > num3:
    print("O maior numero é o {}".format(num2))
else:
    print("O maior numero é o {}".format(num3))
    