namespace Ejercicio_4;

internal class Program
{
    static void Main(string[] args)
    {
        int num;
        int multiply;
        int result;
        string? key = "s";

        while (key == "s")
        {
            Console.Write("Ingresa un Número: ");
            num = Convert.ToInt32(Console.ReadLine());
            if (num > 15)
            {
                multiply = num * 3;
                result = multiply + 100;
            }
            else
            {
                multiply = num * 5;
                if (multiply > 20)
                {
                    result = multiply + 100;
                }
                else
                {
                    result = multiply + 200;
                }
            }
            Console.WriteLine("El resultado es: " + result);
            Console.WriteLine("Quieres Realizar Otra Operación?. escribe s para continuar, cualquier otra para salir:");
            key = Console.ReadLine();
            Console.Clear();
        }
    }
}