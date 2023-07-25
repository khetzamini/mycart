<?php
session_start();
if($_SESSION['m_name']=='')
	{
		echo "<script type='text/javascript'>";
		echo "alert('คุณยังไม่ได้เข้าสู่ระบบ');";
		echo "window.location = 'login.php'; ";
		echo "</script>";
	}

$m_id=$_SESSION['m_id'];

include 'condb.php';


$qmember = "SELECT m_fname, m_name, m_lname, m_address, m_email, m_phone FROM tbl_member WHERE m_id=$m_id";
$rsmember = mysqli_query($conn, $qmember) or die ("Error in query: $qmember " . mysqli_error());
$rowmember = mysqli_fetch_array($rsmember);


  
  include 'header.php';
	include 'banner.php';
	include 'navbar.php';
	  
?>
<div class="container">
      <div class="row">
        <div class="col-12 col-sm-12 col-md-12">
			<h3>ยืนยันการสั่งซื้อสินค้า</h3>
<form id="frmcart" name="frmcart" method="post" action="saveorder.php">
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
    
<?php
	$total=0;
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
		echo "<input type='number' name='amount[$p_id]' value='$qty' class='form-control' readonly /></td>";
		echo "<td  align='right'>".number_format($sum,2)."</td>";
		echo "</tr>";
	}
	echo "<tr>";
  	echo "<td colspan='5' class='p-3 mb-2 bg-dark text-white' align='center'><b>ราคารวม</b></td>";
  	echo "<td align='right' class='p-3 mb-2 bg-dark text-white'>"."<b>".number_format($total,2)."</b>"."</td>";
	echo "</tr>";
?>
</table>
<h3>ที่อยู่การจัดส่งสินค้า</h3>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">ชื่อ-นามสกุล</label>
      <input type="text" class="form-control" id="inputEmail4" name="m_name"
      value="<?php echo $rowmember['m_fname'].' '.$rowmember['m_name'].' '.$rowmember['m_lname'];?>">
    </div>
</div>
  <div class="form-group">
    <label for="inputAddress">ที่อยู่</label>
    <input type="text" class="form-control" id="inputAddress" name="m_address"
    value="<?php echo $rowmember['m_address'];?>">
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">อีเมล</label>
      <input type="email" class="form-control" id="inputCity" name="m_email"
      value="<?php echo $rowmember['m_email'];?>">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">เบอร์โทรศัพท์</label>
      <input type=text maxlength=10 class="form-control" id="inputCity" name="m_phone"
      value="<?php echo $rowmember['m_phone'];?>">
    </div>
</div>
  <input type="hidden" name="m_id" value="<?php echo $m_id;?>">
  <input type="hidden" name="total" value="<?php echo $total;?>">
  <button type="submit" class="btn btn-primary">สั่งซื้อสินค้า</button>
</form>
</body>
</html>