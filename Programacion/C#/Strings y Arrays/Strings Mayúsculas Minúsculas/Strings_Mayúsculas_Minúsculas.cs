using System.Text;

namespace Strings_Mayúsculas_Minúsculas
{
    internal class Strings_Mayúsculas_Minúsculas
    {
        static void Main(string[] args)
        {
            string frase;
            int[] qtty = new int[2];

            Console.WriteLine("Este Programa Pide una Cadena por Teclado y te Dirá Cuantas Letras Mayúsculas y Minúsculas Tiene.\n");
            Console.Write("Por Favor Ingresa una Frase: ");
            frase = Console.ReadLine();
            byte[] ascii = Encoding.ASCII.GetBytes(frase);
            for (int i = 0; i < frase.Length; i++)
            {
                if (ascii[i] >= 65 && ascii[i] <= 90)
                {
                    qtty[0]++;
                }
                else
                {
                    if (ascii[i] != 32)
                        qtty[1]++;
                }
            }
            Console.WriteLine("\nEn la Frase: {0}, Hay {1} Letras Mayúsculas y {2} Letras Minúsculas.", frase, qtty[0], qtty[1]);
        }
    }
}
