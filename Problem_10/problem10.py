
numbers = [i for i in range(2_000_000)]
# do not consider multiples of 0 and 1
numbers[0], numbers[1] = None, None
primes = []
for n in numbers:
    if n is None: continue

    # Is prime
    primes.append(n)
    multiple = n
    while multiple+n < 2_000_000:
        numbers[multiple+n] = None
        multiple += n

print(sum(primes))