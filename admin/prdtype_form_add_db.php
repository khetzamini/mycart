<meta charset="utf-8">
<?php
//condb
include('../condb.php'); 

// echo '<pre>';
// print_r($_POST);
// echo '</pre>';

// exit();


	$t_name = mysqli_real_escape_string($conn, $_POST["t_name"]);


//เช็คซ้ำ 
	$check = "
	SELECT  t_name 
	FROM tbl_prd_type  
	WHERE t_name = '$t_name' 
	";
    $result1 = mysqli_query($conn, $check) or die(mysqli_error());
    $num=mysqli_num_rows($result1);

    // echo $num;

    // exit();

    //echo $num;

    //exit;
    if($num > 0)
    {
    echo "<script>";
    echo "alert(' ข้อมูลซ้ำ กรุณาเพิ่มใหม่อีกครั้ง !');";
    echo "window.history.back();";
    echo "</script>";
    }else{
	
	//เพิ่มเข้าไปในฐานข้อมูล
	$sql = "INSERT INTO tbl_prd_type
	(t_name)
	VALUES
	('$t_name')";
	$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error());

}
	// echo $sql;
	// exit;
	
	//ปิดการเชื่อมต่อ database
	mysqli_close($conn);
	//จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
	
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('เพิ่มข้อมูลสำเร็จ');";
	echo "window.location = 'prdtype.php'; ";
	echo "</script>";
	}else{
	echo "<script type='text/javascript'>";
	echo "alert('Error!!');";
	echo "window.location = 'prdtype.php'; ";
	echo "</script>";
}
?>