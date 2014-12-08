using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab4
{
    abstract class Matrix
    {

        public abstract Int32 numberOfRows { get; }
        public abstract Int32 numberOfColumns { get; }

        public abstract Int32 this[int i, int j] { get; set; }
    }
}
