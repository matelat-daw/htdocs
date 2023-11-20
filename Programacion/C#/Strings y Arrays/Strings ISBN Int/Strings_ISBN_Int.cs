namespace Strings_ISBN_Int
{
    internal class Strings_ISBN_Int
    {
        static void Main(string[] args)
        {
            long isbn; // = "9783880531086" Un ISBN Valido.
            long total = 0; // Sumatoria de los Dígitos de ISBN.
            long controlOk; // Dígito de Control OK.
            long control;
            int cont = 1;
            long digit; // Almacena Temporalmente el Resto de la División entre 10 y luego el Último Digito del ISBN, que es el Dígito de Control.

            Console.Write("Por Favor Ingresa los 13 Dígitos del ISBN de tu Libro sin Signos ni Espacios en Blanco: ");
            isbn = Convert.ToInt64(Console.ReadLine());
            control = isbn % 10;
            isbn = isbn / 10;
            while (isbn > 0)
            {
                if (cont % 2 == 0)
                {
                    total += isbn % 10;
                }
                else
                {
                    total += (isbn % 10) * 3;
                }
                isbn /= 10;
                cont++;
            }

            digit = total % 10; // Asigno a digit el Resto de la Suma de los Números del ISBN Dividido Entre 10
            controlOk = 10 - digit; // Obtengo el Número de Control, Restando el Resto a 10.
            if (controlOk == control) // Comparo si el Dígito de Control es igual al Último Número Introducido del ISBN.
            {
                Console.WriteLine("\nEl ISBN Introducido es Valido."); // Muestro ISBN Correcto.
            }
            else // Si no
            {
                Console.WriteLine("\nEl ISBN Introducido No es un ISBN Valido, el Dígito de Control no Corresponde con un ISBN Real."); // ISBN Incorrecto.
            }
        }
    }
}