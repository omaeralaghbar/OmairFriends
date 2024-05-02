<?php
ob_start();//turns on output bffering 
session_start();

$timezone = date_default_timezone_set("Asia/Riyadh");

$con = mysqli_connect("localhost" , "root" , "" , "omair" , "3307");
if(mysqli_connect_errno()){
	echo "Failed to connect ".mysqli_connect_errno();
}

?>