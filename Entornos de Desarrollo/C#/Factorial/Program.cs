string cadena;
Int32 factorial;
Console.WriteLine("Introduzca un número para calcular el factorial: ");
cadena = Console.ReadLine();
factorial = Convert.ToByte(cadena);
if (factorial < 0)
{
    Console.WriteLine("No se puede calcular el factorial de un número negativo.");
}
if (factorial == 0)
{
    Console.WriteLine("El factorial de 0 es 1");
}
if (factorial > 0)
{
    int i = factorial - 1;
    while (i > 1)
    {
        factorial = factorial * i;
        i--;
    }
    Console.WriteLine("El factorial de " + cadena + " es: " + factorial);
}
Console.ReadKey();