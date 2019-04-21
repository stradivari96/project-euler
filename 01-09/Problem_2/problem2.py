a = 1
b = 1
result = 0

while a+b < 4_000_000:
    if (a+b) % 2 == 0:
        result += a+b
    c = b
    b = a+b
    a = c

print(result)