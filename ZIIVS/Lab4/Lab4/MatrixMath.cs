using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab4
{
    class MatrixMath
    {
        public static Matrix Transpose(Matrix m)
        {
            Int32Matrix result = new Int32Matrix(m.numberOfRows, m.numberOfColumns);

            for (int i = 0; i < m.numberOfRows; i++)
            {
                for (int j = 0; j < m.numberOfColumns; j++)
                {
                    result[i, j] = m[j, i];
                }
            }

            return result;
        }

        public static Matrix Mod(Matrix m, Int32 modulus)
        {
            Int32Matrix result = new Int32Matrix(m.numberOfRows, m.numberOfColumns);

            for (int i = 0; i < m.numberOfRows; i++)
            {
                for (int j = 0; j < m.numberOfColumns; j++)
                {
                    result[i, j] = m[i, j] % modulus;
                }
            }

            return result;
        }

        public static Matrix Multiply(Matrix A, Matrix B)
        {
            int rA = A.numberOfRows;
            int cA = A.numberOfColumns;
            int rB = B.numberOfRows;
            int cB = B.numberOfColumns;
            Int32 temp = 0;
            Int32Matrix kHasil = new Int32Matrix(rA, cB);

            if (cA != rB)
            {
                throw new ArgumentException();
            }

            for (int i = 0; i < rA; i++)
            {
                for (int j = 0; j < cB; j++)
                {
                    temp = 0;
                    for (int k = 0; k < cA; k++)
                    {
                        temp += A[i, k] * B[k, j];
                    }
                    kHasil[i, j] = temp;
                }
            }
            return kHasil;
        }
    }
}
