using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab4
{
    class TMatrix : Matrix
    {
        private bool[,] internalMatrix;

        public TMatrix(Int32 size, String[] states = null)
        {
            internalMatrix = new bool[size, size];

            if (states != null)
            {
                for (int i = 0; i < states.Length - 1; i++)
                {
                    Int32 x = Convert.ToInt32(states[i], 2);
                    Int32 y = Convert.ToInt32(states[i + 1], 2);

                    internalMatrix[y, x] = true;
                }

                Int32 x2 = Convert.ToInt32(states[states.Length - 1], 2);
                Int32 y2 = Convert.ToInt32(states[0], 2);
                internalMatrix[y2, x2] = true;

            }
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
            get { return internalMatrix[i, j] ? 1 : 0; }
            set { }
        }
    }
}
