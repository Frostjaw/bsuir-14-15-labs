using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab4
{
    class Program
    {
        static void Main(string[] args)
        {
            String polynom = "101";
            // 1 + x + x^3 => "101"
            Int32 matrixSize = (Int32)Math.Pow(2, polynom.Length);

            LFSR lfsr = new LFSR(polynom, "100");

            String [] states = lfsr.GenerateStates((int)Math.Pow(2, polynom.Length) - 1);

            Console.WriteLine("States:");
            for (int i = 0; i < states.Length; i++) {
                 Console.WriteLine((i + 1) + ". " + states[i]);
            }
            Console.WriteLine();

            Matrix tMatrix = new TMatrix(matrixSize, states);
            Console.WriteLine("Matrix T:\n");
            PrintMatrix(tMatrix);
            Console.WriteLine();

            Matrix cMatrix = new CMatrix(matrixSize);
            Console.WriteLine("Matrix C:\n");
            PrintMatrix(cMatrix);
            Console.WriteLine();

            Matrix lMatrix = MatrixMath.Multiply(MatrixMath.Transpose(cMatrix), tMatrix);
            lMatrix = MatrixMath.Multiply(lMatrix, MatrixMath.Transpose(cMatrix));
            lMatrix = MatrixMath.Mod(lMatrix, 2);
            Console.WriteLine("Matrix L:\n");
            PrintMatrix(lMatrix);

            // Check linearity
            Boolean isLinear = CheckLinearity(lMatrix, polynom.Length);

            Console.WriteLine("\n" + (isLinear ? "Linear" : "Not linear"));

            Console.WriteLine("\n\nPress any key...");
            Console.ReadKey();
        }

        static bool CheckLinearity(Matrix lMatrix, int l)
        {
            bool isLinear = true;
            int rowIndex = (int)Math.Pow(2, l - 1);
            List<double> twos = new List<double>();
            for (int i = 0; i < l; i++)
            {
                twos.Add(Math.Pow(2, i));
            }
            for (int i = 0; i < Math.Pow(2, l); i++)
            {
                if ((!twos.Contains(i) && lMatrix[rowIndex, i] != 0) || (twos.Contains(i) && lMatrix[rowIndex, i] == 0))
                {
                    isLinear = false;
                    break;
                }
            }
            return isLinear;
        }

        static void PrintMatrix(Matrix matrix)
        {
            int columnWidth = 1;

            for (int i = 0; i < matrix.numberOfRows; i++)
            {
                for (int j = 0; j < matrix.numberOfColumns; j++)
                {
                    String elementString = matrix[i, j].ToString();

                    if (elementString.Length > columnWidth) columnWidth = elementString.Length;
                    if (i.ToString().Length > columnWidth) columnWidth = i.ToString().Length;
                }
            }

            columnWidth += 1;

            Console.Write(StringWithPadding(" ", columnWidth));
            for (int i = 0; i < matrix.numberOfColumns; i++)
            {
                Console.Write(StringWithPadding(i.ToString(), columnWidth));
            }

            Console.WriteLine();
            for (int i = 0; i < matrix.numberOfRows; i++)
            {
                Console.Write(StringWithPadding(i.ToString(), columnWidth));

                for (int j = 0; j < matrix.numberOfColumns; j++)
                {
                    Console.Write(StringWithPadding(matrix[i, j].ToString(), columnWidth));
                }
                Console.WriteLine();
            }
        }

        static String StringWithPadding(String s, Int32 padding)
        {
            StringBuilder resultBuilder = new StringBuilder();
            resultBuilder.Append(s);
            for (int j = 0; j < padding - s.Length; j++)
            {
                resultBuilder.Append(" ");
            }
            return resultBuilder.ToString();
        }
    }
}
