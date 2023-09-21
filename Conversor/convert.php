<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<header>
        <nav>
            <a href="index.php#view1">Inicio</a>
        </nav>
    </header>
</body>
</html>
<?php
if (isset($_POST["dsv"]))
{
    $file = $_POST["dsv"];
    $char = $_POST["delimiter"];
    $read = fopen($file, "r") or die("Unable to open file!"); // Prepara el archivo seleccionado para leerlo.
    if ($read) // Si el archivo existe.
    {
        $array = []; // Defino $array como un array, contendrá todos los valores.
        $index = 0; // Inicializo $index a 0.
        $array[$index] = []; // Asigno a $array[$index] un array, será un array bidimensional.
        while (($line = fgets($read)) !== false) // Mientras Lea Líneas del Archivo.
        {
            // $line = trim($line); // Hago un trim a $line para quitarle los saltos de línea, tabulaciones, espacios, etc.
            $array[$index] = explode($char, $line); // Exploto el contenido de la linea por el caracter ingresado en el array $array[$index], por ejemplo si hay 4 datos se guardan así: $array[0][0], $array[0][1], $array[0][2], $array[0][3].
            $index++; // Incremento $index.
        }
        for ($i = 0; $i < count($array); $i++)
        {
            for ($j = 0; $j < count($array[0]); $j++)
            {
                $array[$i][$j] = trim($array[$i][$j]);
            }
        }
        $result = []; // Asigno a $result un array.
        $counter = 1; // Empieza a guardar los datos desde la posición 1, ya que en la primera posición están los títulos.
        $longer = 0; // $longer será la cantidad total de datos.
        $index = 0; // $index contará la cantidad de datos por línea.
        $result[$longer] = ""; // Asigno a $resutl[$longer] vacio "", para poder concatenar datos.
        while ($counter < count($array)) // Mientras $counter sea menor que el tamaño del array $array que contiene todos los datos.
        {
            while ($index < count($array[0])) // Y mientras que $index sea menor que la cantidad de datos en cada array del array $array.
            {
                $result[$longer] .= "<" . $array[0][$index] . ">" . $array[$counter][$index] . "</" . $array[0][$index] . ">"; // Concateno en $result[$longer] el titulo que está en la posición 0 del array $array dentro de las posiciones 0, 1, 2, 3 en el caso de que sean 4 datos separados por el caracter delimitador($array[0][0], $array[0][1], $array[0][2], $array[0][3]).
                $index++; // Incremento $index;
                $longer++; // Incremento $longer.
            }
            $counter++; // Al salir de la segunda línea, incremento $counter, paso a la tercera línea.
            $index = 0; // Pongo $index a 0 lo reseteo para empezar a agregar los siguientes datos.
        }
        $save = fopen("result.xml", "w") or die("Unable to open file!"); // Declaro $save como un archivo de nombre result.xml para guardar.
        fwrite($save, '<?xml version="1.0" encoding="UTF-8"?>' . PHP_EOL); // Escribo en el archivo la linea con los datos del XML y un salto de línea al final.
        fwrite($save, '<data>' . PHP_EOL); // Escribo en el archivo la etiqueta <data>.
        while ($index < $longer) // Mientras $index que vale 0, sea menor que el tamaño total de datos $longer.
        {
            fwrite($save, '<each>' . PHP_EOL); // Escribo en el archivo la etiqueta <each>, cada dato que contiene el archivo con los valores separados por el delimitador.
            for ($i = 0; $i < count($array[0]); $i++) // Hago un bule desde 0 a la cantidad de datos en el array $array[0], cuneto la cantidad de títulos, ya que será la cantidad de datos a almacenar.
            {
                fwrite($save, $result[$index] . PHP_EOL); // Escribo en el archivo el resultado en $result[$index] y un salto de línea al final de cada dato.
                $index++; // Incremento $index.
            }
            fwrite($save, '</each>' . PHP_EOL); // Guardo el cierre </each>.
        }
        fwrite($save, '</data>'); // Guardo el cierre </data>.
        fclose($save); // Cierro el archivo abierto para guardar.
        fclose($read); // Cierro el archivo abierto para leer
    }
    echo "<script>if (!alert('Archivo Salvado Correctamente')) window.open('index.php', '_self');</script>"; // Informo que se ha guardado el archivo.
}
?>