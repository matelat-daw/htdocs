namespace Par_Impar
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int num;
            Console.WriteLine("Este Programa te dirá si el Número que Ingreses por Teclado es Par o Impar.");
            Console.WriteLine("");
            Console.Write("Ingresa un Número Entero: ");
            num = Convert.ToInt32(Console.ReadLine());
            if (num % 2 == 0 )
            {
                Console.WriteLine("El Número: {0} es Par.", num);
            }
            else
            {
                Console.WriteLine("Ese Número: {0} es Impar.", num);
            }
            Console.WriteLine("");
            Console.WriteLine("Pulsa Enter Para Salir.");
            Console.ReadKey(); // Si Escribo Aquí, Lo veo Aquí. Y VUelvo Aquí.
        }
    }
}