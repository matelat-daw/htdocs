namespace Ejercicio_3_Calculo;
class Inverte
{
    static void Main(string[] args)
    {
        int num1;
        int num2;
        int tmp;

        Console.WriteLine("Este Programa Invierte dos Números que se Piden por Teclado.");
        Console.Write("Ingresa el Primer Número: ");
        num1 = Convert.ToInt32(Console.ReadLine());
        Console.Write("Ingresa el Segundo Número: ");
        num2 = Convert.ToInt32(Console.ReadLine());
        tmp = num1;
        num1 = num2;
        num2 = tmp;
        Console.WriteLine("El Resultado es: " + num1 + " Y " + num2);
    }
}