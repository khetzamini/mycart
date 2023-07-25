<title>ตะกร้าสินค้า</title>
<?php
	session_start();
	if($_SESSION['m_name']=='')
	{
		echo "<script type='text/javascript'>";
		echo "alert('คุณยังไม่ได้เข้าสู่ระบบ');";
		echo "window.location = 'login.php'; ";
		echo "</script>";
	}
	include 'condb.php';
	@$p_id = mysqli_real_escape_string($conn,$_GET['p_id']); 
	$act = mysqli_real_escape_string($conn,$_GET['act']);
	
//add to cart
	if($act=='add' && !empty($p_id))
	{
		if(isset($_SESSION['cart'][$p_id]))
		{
			$_SESSION['cart'][$p_id]++;
		}
		else
		{
			$_SESSION['cart'][$p_id]=1;
		}
	}

//remove product
	if($act=='remove' && !empty($p_id))  //ยกเลิกการสั่งซื้อ
	{
		unset($_SESSION['cart'][$p_id]);
	}


//update cart
	if($act=='update')
	{
		$amount_array = $_POST['amount'];
		foreach($amount_array as $p_id=>$amount)
		{
			$_SESSION['cart'][$p_id]=$amount;
		}
	}


	//cancel cart
	if($act=='cancel')
	{
		unset($_SESSION['cart']);
	}
	include 'header.php';
	include 'banner.php';
	include 'navbar.php';
	



?>
   <!--start  product -->
   <div class="container">
      <div class="row">
        <div class="col-12 col-sm-12 col-md-12">
			<h3>ตะกร้าสินค้า <a href="index.php" class="btn btn-primary">กลับหน้ารายการสินค้า</a></h3>
<form id="frmcart" name="frmcart" method="post" action="?act=update">
  <table class="table table-bordered table-hover table-striped">
    <tr>
    </tr>
    <tr>
	<td width="5%" align="center" bgcolor="#EAEAEA"></td>
	<td width="20%" align="center" bgcolor="#EAEAEA">รูปภาพสินค้า</td>
      <td width="35%" align="center" bgcolor="#EAEAEA">ชื่อสินค้า</td>
      <td width="15%" align="center" bgcolor="#EAEAEA">ราคา</td>
      <td width="10%" align="center" bgcolor="#EAEAEA">จำนวน</td>
      <td width="10%" align="center" bgcolor="#EAEAEA">รวม(บาท)</td>
      <td width="5%" align="center" bgcolor="#EAEAEA">ลบ</td>
    </tr>
<?php
$total=0;
if(!empty($_SESSION['cart']))
{
	foreach($_SESSION['cart'] as $p_id=>$qty)
	{
		$sql = "SELECT * FROM tbl_prd WHERE p_id=$p_id";
		$query = mysqli_query($conn, $sql);
		$row = mysqli_fetch_array($query);
		$sum = $row['p_price'] * $qty;  //เอาราคาสินค้า คูณ จำนวนที่สั่งซื้อ
		$total += $sum;//ราคารวม
		echo "<tr>";
		echo "<td  align='center'>" . @$i+=1 . "</td>";
		echo "<td  align='center'>"."<img src='project/pimg/".$row['p_img']."' width='100'>"."</td>";
		echo "<td  >" . $row["p_name"] . "</td>";
		echo "<td  align='right'>" .number_format($row["p_price"],2) . "</td>";
		echo "<td  align='right'>";  
		echo "<input type='number' name='amount[$p_id]' value='$qty' class='form-control' min='1'/></td>";
		echo "<td  align='right'>".number_format($sum,2)."</td>";
		//remove product
		echo "<td  align='center'><a href='cart.php?p_id=$p_id&act=remove' class='btn btn-danger btn-sm'>ลบ</a></td>";
		echo "</tr>";
	}
	echo "<tr>";
  	echo "<td colspan='5' class='p-3 mb-2 bg-dark text-white' align='center'><b>ราคารวม</b></td>";
  	echo "<td align='right' class='p-3 mb-2 bg-dark text-white'>"."<b>".number_format($total,2)."</b>"."</td>";
  	echo "<td align='left' class='p-3 mb-2 bg-dark text-white'>บาท</td>";
	echo "</tr>";
}

if($total>0){ 
?>
<tr>
<td colspan="7" align="right">
	<input type="button" class="btn btn-danger" name="btncancel" value="ยกเลิกการสั่งซื้อ" onclick="window.location='cart.php?act=cancel';" />
    <input type="submit" class="btn btn-warning" name="button" id="button" value="คำนวณราคาใหม่" />
    <input type="button" class="btn btn-success" name="Submit2" value="สั่งซื้อ" onclick="window.location='confirm.php';" />
</td>
</tr>
<?php } else{
	echo'<h4 align="center">ไม่มีสินค้าในตะกร้าสินค้า กรุณาเลือกสินค้าใหม่ได้เลย</h4>';
} ?>
</table>
</form>
</div>
</div>
</div>
<?php include 'footer.php'; ?>