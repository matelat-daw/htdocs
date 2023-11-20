namespace Strings_ISBN
{
    internal class Strings_ISBN
    {
        static void Main(string[] args)
        {
            const int SIZE = 13; // Tamaño de los ISBN Actuales.
            string isbn; // = "9783880531086" Un ISBN Valido.
            int total = 0; // Sumatoria de los Dígitos de ISBN.
            int controlOk; // Dígito de Control OK.
            int digit; // Almacena Temporalmente el Resto de la División entre 10 y luego el Último Digito del ISBN, que es el Dígito de Control.

            Console.Write("Por Favor Ingresa los 13 Dígitos del ISBN de tu Libro sin Signos ni Espacios en Blanco: ");
            isbn = Console.ReadLine();
            if (isbn.Length == SIZE) // Si el ISBN es de 13 Caracteres.
            {
                for (int i = 0; i < isbn.Length; i++) // Bucle al tamaño de ISBN.
                {
                    if (i % 2 == 0) // Los Valores Pares se suman Tal Cual.
                    {
                        if (i < 12) // Si no Llegó al Último Dígito Sigo Sumando.
                        {
                            total += Convert.ToInt32(isbn[i].ToString()); // Tengo que Convertir el Caracter en el array a String Antes de convertirlo a Int, si no Obtengo el Código ASCII del Caracter en el Array.
                        }
                    }
                    else // Los Impares se Suman Multiplicados * 3.
                    {
                        total += Convert.ToInt32(isbn[i].ToString()) * 3; // Caracter a String y Después a Int.
                    }
                }
                digit = total % 10; // Asigno a digit el Resto de la Suma de los Números del ISBN Dividido Entre 10
                controlOk = 10 - digit; // Obtengo el Número de Control, Restando el Resto a 10.
                digit = Convert.ToInt32(isbn[isbn.Length - 1].ToString()); // Caracter a String y Después a Int.
                if (controlOk == digit) // Comparo si el Dígito de Control es igual al Último Número Introducido del ISBN.
                {
                    Console.WriteLine("\nEl ISBN Introducido: {0} es Valido.", isbn); // Muestro ISBN Correcto.
                }
                else // Si no
                {
                    Console.WriteLine("\nEl ISBN Introducido: {0} No es un ISBN Valido, el Dígito de Control no Corresponde con un ISBN Real.", isbn); // ISBN Incorrecto.
                }
            }
            else // Si no es de 13 Caracteres.
            {
                Console.WriteLine("El Tamaño del ISBN no es Correcto, este Programa Solo Valida ISBN' s de 13 Dígitos."); // No se Pueden Validar ISBN Anteriores.
            }
        }
    }
}
