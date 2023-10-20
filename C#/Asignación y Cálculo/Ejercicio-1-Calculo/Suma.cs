namespace Ejercicio_1_Calculo;
class Suma
{
    static void Main(string[] args)
    {
        int num1;
        int num2;

        Console.WriteLine("Este Programa Suma dos Números que se Piden por Teclado.");
        Console.Write("Ingresa el Primer Número: ");
        num1 = Convert.ToInt32(Console.ReadLine());
        Console.Write("Ingresa el Segundo Número: ");
        num2 = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("El resultdo es: " + (num1 + num2));
    }
}