
lista = [2,4,6,1,1,7]

result = (list(filter(lambda x: x%2==1, lista)),list(filter(lambda x: x%2==0, lista)))

print(result)