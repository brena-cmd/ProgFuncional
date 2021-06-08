
lista = [1,2,7,1,5]

maior = lista[0]

for x in range(0,len(lista)):
    if lista[x] > maior:
        maior = lista[x]

print(maior)