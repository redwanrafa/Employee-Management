<?php
	$con= mysqli_connect("localhost","root","");
if(!$con)
{
 die("Connection failed: " . mysqli_connect_error());
}
mysqli_select_db($con,"emplyee_management");
?>