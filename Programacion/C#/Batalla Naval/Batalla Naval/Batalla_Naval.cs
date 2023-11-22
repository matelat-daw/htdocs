using System.Xml.Linq;
using System;

namespace Batalla_Naval
{
    internal class Batalla_Naval
    {
        static void Main(string[] args)
        {
            const int SIZE = 10; // Defino la Constante SIZE y le Asigno el Valor 10, ya que el Tablero es de 10 x 10.
            string coord = " "; // String coord Recibirá la Soordenada.
            char[,] agua = new char[SIZE, SIZE]; // Array que Contiene el Agua, Se Muestra al Jugador.
            char[,] tablero = new char[SIZE, SIZE]; // Array que Contiene los Barcos.
            int[] cont = new int[2]; // Contador Para Saber si se han Hundido los Barcos, la Posición 0 es para el Barco 1 y la Posición 1 para el Barco 2.
            bool win = false; // Para Saber si el Jugador Gano o Salió sin Jugar.

            for (int i = 0; i < SIZE; i++) // Doble Bucle Para Dibujar el Agua y el Tablero, El Bucle Externo Dibuja las Filas.
            {
                for (int j = 0; j < SIZE; j++) // Bucle Interno Dibuja las Columnas.
                {
                    agua[i, j] = '~'; // Dibujo Agua.
                    tablero[i, j] = '~'; // Dibujo Agua.
                }
            }

            for (int i = 0; i < 4; i++) // Bucle Hasta 4 (de 0 a 3) Para el Barco Grande.
            {
                tablero[2 + i, 3] = 'H'; // Lo Pongo a Partir de la Posición D3 Verticalmente en el Tablero.
            }

            for (int i = 0; i < 3; i++) // Bucle Hasta 3 (de 0 a 2) Para el Barco Pequeño.
            {
                tablero[7, 6 + i] = 'H'; // Lo Pongo a Partir de la Posición G8 Horizontalmente en el Tablero.
            }
            Console.WriteLine("Juego de la Batalla Naval.\n"); // Muestro El Título del Juego.
            Console.WriteLine();
            Console.Write("\t"); // Comienzo haciedno tab en la Línea de las Letras.
            for (int i = 0; i < SIZE; i++) // Bucle para Mostrar las Letras de la A a la J (10 Letras).
            {
                Console.Write("{0} ", Convert.ToChar('A' + i)); // Las Muestro en la Pantalla Dejando un Espacio Entre Letra y Letra.
            }
            Console.WriteLine("\n"); // Hago un Salto de Línea.
            for (int i = 0; i < SIZE; i++) // Bucle Externo que Muestra los Números Verticales y el Agua.
            {
                Console.Write("{0}\t", i + 1); // Muestro los Números de 1 a 10 y agrego una tabulación.
                for (int j = 0; j < SIZE; j++) // Bucle Interno.
                {
                    Console.Write("{0} ", agua[i, j]); // Muestro el agua.
                }
                Console.WriteLine(); // Hago un Salto de Línea.
            }
            while (coord != "") // Mientras la Coordenada Ingresada sea Distinta de "".
            {
                Console.Write("\nIngresa las Coordenadas en el Formato: A1 o B5 o F7, etc.: "); // Muestro un Aviso Pidiendo la Coordenada.
                coord = Console.ReadLine(); // Asigno a coord la entrada por Teclado.
                Console.Clear(); // Limpio la Pantalla por si en la Primera Entrada el Jugador Acierta.
                switch (coord) // Hago un switch a la Coordenada.
                {
                    case "D3": // Aquí tengo solo las Coordenadas Donde Están Ubicados los dos Barcos.
                        agua[2, 3] = '*'; // Si Introduce Alguna de las Coordenadas, Dibujo un Asterisco en la Casilla que Ocupa el Barco.
                        cont[0]++; // Incremento el Contador de Barco 1 Tocado.
                        break;
                    case "D4":
                        agua[3, 3] = '*';
                        cont[0]++;
                        break;
                    case "D5":
                        agua[4, 3] = '*';
                        cont[0]++;
                        break;
                    case "D6":
                        agua[5, 3] = '*';
                        cont[0]++;
                        break;
                    case "G8":
                        agua[7, 6] = '*';
                        cont[1]++; // Aquí Incremento el Contador de Barco 2 Tocado.
                        break;
                    case "H8":
                        agua[7, 7] = '*';
                        cont[1]++;
                        break;
                    case "I8":
                        agua[7, 8] = '*';
                        cont[1]++;
                        break;
                }
                Console.WriteLine();
                Console.Write("\t");
                for (int i = 0; i < SIZE; i++) // Bucle para Mostrar las Letras.
                {
                    Console.Write("{0} ", Convert.ToChar('A' + i)); // Muestro las Letras de la A a la J.
                }
                Console.WriteLine("\n"); // Hago dos Saltos de Línea.
                for (int i = 0; i < SIZE; i++) // Doble Bucle para Mostrar el Tablero con los Asteriscos si el Jugador ha Acertado Alguna Casilla Donde Está Alguno de los Barcos.
                {
                    Console.Write("{0}\t", i + 1); // Muestro los Números de Línea.
                    for (int j = 0; j < SIZE; j++) // Bucle Interno.
                    {
                        Console.Write("{0} ", agua[i, j]); // Muestro el Tablero ya con los Posibles Asteriscos si el Jugador ha Acertado Alguna Posición de los Barcos.
                    }
                    Console.WriteLine();
                }
                if (cont[0] == 4 && cont[1] == 3) // Verifico si Ambos Contadores Llegaron al Máximo Valor (El Tamaño de los Barcos.)
                {
                    coord = ""; // Si ya se Hundieron los dos Barcos, asigno a coord "", Para Salir del Juego.
                    win = true; // Pongo win a true, EL Jugador ha Ganado.
                    Console.WriteLine("Impresionante! Has Ganado.\n"); // Muestro que ha Ganado.
                    Console.WriteLine("Presiona Cualquier Tecla para Salir.\n"); // Pido Cualquier tecla para Salir.
                    Console.ReadKey(); // Espero que se Presione unTecla.
                }
            }
            if (!win) // Al Salir, si NO ha Ganado.
            {
                Console.WriteLine("\nLa Flota Estaba en Estas Posiciones: \n"); // Muestro el Aviso: La Flota estaba en:
                for (int i = 0; i < SIZE; i++) // Bucle Externo para Mostrar el Tablero Original.
                {
                    Console.Write("{0}\t", i + 1); // Muestro los Números de Línea.
                    for (int j = 0; j < SIZE; j++) // Bucle Interno para Mostrar el Tablero Original.
                    {
                        Console.Write("{0} ", tablero[i, j]); // Muestro el Tablero Original con los Barcos en sus Posiciones.
                    }
                    Console.WriteLine("");
                }
                Console.Write("\n\t");
                for (int i = 0; i < SIZE; i++) // Bucle para Mostrar las Letras.
                {
                    Console.Write("{0} ", Convert.ToChar('A' + i)); // Muestro las Letras de la A a la J.
                }
            }
        }
    }
}