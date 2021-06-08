
lista = [1, 2, 3, 4]

a = int(input())
lista1 = []
lista2 = []
for x in range(0, len(lista)):
    if(x<a):
        lista1.append(lista[x])
    else:
        lista2.append(lista[x])

result = (lista1, lista2)

print(result)