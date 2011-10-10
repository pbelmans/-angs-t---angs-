def zsigmondy(a, b, n):
    if n == 0:
        return set([1])

    factors = set()

    for i in range(1, n):
        [factors.add(p) for (p, k) in list(factor(a**i - b**i))]

    return set([p for (p, k) in list(factor(a**n - b**n))]) - factors

f = open("output.dat", "w")

for i in range(40):
    primes = zsigmondy(2, 1, i)
    for p in primes:
        f.write("{0} {1}\n".format(i, p))

f.close()
