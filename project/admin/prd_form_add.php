<?php 
$query = "SELECT * FROM tbl_prd_type" or die("Error:" . mysqli_error());
$result = mysqli_query($condb, $query);
?>
<h4> Form เพิ่มสินค้า  </h4>
<form action="prd_form_add_db.php" method="post" class="form-horizontal" enctype="multipart/form-data">
  <div class="form-group">
    <div class="col-sm-2 control-label">
      ประเภท :
    </div>
    <div class="col-sm-4">
      <select name="ref_t_id" class="form-control" required>
        <option value="">เลือกข้อมูล</option>
        <?php foreach($result as $results){ ?>
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
      <input type="text" name="p_name" required class="form-control">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2 control-label">
      รายละเอียด:
    </div>
    <div class="col-sm-10">
      <textarea name="p_detail" class="form-control" required id="editor"></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2 control-label">
      ราคา :
    </div>
    <div class="col-sm-2">
      <input type="number" name="p_price" min="1" required class="form-control">
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-2 control-label">
      ภาพสินค้า :
    </div>
    <div class="col-sm-4">
      <input type="file" name="p_img" required accept="image/*" class="form-control">
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-2">
    </div>
    <div class="col-sm-4">
       <input type="hidden" name="ref_m_id"  value="<?php echo $m_id;?>">
      <button type="submit" class="btn btn-primary">บันทึก</button>
    </div>
  </div>
</form>
<script>
initSample();
</script>