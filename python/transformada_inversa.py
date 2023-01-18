import numpy as np

def generar_variables_aleatorias(f, x, n):
    # Calcular la distribución acumulada
    FDA = np.cumsum(f)
    # Normalizar la distribución acumulada
    FDA = FDA / FDA[-1]
    # Crear la función inversa de la distribución acumulada
    FDI = lambda p: np.interp(p, FDA, x)
    # Generar números aleatorios utilizando la función rand() y la FDI
    r = np.random.rand(n)
    x_aleatorios = FDI(r)
    return x_aleatorios

# Ejemplo de uso de la función
f = [0, 0, 0, 0, 0, 1, 1, 1, 1, 1] # Función de distribución de probabilidad
x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] # Valores del eje x de la distribución
n = 10 # Cantidad de números aleatorios a generar

x_aleatorios = generar_variables_aleatorias(f, x, n)

print(x_aleatorios)
