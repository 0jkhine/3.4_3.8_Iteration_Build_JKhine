<?php
//This is your Database connection file. You may use this file or create your own.
//Never code your normal user name and password into your database connection file.
//Keep the password contained in this file private.

$conn = new mysqli('localhost', '_JKhine', 'dA2xERMH2TCtJQl8', 'JKhine_13CSI_Music');
if($conn->connect_error){
	die("Error Connecting to Database: " . $conn->connect_error);
}
?>