namespace ThreeD_Array
{
    internal class ThreeD
    {
        static void Main(string[] args)
        {
            double[][][] alturas =
            {
                new double[][] // Curso 1º
                {
                    new double[]
                    {
                        1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.81
                    },
                    new double[]
                    {
                        1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.83
                    },
                },
                new double[][] // Curso 2º
                {
                    new double[]
                    {
                        1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.82
                    },
                    new double[]
                    {
                        1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.83
                    },
                },
                new double[][] // Curso 3º
                {
                    new double[]
                    {
                        1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.83
                    },
                    new double[]
                    {
                        1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.83
                    },
                },
                new double[][] // Curso 4º
                {
                    new double[]
                    {
                        1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.84
                    },
                    new double[]
                    {
                        1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.83
                    }
                }
            };

            Console.WriteLine("Tabla Tri Dimensional");
            double alto = 0;
            int rMax = -1;
            int cursoMax = -1;
            int altMax = -1;
            for (int curso = 0; curso < alturas.Length; curso++)
            {
                for (int r = 0; r < alturas[curso].Length; r++)
                {
                    for (int i = 0; i < alturas[curso][r].Length; i++)
                    {
                        if (alturas[curso][r][i] > alto)
                        {
                            alto = alturas[curso][r][i];
                            cursoMax = curso + 1;
                            rMax = r;
                            altMax = i;

                        }
                    }
                }
            }
            Console.WriteLine("La Altura del Alumo de {0}º de la Eso más alto es: {1}", cursoMax, alto);
            //if (rMax == 1)
            //{
            //    Console.WriteLine("Y el Alumno es Repetidor");
            //}
            //else
            //{
            //    Console.WriteLine("Y el Alumno No es Repetidor");
            //}
            Console.WriteLine("Y el Alumno {0}s Repetidor", rMax == 0? "No e" : "E"); // Operador Ternario, Reemplaza a las Líneas de Arriba.
        }
    }
}