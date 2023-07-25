<?php
$condb= mysqli_connect("localhost","root","","my_db") or die("Error: " . mysqli_error($condb));
mysqli_query($condb, "SET NAMES 'utf8' ");
error_reporting( error_reporting() & ~E_NOTICE );
date_default_timezone_set('Asia/Bangkok');

// if($condb){
// 	echo 'ok';
// }else{
// 	echo 'fail';
// }


?>