#7. Calcular a área de um círculo.

import math

raio = float(input("Informe o raio do circulo!"))


area = math.pi * (raio**2)

print("Área = {:.2f}".format(area))