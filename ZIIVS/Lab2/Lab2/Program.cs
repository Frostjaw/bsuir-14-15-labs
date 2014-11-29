using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;

namespace Lab2
{
    class Program
    {
        const int p = 53;
        const int a = 37;
        const int b = 41;

        static int μ = 17;

        static void Main(string[] args)
        {
            int[] primeNumbers = PrimeNumbers.NumbersLessThan(p);

            Console.OutputEncoding = Encoding.Unicode;

            Console.WriteLine("a = " + a + "\tb = " + b + "\tp = " + p + "\tμ = " + μ);

            int α = Key(a, p);
            int β = Key(b, p);

            Console.WriteLine("α = " + α + "\tβ = " + β);

            int μ1 = (int)BigInteger.ModPow(μ,  a, p);
            int μ2 = (int)BigInteger.ModPow(μ1, b, p);
            int μ3 = (int)BigInteger.ModPow(μ2, α, p);
            int μ4 = (int)BigInteger.ModPow(μ3, β, p);

            Console.WriteLine();

            HashSet<int> equals = new HashSet<int>();

            for (int i = 0; i < primeNumbers.Length; i++)
            {
                for (int j = 0; j < primeNumbers.Length; j++)
                {

                    int _a = primeNumbers[i];
                    int _b = primeNumbers[j];
                    int _α = Key(_a, p);
                    int _β = Key(_b, p);

                    if (_α != 0 && _β != 0)
                    {
                        int r = (primeNumbers[i] * primeNumbers[j]) % (p - 1);

                        if (equals.Add(r))
                        {
                            if (μ2 == Exchange(μ2, _α, _β, _a, _b))
                            {
                                Console.WriteLine("a = " + _a + " b = " + _b + " α = " + _α + " β = " + _β);
                            }
                        }
                    }


                }
            }
            
            Console.WriteLine("\nPress any key...");
            Console.ReadKey();
        }

        static int Exchange(int μ, int a, int b, int α, int β)
        {
            int μ1 = (int)BigInteger.ModPow(μ,  a, p);
            int μ2 = (int)BigInteger.ModPow(μ1, b, p);
            int μ3 = (int)BigInteger.ModPow(μ2, α, p);
            int μ4 = (int)BigInteger.ModPow(μ3, β, p);

            return μ4;
        }

        static int Key(int a, int p)
        {
            for (int i = 1; (i < p - 1); i++)
            {
                if ((a * i) % (p - 1) == 1)
                {
                    return i;
                }
            }

            return 0;
        }
    }
}
