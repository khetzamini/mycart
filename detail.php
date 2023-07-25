<?php 
include('condb.php');
$p_id = $_GET['p_id'];
$sql1 = "SELECT * FROM tbl_prd WHERE p_id=$p_id";
$result1 = mysqli_query($conn, $sql1) or die ("Error in query: $sql1 " . mysqli_error());
$row1 = mysqli_fetch_array($result1);
extract($row1);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $row1['p_name'];?></title>
   <meta property="og:title" content="<?php echo $row1['p_name'];?>" />
<meta property="og:url" content="http://127.0.0.1/web/detail.php?p_id=<?php echo $row1['p_id'];?>" />
<meta property="og:site_name" content="DEVBANBAN.COM =  คู่มือทำเว็บ" />
<meta property="og:image" content="http://127.0.0.1/web/pimg/<?php echo $row1['p_img'];?>" />
<meta property="og:image:secure_url" content="http://127.0.0.1/web/pimg/<?php echo $row1['p_img'];?>" />
<meta property="og:image:width" content="960" />
<meta property="og:image:height" content="720" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:title" content="<?php echo $row1['p_name'];?>" />
<meta name="twitter:image" content="http://127.0.0.1/web/pimg/<?php echo $row1['p_img'];?>" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>
  <body>
<?php 
include('banner.php');
include('navbar.php');
include('prd_detail.php');
include('footer.php');
?>

