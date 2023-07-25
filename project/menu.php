 <?php 
$query = "SELECT t.*, COUNT(p.p_id) as ptotal 
FROM tbl_prd_type as t 
LEFT JOIN tbl_prd as p ON t.t_id=p.ref_t_id
GROUP BY t.t_id" or die("Error:" . mysqli_error());
$result = mysqli_query($condb, $query); 
 ?>  
    <!-- start menu -->
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <nav class="navbar navbar-default">
            <div class="container-fluid">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">หน้าแรก</a>
              </div>
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                  <li><a href="report_problem.php">แจ้งปัญหา</a></li>
                  <li><a href="login.php">เข้าสู่ระบบ</a></li>
                  <li><a href="register.php">สมัครสมาชิก</a></li>

                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">เลือกประเภทสินค้า<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <?php while($row = mysqli_fetch_array($result)) { ?>
                      <li>
                        <a href="index.php?act=showbytype&t_id=<?php  echo $row["t_id"];?>&name=<?php  echo $row["t_name"];?>"> 
                          <?php  echo $row["t_name"];?> 
                        (<?php  echo $row["ptotal"];?>) </a></li>
                    <?php } ?>
                    </ul>
                  </li>
                  
                </ul>
                 <form class="navbar-form navbar-left" method="get" action="index.php">
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="ค้นหา" name="search" required>
                  </div>
                  <button type="submit" name="act" value="q" class="btn btn-success">ค้นหา</button>
                </form>
                <!-- <ul class="nav navbar-nav navbar-right">
                  <li><a href="#">Link</a></li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">หน่วยงานภายใน <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">depart 1</a></li>
                      <li><a href="#">depart 2</a></li>
                    </ul>
                  </li>
                </ul> -->
                </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
              </nav>
            </div>
          </div>
        </div>
        <!-- end menu -->