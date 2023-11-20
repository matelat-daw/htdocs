// See https://aka.ms/new-console-template for more information

int num;

Console.Write("Introduce un Número por teclado y te Diré si es Par o Impar: ");
num = Convert.ToInt32(Console.ReadLine());
if (num % 2 == 0)
{
    Console.WriteLine("El Número: {0} es Par.", num);
}
else
{
    Console.WriteLine("Ese Número es Impar.");
}
Console.WriteLine("Presiona Enter Para Salir");
Console.ReadKey();