

lista = [3,7,4,2]

a = int(input())

lista2 = list(filter(lambda x: x == a, lista))

if lista2 == []:
    print(False)
else: 
    print(True)