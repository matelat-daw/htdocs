namespace Strings_Elimina_Espacios_Left
{
    internal class Strings_Elimina_Espacios
    {
        static void Main(string[] args)
        {
            string cadena;
            string final = "";
            int i = 0;
            int j = 0;

            Console.WriteLine("Este Programa Elimina los Espacios en Blanco de la Cadena (3 en 1).\n");
            Console.Write("Escribe una Palabra con Espacios en Blanco Delante, en Medio y Detrás: ");
            cadena = Console.ReadLine();
            Console.WriteLine();
            for (i = 0; i < cadena.Length; i++)
            {
                if (cadena[i] != ' ')
                {
                    final += cadena[i];
                }
            }
            Console.WriteLine("La Cadena Introduicida Queda: {0}", final);
        }
    }
}