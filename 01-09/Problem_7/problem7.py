primes = [2]
i = 3

while len(primes) < 10001:
    for prime in primes:
        if i%prime == 0:
            i += 2
            break
    else:
        primes.append(i)

print(primes[-1])