
p1 = int(input())
c1 = int(input())
p2 = int(input())
c2 = int(input())

if p1*c1 == p2*c2:
    print(0)
elif p1*c1 > p2*c2:
    print(-1)
elif p1*c1 < p2*c2:
    print(1)