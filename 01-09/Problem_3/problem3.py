number = 600_851_475_143
factor = 2

while factor < number:
    while number%factor == 0:
        number //= factor
    factor += 1

print(number)