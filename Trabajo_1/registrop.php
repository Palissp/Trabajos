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
//declaracion de varibles
$nombre = $_POST["nombres"];
$apellido = $_POST["apellidos"]; 
$email = $_POST["correo"];
$direccion = $_POST["direccion"];
$cedula = $_POST["cedula"];
$telefono = $_POST["telefono"];
$empresa = $_POST["empresa"];

$sql = "INSERT INTO registrop (nombre,apellido,email,direccion,cedula,telefono,empresa) VALUES ('$nombre','$apellido','$email','$direccion','$cedula','$telefono','$empresa')";   

if (mysqli_query($conn, $sql)) {
    echo "Se ha registrado correctamente";
} else {
   echo "Error:" . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>