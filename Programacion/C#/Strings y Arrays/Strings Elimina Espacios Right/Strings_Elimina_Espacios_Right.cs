namespace Strings_Elimina_Espacios_Right
{
    internal class Strings_Elimina_Espacios_Right
    {
        static void Main(string[] args)
        {
            string cadena;
            string final = "";
            int i = 0;
            int j = 0;

            Console.WriteLine("Este Programa Elimina los Espacios en Blanco al Final de la Cadena.\n");
            Console.Write("Escribe una Palabra con Espacios en Blanco Detrás: ");
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
