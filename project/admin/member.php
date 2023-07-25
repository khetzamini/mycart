<title>สมาชิก</title>
<?php include('hder.php'); //css ?>
<body>
  <?php include('nav.php'); //menu?>
  <!-- content -->
  <div class="container">
    <div class="row">
      <div class="col-md-2">
        <?php include('menu_l.php');?>
      </div>
      <div class="col-md-10">
        <h4>จัดการข้อมูลสมาชิก
          <a href="member.php?act=add" class="btn btn-primary">เพิ่มสมาชิก</a>
        </h4>
       <?php 

       $act = (isset($_GET['act']) ? $_GET['act'] : '');

       if($act=='add'){
        include('member_form_add.php');
      }elseif($act=='edit'){
        include('member_form_edit.php');
      }elseif($act=='rwd'){
        include('member_form_rwd.php');
      }else{
        include('member_list.php');
       }   
       ?>
      </div>
    </div>
  </div>
  <?php include('footer.php'); //footer?>
</body>
<?php include('js.php'); //js?>