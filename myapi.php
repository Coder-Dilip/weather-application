<?php
date_default_timezone_set("Asia/Kathmandu");
// Connect to database
header("Access-Control-Allow-Origin: *");
$mysqli = new
mysqli("localhost","root","","db2205650"); if ($mysqli
-> connect_errno) {
echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
exit();
}

# get data by city name, if no parameter is provided then liverpool city is the default 
$city="liverpool";
if(isset($_GET['city'])){
$city=$_GET['city'];
}

include "data-import.php";

// Execute SQL query
$sql = "select * from weather where city='{$city}' order by weather_when desc limit 1";
$result = $mysqli -> query($sql);

// adding all the datas into the array
$emparray = array();
while($row =mysqli_fetch_assoc($result))
{
    $emparray[] = $row;
}

// showing the last element of the array 
print json_encode($emparray[count($emparray)-1]);
?>