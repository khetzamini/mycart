<?php
	session_start();
	if($_SESSION['m_name']=='')
	{
		echo "<script type='text/javascript'>";
		echo "alert('คุณยังไม่ได้เข้าสู่ระบบ');";
		echo "window.location = 'login.php'; ";
		echo "</script>";
	}

    include("condb.php");  
?>
<meta charset=utf-8>

<?php

	$name = $_POST["m_name"];
	$address = $_POST["m_address"];
	$email = $_POST["m_email"];
	$phone = $_POST["m_phone"];
	$m_id = $_POST["m_id"];
	//$total_qty = $_POST["total_qty"];
	$total = $_POST["total"];
	$dttm = Date("Y-m-d G:i:s");
	
	//บันทึกการสั่งซื้อลงใน order_detail
	mysqli_query($conn, "BEGIN"); 
	$sql1	= "INSERT INTO order_head values(null, '$m_id','$dttm', '$name', '$address', '$email', '$phone', '$total', 1,'','0000-00-00','','0000-00-00')";
	$query1	= mysqli_query($conn, $sql1) or die ("Error in query: $sql1" . mysqli_error($sql1));
	//ฟังก์ชั่น MAX() จะคืนค่าที่มากที่สุดในคอลัมน์ที่ระบุ ออกมา หรือจะพูดง่ายๆก็ว่า ใช้สำหรับหาค่าที่มากที่สุด นั่นเอง.
	$sql2 = "SELECT MAX(o_id) as o_id
    from order_head
    where m_id=$m_id
    and o_dttm='$dttm'";
	$query2	= mysqli_query($conn, $sql2) or die ("Error in query: $sql2" . mysqli_error($sql2));
	$row = mysqli_fetch_array($query2);
	$o_id = $row["o_id"];
//PHP foreach() เป็นคำสั่งเพื่อนำข้อมูลออกมาจากตัวแปลที่เป็นประเภท array โดยสามารถเรียกค่าได้ทั้ง $key และ $value ของ array
	foreach($_SESSION['cart'] as $p_id=>$qty)
	{
		$sql3	= "SELECT * FROM tbl_prd WHERE p_id=$p_id";
		$query3	= mysqli_query($conn, $sql3) or die ("Error in query: $sql3" . mysqli_error($sql3));
		$row3	= mysqli_fetch_array($query3);
		$pricetotal	= $row3['p_price']*$qty;
		
		$sql4	= "INSERT INTO order_detail values(null, $o_id, $p_id, $qty, $pricetotal)";
		$query4	= mysqli_query($conn, $sql4) or die ("Error in query: $sql4" . mysqli_error($sql4));
	}
	
	if($query1 && $query4){
		mysqli_query($conn, "COMMIT");
		$msg = "บันทึกข้อมูลเรียบร้อยแล้ว ";
		foreach($_SESSION['cart'] as $p_id)
		{	
			unset($_SESSION['cart']);
		}
	}
	else{
		mysqli_query($conn, "ROLLBACK");  
		$msg = "บันทึกข้อมูลไม่สำเร็จ";	
	}
?>
<script type="text/javascript">
	alert("<?php echo $msg;?>");
	window.location ='index.php';
</script>

 




</body>
</html>