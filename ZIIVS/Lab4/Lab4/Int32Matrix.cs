using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab4
{
    class Int32Matrix : Matrix
    {
        private Int32[,] internalMatrix;

        public Int32Matrix(Int32 rows, Int32 columns)
        {
            internalMatrix = new Int32[rows, columns];
        }

        public override int numberOfColumns
        {
            get { return internalMatrix.GetLength(1); }
        }

        public override int numberOfRows
        {
            get { return internalMatrix.GetLength(0); }
        }

        public override int this[int i, int j]
        {
            get
            {
                return internalMatrix[i, j];
            }
            set
            {
                internalMatrix[i, j] = value;
            }
        }
    }
}
