
lista = [3,2,4,6,5,7,8,0,1]

lista2 = list(filter(lambda x: x%2==1, lista))

soma = sum(lista2)

print(soma)