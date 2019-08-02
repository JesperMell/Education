import math
import numpy

def prime_number(n):
    if (n < 2):
        return False
    for i in range(2, n - 1):
        if (n % i == 0):
            print n, "%", i
            return False
    return True


def better_prime_number(n):
    if (n < 2):
        return False
    sqrt = int(math.sqrt(n))
    for i in range(2, sqrt + 1):
        if (n % i == 0):
            print n, "%", i
            return False
    return True

def sieve_of_eratosthenes(n):
    primes = numpy.ones(n + 1, dtype=bool)
    p = 2
    while(p * p <= n):
        if(primes[p]):
            i = p * p
            while(i <= n):
                primes[i] = False
                i += p
        p += 1

    for i in range(2,n):
        if(primes[i]):
            print(i)




print(prime_number(2))
print(prime_number(4))
print(prime_number(6))
print(prime_number(17))
print(prime_number(2417))

print("")

print(better_prime_number(2))
print(better_prime_number(4))
print(better_prime_number(6))
print(better_prime_number(17))
print(better_prime_number(2417))

print("")

print(sieve_of_eratosthenes(45))
