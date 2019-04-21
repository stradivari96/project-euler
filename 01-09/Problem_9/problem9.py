c = 1
sol = None
while not sol:
    for b in range(1,c):
        for a in range(1,b):
            if a+b+c == 1000 and a*a+b*b == c*c:
                sol = (a,b,c)
    c += 1

print(sol[0]*sol[1]*sol[2])