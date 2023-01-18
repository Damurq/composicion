import numpy as np

def generar_variables_aleatorias(f, a, b, n):
    # Generar variables aleatorias uniformes entre a y b
    x = np.random.uniform(a, b, n)
    # Aplicar la función f a cada variable aleatoria uniforme
    y = f(x)
    return y

# Ejemplo de uso de la función
f = lambda x: x ** 2 # Función a aplicar
a = 0 # Límite inferior del intervalo
b = 1 # Límite superior del intervalo
n = 10 # Cantidad de números aleatorios a generar

x_aleatorios = generar_variables_aleatorias(f, a, b, n)

print(x_aleatorios)
