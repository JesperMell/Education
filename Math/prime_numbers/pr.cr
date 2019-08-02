def prime_number(n)
  return false if n < 2
  (2..n - 1).each do |i|
    if n % i == 0
      p "#{n} % #{i}"
      return false
    end
  end
  return true
end

def better_prime_number(n)
  return false if n < 2
  sqrt = Math.sqrt(n)
  (2..sqrt).each do |i|
    if n % i == 0
      p "#{n} % #{i}"
      return false
    end
  end
  return true
end

def sieve_of_eratosthenes(n)
  primes = Array(Bool).new(n + 1, value: true)
  p = 2

  while p * p <= n
    if primes[p] == true
      i = p * p
      while i <= n
        primes[i] = false 
        i += p
      end
    end
    p += 1
  end

  (2..n).each do |i|
    p i if primes[i]
  end
end

p prime_number(2)
p prime_number(4)
p prime_number(6)
p prime_number(17)
p prime_number(2417)

p ""

p better_prime_number(2)
p better_prime_number(4)
p better_prime_number(6)
p better_prime_number(17)
p better_prime_number(2417)

p ""

p sieve_of_eratosthenes(55)
