<?php 
session_start();
if(isset($_SESSION['id'])&& $_SESSION['id']!="")
{}
else
{
   header("location: index.php");
}

$inactive=10222;
if(isset($_SESSION['timeout']))
{
	$sessionttl=time()- $_SESSION['timeout'];
	if($sessionttl > $inactive)
	{
	session_destroy();
	header("location:logout.php");	
	}	
}
$_SESSION['timeout']=time();
?>