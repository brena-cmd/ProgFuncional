

vet = [1,2,3,4,5]

a = int(input())

tam = len(vet)-a
cont = 0;
novalista = []
for x in range(tam, len(vet)):
        novalista.append(vet[x])

print(novalista)