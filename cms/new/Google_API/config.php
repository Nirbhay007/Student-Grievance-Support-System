<?php
	session_start();
	require_once "API/vendor/autoload.php";
	$gClient = new Google_Client();
	$gClient->setClientId("52233495820-80m75on1uo627t1a3pl23c56stvnkmkr.apps.googleusercontent.com");
	$gClient->setClientSecret("chbhbanEsEWG5yXQCpBFqpO9");
	$gClient->setApplicationName("Student Grievance Support System");
	$gClient->setRedirectUri("http://localhost/complaint%20manahgement%20new/cms/new/users/index.php");
	$gClient->addScope("https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/userinfo.email");	
	$con = new mysqli('localhost', 'root','' ,'test');
    if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}	
?>