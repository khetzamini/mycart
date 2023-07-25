<meta charset="utf-8">
<?php
//condb
include('../condb.php'); 

// echo '<pre>';
// print_r($_POST);
// echo '</pre>';

// exit();

	$ref_m_id = $_POST["ref_m_id"];
	$p_m_name = $_POST["p_m_name"];
	$p_m_edit_date = $_POST["p_m_edit_date"];
	$ref_t_id = $_POST["ref_t_id"];
	$p_name = $_POST["p_name"];
	$p_detail = $_POST["p_detail"];
	$p_price = $_POST["p_price"];
	$p_id = $_POST["p_id"];
	$p_img2 = $_POST["p_img2"];

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
	}else{
		$newname=$p_img2;
	}



	
	
	//edit prd
	$sql = "UPDATE tbl_prd SET
	ref_t_id='$ref_t_id',
	p_name='$p_name',
	p_detail='$p_detail',
	p_price='$p_price',
	p_img='$newname',
	p_m_name='$p_m_name',
	p_m_edit_date='$p_m_edit_date'
	WHERE p_id=$p_id
	";

	$result = mysqli_query($condb, $sql) or die ("Error in query: $sql " . mysqli_error());

	// echo '<pre>';
	// echo $sql;
	// echo '</pre>';
	// exit;


//insert updat log 
	$sql2 = "INSERT INTO tbl_prd_update_log
	(
	ref_p_id,
	ref_m_id
	)
	VALUES 
	(
	$p_id,
	$ref_m_id
	)
	";

	$result2 = mysqli_query($condb, $sql2) or die ("Error in query: $sql " . mysqli_error());



	
	//ปิดการเชื่อมต่อ database
	mysqli_close($condb);
	//จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
	
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('แก้ไขข้อมูลสำเร็จ');";
	echo "window.location = 'prd.php?ID=$p_id&act=edit'; ";
	//echo "window.location = 'prd.php'; ";
	echo "</script>";
	}else{
	echo "<script type='text/javascript'>";
	echo "alert('Error!!');";
	echo "window.location = 'prd.php'; ";
	echo "</script>";
}
?>




