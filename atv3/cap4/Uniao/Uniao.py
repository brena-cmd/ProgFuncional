
lista1 = [1,2,3,4,5]

lista2 = [5,6,7,8,9,4]

uniao = lista1+list(filter(lambda x: not(x in lista1), lista2))

print(uniao)