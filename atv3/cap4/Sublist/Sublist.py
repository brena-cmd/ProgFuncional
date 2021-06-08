
lista = [0,1,2,3,4,5,6,7,8,9,10]

a = int(input())
b = int(input())

if a < 0:
    a = a + len(lista)

if b < 0:
    b = b + len(lista)

lista2 = []

for x in range(a, b):
    lista2.append(lista[x])

print(lista2)
