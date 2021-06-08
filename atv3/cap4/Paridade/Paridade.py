
#lista = [True, False, True, False, True]

lista = [False, True, False, True]

cont = 0
for x in range(0, len(lista)):
    if(lista[x]==True):
        cont+=1

if cont%2==0:
    print(False)
else:
    print(True)
