<?php // Declara Documento de script PHP
if (json_decode(file_get_contents('php://input'), true)) // Esta linea es usada por IOS, la app para iPhone, android no la necesita, si el script está recibiendo datos, ya sea por GET o por POST.
{
	$_POST = json_decode(file_get_contents('php://input'), true); // Asigna los datos a la variable $_POST de tipo array.
}
$n = 0; // la variable $n se utiliza para multiples entradas.
if (isset($_POST["img"])) // Verifico si ha llegado algo por POST en el array $_POST["user"].
{
    $img = $_POST["img"]; // Hace lo mismo con el contenido de $_POST["pass"] en la variable $pass.
    $byte = base64_decode($img, 0);

    $name = "img.jpg"; // asigna a la variable $name un nombre de archivo "user.txt", tambien se puesde usar la variable $user y sería $name = $user . ".txt".
	$file = fopen($name, "w") or die("Unable to open file!"); // Craa un archivo para escribir en Él, con el nombre del contenido de la variable $name.
	fwrite($file, $byte); // Escribe el contenido de la variable $user.
    fclose($file); // Cierra el archivo, siempre que se abre un archivo para escritura, lectura o agregado hay que cerrarlo al final.
	$response["error"] = false; // Asigna al array $response["error"] el booleano false, será la respuesta a la llamada al servidor desde la app.;
	echo json_encode($response); // Devuelve un Jason con el array $response.
	exit(); // sale de la llamada de la app al servidor.
}