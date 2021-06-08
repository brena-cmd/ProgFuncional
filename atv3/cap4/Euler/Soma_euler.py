
lista = []

a = int(input())

for x in range(0,a):
    if x % 3 == 0 or x % 5 == 0:
        lista.append(x)

print(sum(lista))