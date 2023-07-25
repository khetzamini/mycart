<meta charset="utf-8">
<?php
//condb
include('condb.php'); 

// echo '<pre>';
// print_r($_POST);
// echo '</pre>';

// exit();


$m_username = mysqli_real_escape_string($condb,$_POST["m_username"]);
$m_password = mysqli_real_escape_string($condb,md5($_POST["m_password"]));
$m_fname = mysqli_real_escape_string($condb,$_POST["m_fname"]);
$m_name = mysqli_real_escape_string($condb,$_POST["m_name"]);
$m_lname = mysqli_real_escape_string($condb,$_POST["m_lname"]);
$m_email = mysqli_real_escape_string($condb,$_POST["m_email"]);
$m_phone = mysqli_real_escape_string($condb,$_POST["m_phone"]);
$m_level = mysqli_real_escape_string($condb,$_POST["m_level"]);


//เช็คซ้ำ 
	$check = "
	SELECT  m_username 
	FROM tbl_member  
	WHERE m_username = '$m_username' 
	";
    $result1 = mysqli_query($condb, $check) or die(mysqli_error());
    $name=mysqli_num_rows($result1);

    // echo $num;

    // exit();

    //echo $num;

    //exit;
    if($name > 0)
    {
    echo "<script>";
    echo "alert(' ชื่อผู้ใช้ซ้ำ กรุณาเพิ่มใหม่อีกครั้ง !');";
    echo "window.history.back();";
    echo "</script>";
    }else{
	
	//เพิ่มเข้าไปในฐานข้อมูล
	$sql = "INSERT INTO tbl_member
	(m_username,
    m_password,
    m_fname,
    m_name,
    m_lname,
    m_email,
    m_phone,
    m_level)
	VALUES
	('$m_username',
    '$m_password',
    '$m_fname',
    '$m_name',
    '$m_lname',
    '$m_email',
    '$m_phone',
    '$m_level')";
	$result = mysqli_query($condb, $sql) or die ("Error in query: $sql " . mysqli_error());

}
	// echo $sql;
	// exit;
	
	//ปิดการเชื่อมต่อ database
	mysqli_close($condb);
	//จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
	
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('สมัครสำเร็จ');";
	echo "window.location = 'login.php'; ";
	echo "</script>";
	}else{
}
?>