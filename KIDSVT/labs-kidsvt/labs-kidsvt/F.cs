using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace labs_kidsvt
{
    class F
    {
        public static bool f1(bool x1, bool x2)
        {
            return (x1 != x2);
        }

        public static bool f2(bool x3)
        {
            return !x3;
        }

        public static bool f3(bool x5, bool x6)
        {
            return !(x5 || x6);
        }

        public static bool f4(bool x4, bool f3, bool x7)
        {
            return (x4 || f3 || x7);
        }

        public static bool f5(bool f2, bool f4)
        {
            return !(f2 && f4);
        }

        public static bool f6(bool f1, bool f5)
        {
            return (f1 && f5);
        }

        public static bool f(bool x1, bool x2, bool x3, bool x4, bool x5, bool x6, bool x7)
        {
            return f6(f1(x1, x2), f5(f2(x3), f4(x4, f3(x5, x6), x7)));
        }
    }
}
