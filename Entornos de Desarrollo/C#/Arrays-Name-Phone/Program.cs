namespace Arrays_Name_Phone
{
    internal class Program
    {
        static void Main(string[] args)
        {
            const int SIZE = 20; // Defino la Constante Entera SIZE y le asigno 20, será el tamaño de los array de nombres y teléfonos.
            int index = 0; // Defino el Entero Index y la Inicializo a 0, será el índice de los array.
            int i = 0; // Defino el Entero i y la Inicializo a 0, Será Hasta Donde Habrá que Buscar los Datos en la Agenda.
            string?[] names = new string[SIZE]; // Defino el Array de Strings names y creo un array de tamaño SIZE = 20.
            int[] phones = new int[SIZE]; // Defino el Array de Enteros phones y Creo un Array de tamaño SIZE = 20.
            string? name; // Defino la Variable string name, Será el Nombre a Buscar en el Array names.

            Console.WriteLine("Base de Datos Agenda"); // Título de la Aplicación.
            Console.WriteLine(""); // Salto de Línea.
            Console.Write("Por Favor Ingresa el Nombre de tu Contacto: "); // Pido que se Ingrese un Nombre a la Agenda.
            names[index] = Console.ReadLine(); // Leo el Nombre Desde el Teclado.
            while (index < SIZE && names[index] != "") // Mientras el Índice de los Array Index sea Menor que SIZE(20) y el Nombre Ingresado no sea una Cadena Vacia = "".
            {
                Console.Write("Por Favor Ingresa el Número de Teléfono: "); // Pido el Número de Teléfono.
                phones[index] = Convert.ToInt32(Console.ReadLine()); // Leo el Teléfono Desde el Teclado.
                Console.WriteLine(""); // Salto de Línea.
                index++; // Incremento index, el Índice de los Arrays.
                if (index < SIZE) // Compruebo si index Sigue Siendo Menor que el Tamaño de los Arrays.
                {
                    Console.Write("Por Favor Ingresa el Nombre de tu Contacto: "); // Si es Menor Pido el Nombre del Siguiente Contacto.
                    names[index] = Console.ReadLine(); // Lo Leo Desde el Teclado.
                }
            }
            Console.Clear(); // Limpio la Pantalla.
            Console.Write("Ingresa el Nombre a Buscar en la Agenda: "); // Pido el Nombre a Buscar en la Agenda.
            name = Console.ReadLine(); // Lo Leo Desde el Teclado.
            while (name != names[i] && i < index) // Mientras el Nombre Introducido sea Distinto que en Nombre en el Array names y el indice i sea menor que index - 1, el Índice de los Array - 1, Para Obtener la Última Posición.
            {
                i++; // Incremento i.
            }
            if (i < index) // Si al Salir del while i es menor que index - 1, Quiere Decir que se Encontró el Nombre en el Array names.
            {
                Console.WriteLine("El Contacto de Nombre: {0}, Tiene el Número de Teléfono: {1}", name, phones[i]); // Muestro que al Contacto con nombre name, le Corresponde el Número de Teléfono que está en el array phones[i].
                Console.WriteLine("Deseas Agregar Otro Contacto. Pulsa 's' Para Continuar Caulquier Otra Tecla Para Salir."); // Pregunto si Desea Agregar Otro Contacto.
                Console.ReadKey(); // Espero la Pusación de una Tecla.
            }
            else // Si no, Si i llego a la Última Posición del Array names.
            {
                Console.WriteLine("En Nombre Buscado no está en tu Agenda. Deseas Agregar el Contacto? Pulsa s Para Agregarlo, Cualquier Otra Tecla Para Salir."); // Muestro que el Nombre Buscado no Está en el Array names.
                Console.ReadKey(); // Espero la Pusación de una Tecla.
            }
            Console.WriteLine("Era Broma, Pulsa Cualquier Tecla Para Salir."); // Muestro Era Una Broma.
            Console.ReadKey(); // Espero la Pusación de una Tecla y al Presionar Sale del Programa..
        }
    }
}