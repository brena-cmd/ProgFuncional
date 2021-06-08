

lista = [1, 2, 3, 4]

a = int(input())

if a < 0:
    print(lista[len(lista)+a])
else:
    print(lista[a])