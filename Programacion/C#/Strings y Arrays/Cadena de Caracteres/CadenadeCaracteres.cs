namespace Cadena_de_Caracteres
{
    internal class CadenadeCaracteres
    {
        static void Main(string[] args)
        {
            char caracter;
            int size;

            Console.WriteLine("Este Programa Genera una Cadena de la Cantidad de Caracteres que Introduce el Usuario.\n");
            Console.Write("Presiona el Carácter que Contendrá la Cadena: ");
            caracter = Console.ReadKey().KeyChar;
            Console.WriteLine();
            Console.Write("Ingresa el Tamaño de la Cadena: ");
            size = Convert.ToInt32(Console.ReadLine());
            string[] cadena = new string[size];
            Console.Write("La Cadena Resultante es: ");
            for (int i = 0; i < cadena.Length; i++)
            {
                cadena[0] += caracter;
                // cadena[i] += caracter;
                // Console.Write("{0}", cadena[i]);
            }
            Console.Write("{0}", cadena);
            Console.WriteLine();
        }
    }
}
