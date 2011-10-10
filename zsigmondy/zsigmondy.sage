def zsigmondy(a, b, n):
    factors = set()

    for i in range(1, n):
        [factors.add(p) for (p, k) in list(factor(a**i - b**i))]

    return set([p for (p, k) in list(factor(a**n - b**n))]) - factors

for i in range(1, 35):
    print i, zsigmondy(2, 1, i)
