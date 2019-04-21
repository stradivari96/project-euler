def isPalindrome(number):
    return str(number) == str(number)[::-1]

result = 0
for i in range(101, 1000):
    for j in range(101, 1000):
        prod = i*j
        if prod > result and isPalindrome(prod):
            result = prod

print(result)