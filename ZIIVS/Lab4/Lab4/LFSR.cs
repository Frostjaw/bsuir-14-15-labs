using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab4
{
    class LFSR
    {
        private String state;
        private String polynom;

        public LFSR(String polynom, String initialState = null)
        {
            if (initialState != null && initialState.Length != polynom.Length)
            {
                throw new ArgumentException();
            }

            this.state = initialState != null ? (String)initialState.Clone() : new String('0', polynom.Length);
            this.polynom = (String)polynom.Clone();
        }
        
        public String[] GenerateStates(Int32 numberOfStates)
        {
            List<String> states = new List<string>();

            while (numberOfStates > 0)
            {
                states.Add(state);
                Next();
                numberOfStates--;
            }

            return states.ToArray();
        }

        public void Next()
        {
            StringBuilder nextStateBuilder = new StringBuilder();

            nextStateBuilder.Append(CalculateNewValue());

            for (int i = 0; i < state.Length - 1; i++)
            {
                nextStateBuilder.Append(state[i]);
            }

            state = nextStateBuilder.ToString();
        }

        private Char CalculateNewValue()
        {
            bool newValue = false;

            for (int c = 0; c < polynom.Length; c++)
            {
                if (polynom[c] == '1')
                {
                    newValue ^= state[c] == '1' ? true : false;
                }
            }

            return newValue ? '1' : '0';
        }
    }
}
