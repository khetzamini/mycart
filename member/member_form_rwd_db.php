<meta charset="utf-8">
<?php
//condb
include('../condb.php'); 

// echo '<pre>';
// print_r($_POST);
// echo '</pre>';

// exit();

	$m_id  = $_POST["m_id"];
	$m_password1  = md5($_POST["m_password1"]);
	$m_password2  = md5($_POST["m_password2"]);
	
	if($m_password1 != $m_password2){
	echo "<script type='text/javascript'>";
	echo "alert('รหัสผ่านไม่ตรงกัน กรุณาใส่ใหม่อีกครั้ง!');";
	echo "window.location = 'index.php?act=pwd'; ";
	echo "</script>";
	}else{

	
	//update data 
	$sql = "UPDATE tbl_member SET 
	m_password='$m_password1'
	WHERE m_id=$m_id
	 ";

	$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error());
	}
	// echo '<pre>';
	// echo $sql;
	// echo '</pre>';
	// exit;
	
	//ปิดการเชื่อมต่อ database
	mysqli_close($conn);
	//จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
	
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('แก้ไข password สำเร็จ');";
	echo "window.location = 'index.php'; ";
	echo "</script>";
	}else{
	echo "<script type='text/javascript'>";
	//echo "alert('Error!!');";
	echo "window.location = 'index.php'; ";
	echo "</script>";
}
?>