using System;

// Para Compilar el Código: mcs -out:main.exe main.cs
// Para Ejecutarlo: mono main.exe

namespace Edades
{
public class Edades
{

public static void Main(string[] args)
{
int num;
int ages = 1; // Solo muestra el número de edad ingresada.
int counter = 0;
Console.WriteLine("Ingresa las Edades de las Personas");
Console.WriteLine("");

do{
Console.Write("Edad{0}: ", ages); // Muestra Edad1:, Edad2:, etc.
num = Convert.ToInt32(Console.ReadLine());
if (num >= 14 && num <= 20)
{
counter++;
}
ages++; // Incrementa el número de Edad a ingresar.
}
while (num != 999);
if (counter == 3 || counter == 13 || counter == 23 || counter == 33) // Esto puede llegar hasta el máximo admitido por el micro procesador en el número terminado en 3.
{
Console.WriteLine("¡Qué Casualidad!");
}
else
{
Console.WriteLine("En Total Hay: {0} Personas de Entre 14 y 20 años.", counter);
}
}
}
}