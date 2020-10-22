<?php 
// Conexión a la bd
$servername = "localhost";
$database = "general";
$username = "root";
$password = "";
//Crea la conexion
$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully";

$nombre = $_POST["nombres"];   
$apellidos = $_POST["apellidos"];
$email = $_POST["correo"];   
$direccion = $_POST["direccion"];
$cedula = $_POST["cedula"];
$telefono = $_POST["telefono"];


$sql = "INSERT INTO registro (nombre,apellido,email,direccion,telefono,cedula) VALUES ('$nombre','$apellidos','$email','$direccion','$telefono','$cedula')";   

if (mysqli_query($conn, $sql)) {
    echo "Se ha regitrado correctamente";
    echo "<a href="index.html">Regresar al inicio</a>"; 
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>