namespace SumaDigitos;
class SumaDigitos
{
    static void Main(string[] args)
    {
        int num, tmp, numOrig = 0;
        int total = 0;
        string? salir = "s";

        while (salir == "s")
        {
            Console.WriteLine("Este Programa Suma todos los Dígitos de un Número Ingresado por Teclado.");
            Console.Write("Ingresa un Número: ");
            num = numOrig =  Convert.ToInt32(Console.ReadLine());
            while (num > 0)
            {
                tmp = num % 10;
                total += tmp;
                num /= 10;
            }
            Console.WriteLine("El Total de la Suma de {0} es: {1}", numOrig, total);
            total = 0;

            //string? num;
            //Console.WriteLine("Este Programa Suma todos los Dígitos de un Número Ingresado por Teclado.");
            //Console.Write("Ingresa un Número: ");
            //num = Console.ReadLine();
            //for (int i = 0; i < num.Length; i++)
            //{
            //    total += num[i] - 48;
            //}
            //Console.WriteLine("El Total es: {0}", total);
            //total = 0;

            Console.Write("Deseas Realizar Otro Calculo?. Ingresa s para Continuar, Enter para salir: ");
            salir = Console.ReadLine();
            Console.Clear();
        }
    }
}