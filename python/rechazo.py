import numpy as np

def fun(x):
    if x >= 0 and x <= 1:
        return 2*x
    else:
        return 0

x = list(map(float, input("Dar el rango de estudio: ").split(",")))
M = float(input("Dar el valor de la moda: "))

va = None
while va == None:
    R1 = np.random.rand()
    R2 = np.random.rand()
    y = x[0] + (x[1] - x[0]) * R1
    z = fun(y)
    if R2 <= z / M:
        va = y

print("La variable aleatoria es: ", va)
