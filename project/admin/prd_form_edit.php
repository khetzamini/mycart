<?php 
//query prd 
$ID = $_GET['ID'];
$sql = "SELECT * 
FROM tbl_prd as p 
INNER JOIN tbl_prd_type as t ON p.ref_t_id=t.t_id
WHERE p.p_id=$ID";
$result = mysqli_query($condb, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result);
extract($row);

$ref_t_id = $row['ref_t_id'];

//echo $ref_t_id;

//exit;

//echo $sql;

// echo '<pre>';
// print_r($row);
// echo '</pre>';

// exit;

//query prd type 
$query = "SELECT * FROM tbl_prd_type 
WHERE t_id!=$ref_t_id" or die("Error:" . mysqli_error());
$result2 = mysqli_query($condb, $query);
?>
<h4> Form แก้ไขสินค้า  </h4>
<form action="prd_form_edit_db.php" method="post" class="form-horizontal" enctype="multipart/form-data">
  <div class="form-group">
    <div class="col-sm-2 control-label">
      ประเภท :
    </div>
    <div class="col-sm-4">
      <select name="ref_t_id" class="form-control" required>
        <option value="<?php echo $row['ref_t_id'];?>"><?php echo $row['t_name'];?></option>
        <?php foreach($result2 as $results){ ?>
        <option value="<?php echo $results["t_id"];?>">
          <?php echo $results["t_name"];?>
          </option>
      <?php } ?>
      </select>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2 control-label">
      ชื่อสินค้า :
    </div>
    <div class="col-sm-7">
      <input type="text" name="p_name" required class="form-control" value="<?php echo $row['p_name'];?>">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2 control-label">
      รายละเอียด:
    </div>
    <div class="col-sm-10">
      <textarea name="p_detail" class="form-control" required id="editor"><?php echo $row['p_detail'];?></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2 control-label">
      ราคา :
    </div>
    <div class="col-sm-2">
      <input type="number" name="p_price" required class="form-control" value="<?php echo $row['p_price'];?>">
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-2 control-label">
      ภาพสินค้า :
    </div>
    <div class="col-sm-4">
      ภาพเก่า <br>
      <img src="../pimg/<?php echo $row['p_img'];?>" width="200px">
      <br><br>
      <input type="file" name="p_img"  accept="image/*" class="form-control">
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-2">
    </div>
    <div class="col-sm-4">
      <input type="hidden" name="p_img2" value="<?php echo $row['p_img'];?>">
      <input type="hidden" name="p_id" value="<?php echo $row['p_id'];?>">
      <input type="hidden" name="p_m_name" value="<?php echo $m_name;?>">
      <input type="hidden" name="p_m_edit_date" value="<?php echo date('Y-m-d H:i:s');?>">
      <input type="hidden" name="ref_m_id" value="<?php echo $m_id;?>">
      <button type="submit" class="btn btn-primary">บันทึก</button>
    </div>
  </div>
</form>
<script>
initSample();
</script>

<hr>
<?php include('prd_update_list.php');?>









