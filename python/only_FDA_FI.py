import numpy as np
from scipy.interpolate import interp1d

def transformada_inversa(FDA, a, b, n):
    x = np.linspace(a, b, 1000)
    fda_interp = interp1d(x, FDA(x))
    r = np.random.rand(n)
    fdi = fda_interp(r)
    return fdi

FDA = lambda x: x**2
a = 0
b = 1
n = 10
x_aleatorios = transformada_inversa(FDA, a, b, n)
print(x_aleatorios)


# Ten en cuenta que es importante que la función de distribución acumulada esté definida en
# el intervalo [a, b] para que la interpolación funcione correctamente. Si la función de distribución acumulada no está definida en todo el intervalo, es posible que obtengas valores no válidos o un error. Es recomendable que antes de utilizar la función, verifiques que la función esté definida en todo el intervalo y que sea una función monótona creciente.



