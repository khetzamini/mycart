<?php
$query = "SELECT * FROM tbl_prd ORDER BY  p_id DESC"
or die("Error:" . mysqli_error());
$result = mysqli_query($conn, $query);
//echo $query;
?>
<!-- start prd -->
<div class="container">
  <div class="row">
    <div class="col-xs-12 col-md-12">
    <br>
      <h3>รายการสินค้า</h3>
    </div>
    <?php while($row = mysqli_fetch_array($result)) { ?>
      <div class="col-sm-6 col-md-3">
        <div class="img-resize">
          <img src="pimg/<?php echo $row['p_img'];?>" width="100%">
          <div class="caption">
            <br>
          <h5>
              <?php echo $row['p_name'];?>
              </h5>
        <h5>
        <font color="red">
			ราคา <?php echo number_format($row['p_price'],2);?> บาท
			</font>
            </h5>

            <p>

              <a href="detail.php?p_id=<?php echo $row['p_id'];?>&act=add" class="btn btn-primary btn-lg btn-block">รายละเอียดสินค้า</a>
              <a href="cart.php?p_id=<?php echo $row['p_id'];?>&act=add" class="btn btn-success btn-lg btn-block">หยิบใส่ตะกร้าสินค้า</a>
            </p>
          </div>
        </div>
      </div>
    <?php } ?>
  </div>
</div>
<!-- end prd -->