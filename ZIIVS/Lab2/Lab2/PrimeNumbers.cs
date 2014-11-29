using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Lab2
{
    class PrimeNumbers
    {

        static public int[] NumbersLessThan(int argMaxPrime)
        {
            BitArray al = new BitArray(argMaxPrime, true);

            int lastprime = 1;
            int lastprimeSquare = 1;

            while (lastprimeSquare <= argMaxPrime)
            {
                lastprime++;

                while (!al[lastprime])
                    lastprime++;

                lastprimeSquare = lastprime * lastprime;

                for (int i = lastprimeSquare; i < argMaxPrime; i += lastprime)
                    if (i > 0)
                        al[i] = false;
            }

            List<int> sieve2Return = new List<int>(argMaxPrime);

            for (int i = 2; i < argMaxPrime; i++)
                if (al[i])
                    sieve2Return.Add(i);

            sieve2Return.TrimExcess();
            return sieve2Return.ToArray();
        }

        public static bool IsPrime(int number)
        {
            int boundary = (int)Math.Floor(Math.Sqrt(number));

            if (number == 1) return false;
            if (number == 2) return true;

            for (int i = 2; i <= boundary; ++i)
            {
                if (number % i == 0) return false;
            }

            return true;
        }
    }
}