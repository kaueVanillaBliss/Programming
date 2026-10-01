#5. Calcular a média de 4 notas.

nota1, nota2, nota3, nota4 = map(float(input("Informe as 4 notas: ".split))) #O map aplicará o float() em cada item do split

media = (nota1 + nota2 + nota3 + nota4) / 4
print("A media final é de {}".format(media))