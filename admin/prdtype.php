<title>ประเภทสินค้า</title>
<?php include('hder.php'); //css ?>
<body>
  <?php include('nav.php'); //menu?>
  <!-- content -->
  <div class="container">
    <div class="row">
      <div class="col-md-2">
        <?php include('menu_l.php');?>
      </div>
      <div class="col-md-6">
        <h4>จัดการประเภทสินค้า
          <a href="prdtype.php?act=add" class="btn btn-success">เพิ่มประเภทสินค้า</a>
        </h4>
       <?php 
       $act = (isset($_GET['act']) ? $_GET['act'] : '');

       if($act=='add'){
        include('prdtype_form_add.php');
        }elseif($act=='edit') {
        include('prdtype_form_edit.php');
       }else{
        include('prdtype_list.php');
       }
       ?>
      </div>
    </div>
  </div>
  <?php include('footer.php'); //footer?>
</body>
<?php include('js.php'); //js?>