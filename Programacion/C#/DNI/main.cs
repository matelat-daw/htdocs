// Para Compilar el Código: mcs -out:dni.exe main.cs
// Para Ejecutarlo: mono dni.exe
using System;
internal class Program
{

    static void Main(string[] args)
    {
        string letters = "TRWAGMYFPDXBNJZSQVHLCKE";
        int letter;
        int num;

        Console.Write("Ingresa tu Número de D.N.I y te Diré la Letra: ");
        num = Convert.ToInt32(Console.ReadLine());
        letter = num % 23;
        Console.WriteLine("Tu D.N.I. es: {0}{1}", num, letters[letter]);
    }
}