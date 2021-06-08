
lista = [1,2,3,4,5,6]

a = int(input())

b = int(input())

if a > len(lista) or b > len(lista):
    print(lista)
else: 
    temp = lista[a]
    lista[a] = lista[b]
    lista[b] = temp
    print(lista)

