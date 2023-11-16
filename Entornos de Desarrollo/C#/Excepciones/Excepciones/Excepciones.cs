﻿namespace Excepsiones
{
    internal class Excepciones
    {
        static void Main(string[] args)
        {
            int edad;
            int zero;

            Console.WriteLine("Este Programa Controla la Excepción de la División por 0");
            Console.Write("Ingresa tu Edad: ");
            edad = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine();
            Console.Write("Ingresa el 0: ");
            zero = Convert.ToInt32(Console.ReadLine());
            try
            {
                Console.WriteLine("El Resultado de Dividir tu Edad, {0} por 0 es: ", edad / zero);
            }
            catch (Exception error)
            {
                Console.WriteLine("Hubo un Error al Intentar Dividir por 0, el Error es: {0}", error);
                // return;
                Environment.Exit(1);
            }
            finally
            {
                Console.WriteLine("Tu Edad es: {0}", edad);
            }
        }
    }
}