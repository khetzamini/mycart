<?php 
session_start();
  include 'condb.php';
  include 'header.php';
  include 'banner.php';
  include 'navbar.php';
  //include 'listproduct.php';
  
include ('form_search_by_price.php');
$act = (isset($_GET['act']) ? $_GET['act'] : '');
if($act=='showbytype'){
	include('list_prd_by_type.php');
}elseif($act=='q') {
	 include('list_prd_by_search_multi_column.php');
}elseif($act=='p') {
	 include('list_prd_by_price.php');
}else{
	include('list_prd.php');	
}
include 'footer.php';
?>
?>
 