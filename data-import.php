<?php
// Select weather data for given parameters
$checkDate=date("Y-m-d H:i:s");

$sql = "SELECT *
FROM weather
WHERE city = '{$_GET['city']}'
AND weather_when >= DATE_SUB('{$checkDate}', INTERVAL 300 SECOND)
ORDER BY weather_when DESC limit 1";
$result = $mysqli -> query($sql);
// If 0 record found
if ($result->num_rows == 0) {
$url = 'https://api.openweathermap.org/data/2.5/weather?q=' . $_GET['city'] . '&appid=c5c620a6b88c5a7b651529bbc0d8be2a&units=metric';

// Get data from openweathermap and store in JSON object
$data = file_get_contents($url);
$json = json_decode($data, true);
// Fetch required fields
$weather_description = $json['weather'][0]['description'];
$weather_name = $json['weather'][0]['main'];
$weather_temperature = $json['main']['temp'];
$weather_wind = $json['wind']['speed'];
$weather_humidity=$json['main']['humidity'];
$weather_pressure=$json['main']['pressure'];
$numeric_date=$json['dt'];
$timezone=$json['timezone'];
$weather_when =  date("Y-m-d H:i:s"); // now
$city = $json['name'];
// Build INSERT SQL statement
$sql = "INSERT INTO weather (weather_description, weather_temperature, weather_wind, weather_when,city,weather_humidity,pressure,numeric_date,timezone,weather_name) VALUES('{$weather_description}', {$weather_temperature}, {$weather_wind}, '{$weather_when}',
'{$city}','{$weather_humidity}','{$weather_pressure}','{$numeric_date}','{$timezone}','{$weather_name}')";
// Run SQL statement and report errors
if (!$mysqli -> query($sql)) {
echo("<h4>SQL error description: " . $mysqli -> error . "</h4>");
}
}
?>
