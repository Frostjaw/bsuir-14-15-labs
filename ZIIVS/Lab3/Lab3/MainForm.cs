using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Text.RegularExpressions;

namespace Lab3
{
    public partial class MainForm : Form
    {
        const String divider = "01";
        const String inputFilePath = "input.txt";

        String[] inputText;
        String[] encodedText;
        String[] decodedText;
        Int32 inputSize;

        Dictionary<Char, Double> frequencies;
        Dictionary<Char, String> codingTable;

        public MainForm()
        {
            InitializeComponent();
            Reset();
        }

        private void Reset()
        {
            encodedText = null;
            decodedText = null;
            frequencies = null;
            codingTable = null;
            inputText = File.ReadAllLines(inputFilePath);
            inputSize = 0;

            for (int i = 0; i < inputText.Length; i++)
            {
                inputSize += (inputText[i].Length == 0) ? 1 : inputText[i].Length;
            }

            inputTextBox.Lines = inputText;

            dataGridView1.Rows.Clear();

            inputTextLabel.Text = "Input text: " + inputSize + " bytes";
            encodedTextLabel.Text = "Encoded text: ";
            decodedTextLabel.Text = "Decoded text: ";
            encodedTextBox.Clear();
            decodedTextBox.Clear();
            encodeButton.Enabled = true;
            decodeButton.Enabled = false;
        }

        private void resetButton_Click(object sender, EventArgs e)
        {
            Reset();
        }

        private void encodeButton_Click(object sender, EventArgs e)
        {
            frequencies = GetCharFrequenciesFromFile(inputFilePath);
            codingTable = GetCodingTableFromFrequencies(frequencies);

            List<String> encodedStrings = new List<String>();

            Int32 outputSize = 0;

            List<String> encodedTextBoxLines = new List<String>();
            for (int i = 0; i < inputText.Length; i++)
            {
                encodedStrings.Add(EncodeStringWithCodingTable(inputText[i], codingTable));
                outputSize += encodedStrings.Last().Length;
            }

            encodedText = encodedStrings.ToArray();

            encodedTextBox.Lines = encodedStrings.ToArray();

            foreach (Char c in frequencies.Keys.ToArray())
            {
                dataGridView1.Rows.Add(c, codingTable[c], frequencies[c]);
            }

            encodedTextLabel.Text = "Encoded text: " + outputSize / 8 + " bytes (compress rate " + (int)((1 - ((double)(outputSize / 8) / inputSize)) * 100) + "%)";
            encodeButton.Enabled = false;
            decodeButton.Enabled = true;
        }

        private void decodeButton_Click(object sender, EventArgs e)
        {
            List<String> decodedText = new List<string>();
            Int32 decodedSize = 0;

            for (int i = 0; i < encodedText.Length; i++)
            {
                decodedText.Add(DecodeStringWithCodingTable(encodedText[i], codingTable));
                decodedSize += decodedText.Last().Length;
            }

            decodedTextBox.Lines = decodedText.ToArray();

            decodedTextLabel.Text = "Decoded text: " + decodedSize + " bytes";
            decodeButton.Enabled = false;
        }

        #region Logic

        
        static List<String> GetCodesFromJacksonCounter(int count)
        {
            List<String> codes = new List<string>();

            int currentCodeLength = 1;

            for (int i = 0; i < count; i++)
            {
                String code = new String('0', currentCodeLength);

                for (int j = 0; j < code.Length + 1; j++)
                {
                    if ((code.Length < divider.Length || code.Substring(0, divider.Length) != divider) && codes.Count < count)
                    {
                        codes.Add(code);
                        code = shiftString(code);
                    }
                    else
                    {
                        break;
                    }
                }

                if (!(codes.Count < count))
                {
                    break;
                }

                currentCodeLength++;
            }

            return codes;
        }

        static String shiftString(String s)
        {
            String result = "1";

            for (int i = 1; i < s.Length; i++)
            {
                result += s[i - 1];
            }

            return result;
        }

        static String EncodeStringWithCodingTable(String s, Dictionary<Char, String> codingTable)
        {
            String result = "";

            if (s.Length == 0)
            {
                s = "\n";
            }

            for (int i = 0; i < s.Length; i++)
            {
                result += codingTable[s[i]];

                if (i != s.Length - 1)
                {
                    result += divider;
                }
            }

            return result;
        }

        static String DecodeStringWithCodingTable(String s, Dictionary<Char, String> codingTable)
        {
            String result = "";

            String[] encodedCharacters = Regex.Split(s, divider);

            foreach (String encodedCharacter in encodedCharacters)
            {
                if (codingTable.ContainsValue(encodedCharacter))
                {
                    foreach (Char c in codingTable.Keys.ToArray())
                    {
                        if (codingTable[c] == encodedCharacter)
                        {
                            result += c;
                            break;
                        }
                    }
                }
            }

            return result;
        }

        static Dictionary<Char, String> GetCodingTableFromFrequencies(Dictionary<Char, Double> frequencies)
        {
            Dictionary<Char, String> codingTable = new Dictionary<Char, String>();

            List<String> codes = GetCodesFromJacksonCounter(frequencies.Keys.Count);

            List<KeyValuePair<Char, Double>> sortedFrequencies = (from entry in frequencies orderby entry.Value descending select entry).ToList();

            for (int i = 0; i < sortedFrequencies.Count; i++)
            {
                codingTable[sortedFrequencies[i].Key] = codes[i];
            }

            return codingTable;
        }

        static Dictionary<Char, Double> GetCharFrequenciesFromFile(String path)
        {
            Dictionary<Char, Double> frequencies = new Dictionary<Char, Double>();

            StreamReader stream = File.OpenText(path);
            Int32 streamLength = 0;

            while (!stream.EndOfStream)
            {
                String line = stream.ReadLine();

                if (line.Length == 0)
                {
                    line = "\n";
                }

                streamLength += line.Length;

                for (int i = 0; i < line.Length; i++)
                {
                    Char c = line[i];

                    if (frequencies.ContainsKey(c))
                    {
                        frequencies[c] = frequencies[c] + 1;
                    }
                    else
                    {
                        frequencies[c] = 1;
                    }
                }
            }

            stream.Close();

            Array keys = frequencies.Keys.ToArray();

            foreach (Char c in keys)
            {
                frequencies[c] = frequencies[c] / (Double)streamLength;
            }

            return frequencies;
        }

        static Dictionary<Char, Double> GetCharFrequenciesFromString(String s)
        {
            Dictionary<Char, Double> frequencies = new Dictionary<Char, Double>();

            for (int i = 0; i < s.Length; i++)
            {
                Char c = s[i];

                if (frequencies.ContainsKey(c))
                {
                    frequencies[c] = frequencies[c] + 1;
                }
                else
                {
                    frequencies[c] = 1;
                }
            }

            Array keys = frequencies.Keys.ToArray();

            foreach (Char c in keys)
            {
                frequencies[c] = frequencies[c] / (Double)s.Length;
            }

            return frequencies;
        }

        static String NormalizedString(String s)
        {
            String result = "";

            for (int i = 0; i < s.Length; i++)
            {
                Char c = s[i];

                if ((c >= 'а' && c <= 'я') || (c >= '0' && c <= '9'))
                {
                    result += c;
                }
                else if (c >= 'А' && c <= 'Я')
                {
                    result += (Char)(c - ('А' - 'а'));
                }
            }
    
            return result;
        }

        #endregion
    }
}
