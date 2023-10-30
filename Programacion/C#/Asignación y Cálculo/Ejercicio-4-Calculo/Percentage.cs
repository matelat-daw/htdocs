namespace Ejercicio_4_Calculo;

class Percentage
{
    static void Main(string[] args)
    {
        int num1;
        int num2;
        int total;
        double girls;

        Console.WriteLine("Este Programa Calcula el Porcentage de Niñas y Niños Cuya cantidad se Ingresa por Teclado.");
        Console.Write("Ingresa el Número de Niñas: ");
        num1 = Convert.ToInt32(Console.ReadLine());
        Console.Write("Ingresa el Número de Niños: ");
        num2 = Convert.ToInt32(Console.ReadLine());
        total = (num1 + num2);
        girls = num1 * 100 / total;
        Console.WriteLine("La Cantidad Total de Niñas y Niños es: " + total);
        Console.WriteLine("El Porcentaje de Niñas es: " + girls);
        Console.WriteLine("Y el Porcentaje de Niños es: " + (100 - girls));
    }
}