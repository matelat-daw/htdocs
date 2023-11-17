namespace Maximo_Entero
{
    internal class MaxEntero
    {
        static void Main(string[] args)
        {
            int num;
            uint num2;

            Console.WriteLine("Este Programa Muestra el Número Entero Más Grande que Soporta la ALU (UAL, Unidad Aritmético Lógica)");
            Console.Write("El Número Más Grande es: ");
            num = int.MaxValue;
            Console.WriteLine(num);
            Console.WriteLine("Ahora Voy a Incrementar el Número en 1, Presiona Cualquier Tecla para Continuar");
            Console.ReadKey();
            try
            {
                checked
                {
                    num++;
                }
            }
            catch (OverflowException e)
            {
                Console.WriteLine(e.Message);  // output: Arithmetic operation resulted in an overflow.
                num2 = (uint)num;
                num2++;
                Console.WriteLine("El Número Incrementado es: {0}", num2);
            }
        }
    }
}
