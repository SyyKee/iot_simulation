<?php
$mysqli = new mysqli("localhost", "root", "", "iot_test");


if ($mysqli->connect_error) {
    die("ERR: " . $mysqli->connect_error);
}

$query = "SELECT temperature, pression FROM `iot_p` ORDER BY `iot_p`.`id` DESC LIMIT 24";
$result = $mysqli->query($query);
$data_array = array();

while ($row = $result->fetch_assoc()) {
    $data_array[] = array(
        'temperature' => $row['temperature'],
        'pression' => $row['pression']
    );
}

$data_json = json_encode($data_array);
$mysqli->close();

echo $data_json;
?>
