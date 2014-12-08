using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Numerics;

namespace Lab4
{
    class CMatrix : Matrix
    {
        private Int32[,] internalMatrix;

        public CMatrix(Int32 size)
        {
            internalMatrix = new Int32[size, size];

            for (int k = 0; k < size; k++)
            {
                for (int n = 0; n < size; n++)
                {
                    if (n >= k)
                    {
                        internalMatrix[n, k] = (Int32)(Factorial(n) / (Factorial(k) * Factorial(n - k)));
                    }
                    else
                    {
                        internalMatrix[n, k] = 0;
                    }
                }
            }
        }

        private BigInteger Factorial(BigInteger number)
        {
            return number < 2 ? 1 : number * Factorial(number - 1);
        }

        public override int numberOfRows
        {
            get { return internalMatrix.GetLength(0); }
        }

        public override int numberOfColumns
        {
            get { return internalMatrix.GetLength(1); }
        }

        public override Int32 this[int i, int j]
        {
            get { return internalMatrix[i, j] % 2; }
            set { }
        }

    }
}
