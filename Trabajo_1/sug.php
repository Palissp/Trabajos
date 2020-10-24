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
$usuario = $_POST["user"];
$email = $_POST["email"]; 
$comentario = $_POST["sugerencia"];


$sql = "INSERT INTO comments (user,email,comment) VALUES ('$usuario','$email','$comentario')";   

if (mysqli_query($conn, $sql)) {
    echo "Se ha registrado correctamente\n";
    echo "<br>Pulsa atrás para continuar"; 
} else {
   echo "Error:" . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>