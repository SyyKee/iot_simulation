<?php

$mysqli = new mysqli("localhost", "root", "", "iot_test");


if ($mysqli->connect_error) {
    die("ERR: " . $mysqli->connect_error);
}


$query = "SELECT vent FROM `iot_p` ORDER BY `iot_p`.`id` DESC LIMIT 1";


$result = $mysqli->query($query);
$data = $result->fetch_assoc();
$mysqli->close();


echo json_encode($data);

?>
