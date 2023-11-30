string cadena;
// int factorial; // Int32 = De -2.147.483.648 a 2.147.483.647
Byte factorial; // Byte = De 0 a 255;
// ulong factorial; // UInt64 = De 0 a 18.446.744.073.709.551.615
Console.WriteLine("Introduzce un número para calcular el factorial: (Entero 32 bits máximo 12, puedes probar con otros pero el resultado no es el correcto)");
cadena = Console.ReadLine();
factorial = Convert.ToByte(cadena);
bool error = false;

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
    Byte  i = Convert.ToByte(factorial - 1);
    Byte anterior;
    Byte cont = 0;
    while (i > 1)
    {
        anterior = factorial;
        try
        {
            checked
            {
                cont++;
                factorial *= i;
            }
        }
        catch (OverflowException o)
        {
            Console.WriteLine("Hubo un Desbordamiento de Entero en la Vuelta: {0}, Cuando se Multiplicó {1} x {2}.\n", cont, cadena, Convert.ToUInt32(cadena) - cont);
            Console.WriteLine("El Valor del Factorial Antes del Error era: {0}; y al Multiplicarlo x {1} Tomó el Valor: {2}", anterior, Convert.ToUInt32(cadena) - cont, factorial * (Convert.ToUInt32(cadena) - cont));
            i = 1;
            error = true;
        }
        i--;
    }
    if (!error)
    {
        Console.WriteLine("El factorial de " + cadena + " es " + factorial);
    }
}
Console.WriteLine("\nPresiona Enter Tecla Para Salir.");
Console.ReadKey();