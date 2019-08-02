def prime_number(n)
  return false if n < 2 
  (2..(n - 1)).each do |i|
    if (n % i) == 0
      p "#{n} % #{i}"
      return false
    end
  end
  true
end

def better_prime_number(n)
  return false if n < 2 
  sqrt = Math.sqrt(n)
  (2..sqrt).each do |i|
    if (n % i) == 0
      p "#{n} % #{i}"
      return false
    end
  end
  return true
end

class SieveOfEratosthenese
  def self.call(n)
    flags = Array.new(n + 1).fill(true)
    p = 2

    while p * p <= n
      if flags[p] == true
        i = p * p
        while i <= n
          flags[i] = false
          i += p
        end
      end
      p+=1
    end
    flags.each_with_index.map{|f, i| i if f }.compact
  end
end
