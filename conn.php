
<?php
// connexion a la bd et generation des donnees
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "iot_test";

$conn = mysqli_connect($servername, $username, $password, $dbname);


if (!$conn) {
  die("ERR " . mysqli_connect_error());
}


$data = json_decode(file_get_contents("php://input"));


$stmt = mysqli_prepare($conn, "INSERT INTO `iot_p` (temperature, carbon, vent, pression) VALUES (?, ?, ?, ?)");


mysqli_stmt_bind_param($stmt, "dddd", $data->temperature, $data->carbon, $data->vent, $data->pression);

if (mysqli_stmt_execute($stmt)) {
  echo "C est bon";
} else {
  echo "Erreur " . mysqli_error($conn);
}


mysqli_stmt_close($stmt);
mysqli_close($conn);
?>