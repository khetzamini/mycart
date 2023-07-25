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
        <h3 align="center"> Admin Page 
          <br>
          ยินดีต้อนรับคุณ 
          <?php echo $m_name;?>
        </h3> 
        <?php 
        $act = (isset($_GET['act']) ? $_GET['act'] : '');
        if($act=='log_login'){
        ?>
        <p>
          <a href="index.php?act=byuser" class="btn btn-info">ผู้ใช้</a> 
          <a href="index.php?act=bym" class="btn btn-info">รายเดือน</a> 
          <a href="index.php?act=byyear" class="btn btn-success">รายปี</a> 
          <a href="index.php?act=bydate" class="btn btn-primary">รายวัน</a> 
        </p>
      <?php } ?>
      

        <?php 

       $act = (isset($_GET['act']) ? $_GET['act'] : '');

       if($act=='log_login'){
        include('login_list.php');
      }elseif ($act=='byuser') {
         include('login_list_by_user.php');
      }elseif ($act=='bym') {
         include('login_list_by_monthly.php');
      }elseif ($act=='byyear') {
         include('login_list_by_yearly.php');
      }elseif ($act=='bydate') {
         include('login_list_by_search.php');
      }else{
          include('counter.php');
      }

        ?>




      </div>
    </div>
  </div>
  <?php include('footer.php'); //footer?>
</body>
<?php include('js.php'); //js?>