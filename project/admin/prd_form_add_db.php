<meta charset="utf-8">
<?php
//condb
include('../condb.php'); 

//echo '<pre>';
//print_r($_POST);
//echo '</pre>';

//exit();



	$ref_t_id = $_POST["ref_t_id"];
	$p_name = $_POST["p_name"];
	$p_detail = $_POST["p_detail"];
	$p_price = $_POST["p_price"];
	$ref_m_id = $_POST['ref_m_id'];
    $date1 = date("Ymd_His");
	$numrand = (mt_rand());
	$p_img = (isset($_POST['p_img']) ? $_POST['p_img'] : '');
	$upload=$_FILES['p_img']['name'];
	if($upload !='') { 
		//โฟลเดอร์ที่เก็บไฟล์
		$path="../pimg/";
		//ตัวขื่อกับนามสกุลภาพออกจากกัน
		$type = strrchr($_FILES['p_img']['name'],".");
		//ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
		$newname =$numrand.$date1.$type;
		$path_copy=$path.$newname;
		$path_link="../pimg/".$newname;
		//คัดลอกไฟล์ไปยังโฟลเดอร์
		move_uploaded_file($_FILES['p_img']['tmp_name'],$path_copy);  
	}



	
	
	//เพิ่มเข้าไปในฐานข้อมูล
	$sql = "INSERT INTO tbl_prd
	(
	ref_t_id,
	p_name,
	p_detail,
	p_price,
	p_img,
	ref_m_id
	)
	VALUES
	(
	'$ref_t_id',
	'$p_name',
	'$p_detail',
	'$p_price',
	'$newname',
	 $ref_m_id
	)";

	$result = mysqli_query($condb, $sql) or die ("Error in query: $sql " . mysqli_error());

	// echo '<pre>';
	// echo $sql;
	// echo '</pre>';
	// exit;
	
	//ปิดการเชื่อมต่อ database
	mysqli_close($condb);
	//จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
	
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('เพิ่มข้อมูลสำเร็จ');";
	echo "window.location = 'prd.php'; ";
	echo "</script>";
	}else{
	echo "<script type='text/javascript'>";
	echo "alert('Error!!');";
	echo "window.location = 'prd.php'; ";
	echo "</script>";
}
?>




