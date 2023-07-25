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
        <h3 align="center"> Member Page 
          <br>
          ยินดีต้อนรับคุณ 
          <?php echo $m_name;?>
          <br>
          Login ครั้งล่าสุดเมื่อ 
          <?php echo date('d/m/Y H:i:s', strtotime($lastlogin));?>
        </h3> 

        <?php 
        $act = (isset($_GET['act']) ? $_GET['act'] : '');
        if($act=='edit'){
          include('member_form_edit.php');
        }elseif ($act=='pwd') {
          include('member_form_rwd.php');
        }
        ?>
      </div>
    </div>
  </div>
  <?php include('footer.php'); //footer?>
</body>
<?php include('js.php'); //js?>