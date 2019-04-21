def is_valid(number):
    for i in range(20, 2, -1):
        if not number%i == 0:
            return False
    return True

result = 20

while not is_valid(result):
    result += 20
print(result)