
lista1 = [3,6,5,7]
lista2 = [9,7,5,1,3]
lista3 = []

for x in range(0, len(lista1)):
    if lista1[x] in lista2:
        lista3.append(lista1[x])

print(lista3)