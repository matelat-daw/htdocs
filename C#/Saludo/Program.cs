namespace Saludo;
class Program
{
    static void Main(string[] args)
    {
        // string? linea;
        string? key;
        // int number;
        Double result = 0.0;
        int num1;
        int num2;
        int operand;
        bool salir = false;

        while (!salir)
        {
            // Console.WriteLine("Este Ejercicio Pide la Introducción de un Nombre y escribe Hola y el Nombre Introdcido.");
            // Console.Write("Introduce tu Nombre: ");
            // name = Console.ReadLine();
            // Console.WriteLine("Hola " + name);

            // Console.Write("Este Ejercicio Pide un Número por Teclado, lo Incrementa en 1 y Muestra el Resultado por Pantalla.");
            // Console.Write("Ingresa un Número: ");
            // linea = Console.ReadLine();
            // number = Convert.ToInt32(linea);
            // Console.WriteLine("El Número " + number + " = " + (number + 1));

            // Tercer Ejercicio Calculadora
            Console.WriteLine("Esta es una Calculadora con la Operaciones Básicas");
            Console.Write("Ingresa un Número: ");
            num1 = Convert.ToInt32(Console.ReadLine());
            Console.Write("Ingresa el Operando: ");
            operand = Console.ReadKey().KeyChar;
            Console.WriteLine("");
            Console.Write("Ingresa el Otro Número: ");
            num2 = Convert.ToInt32(Console.ReadLine());
            switch (operand)
            {
                case 42:
                    result = num1 * num2;
                    break;
                case 43:
                    result = num1 + num2;
                    break;
                case 45:
                    result = num1 - num2;
                    break;
                default:
                    if (num2 != 0)
                    {
                        result = num1 / num2;
                    }
                    break;
            }
            Console.WriteLine("El resultado es: " + result);
            Console.WriteLine("Quieres Realizar Otra Operación?. escribe s para continuar, cualquier otra para salir:");
            key = Console.ReadLine();
            Console.Clear();
            salir = key != "s";
        }
    }
}