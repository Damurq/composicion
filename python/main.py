import numpy as np
from scipy.integrate import quad
from scipy.interpolate import interp1d

def FPA(f, x):
    # Definir una función anónima para la FPA
    FDA = lambda var: quad(f, -np.inf, var)[0]
    # Calcular la FPA en el punto x
    fpa = FDA(x)
    return fpa

def transformada_inversa(f, a, b, n):
    x = np.linspace(a, b, 1000) # vector de puntos x
    y = [FPA(f, i) for i in x]
    fda_interp = interp1d(x, y) # interpolacion lineal de la FDA
    r = np.random.rand(n) # generar n numeros aleatorios entre 0 y 1
    fdi = fda_interp(r)
    return fdi

# Ejemplo de uso de la función
f =  lambda x: 1/(np.sqrt(2*np.pi))*np.exp(-(x**2)/2) # Función de distribución de probabilidad
FDA = True
a = -5 # Límite inferior del intervalo
b = 5 # Límite superior del intervalo
n = 10 # Cantidad de números aleatorios a generar

x_aleatorios = transformada_inversa(f, a, b, n)

print(x_aleatorios)
