<?php
$con = mysqli_connect('localhost','root','') or die($con);
if (empty($con)) {
 	echo mysqli_error();
 } 
 $data = mysqli_select_db($con, "hospital");
 if (empty($data)) {
 	echo mysqli_error();
 }
?>