using System;

namespace pr
{
    class Program
    {
        static void Main(string[] args)
        {
            SieveOfEratostenese(56);
        }

        static void SieveOfEratostenese(int n)
        {
            bool[] primes = new bool[n + 1];
            int p = 2;
            for(int i=0; i < primes.Length; i++)
            {
                primes[i] = true;
            }

            if(n < 2)
            {
                Console.WriteLine("Nope");
                return;
            }

            while(p * p <= n)
            {
                if(primes[p])
                {
                    int i = p * p;
                    while(i <= n)
                    {
                        primes[i] = false;
                        i += p;
                    }
                }
                p += 1;
            }
            for(int i2 = 0; i2 < primes.Length; i2++)
            {
                if(primes[i2])
                {
                    Console.WriteLine(i2);
                }
            }
        }
    }
}
