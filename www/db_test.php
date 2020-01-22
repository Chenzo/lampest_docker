<?php

//Database Information
$db_host = $_ENV["SQL_HOSTNAME"]; //Host address (most likely localhost)
$db_name = $_ENV["SQL_DATABASE"]; //Name of Database
$db_user = $_ENV["SQL_USERNAME"]; //Name of database user
$db_pass = $_ENV["SQL_PASSWORD"]; //Password for database user


GLOBAL $errors;
GLOBAL $successes;

$errors = array();
$successes = array();

/* Create a new mysqli object with database connection parameters */
$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);
$mysqlia = new mysqli($db_host, $db_user, $db_pass, $db_name);
GLOBAL $mysqli, $mysqlia;

if (mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_errno();
    exit();
}
?>



CHECKING DB!!!<br/><br/>



<?php


function getTestData() {
	global $mysqli;
	$dArray = array();
	$stmt = $mysqli->prepare("SELECT FT_Guid, Thing, Another_Thing
		FROM Fake_Table");
	$stmt->execute();
	$stmt->bind_result($FT_Guid, $Thing, $Another_Thing);
	while ($stmt->fetch()) {
		$dArray[] = array('FT_Guid' => $FT_Guid, 'Thing' => $Thing, 'Another_Thing' => $Another_Thing);
	}
	$stmt->close();	

	return $dArray;

}


$gotData = getTestData();

foreach ($gotData as $oneData) {
    echo $oneData['FT_Guid'] . " - <strong>" . $oneData['Thing'] . "</strong>:" . $oneData['Another_Thing'] . "<br/>";
}

?>

