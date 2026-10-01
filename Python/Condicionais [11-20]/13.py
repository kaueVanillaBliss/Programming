# Verificar se uma letra é vogal ou consoante.

letra = input("Informe uma letra").lower()

vogais = ['a','e','i','o','u']

if letra in vogais:
    print("é vogal!")
else:
    print("é consoante!")