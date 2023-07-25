<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>เข้าสู่ระบบ</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>
  <body>

        <!-- start form login-->
        <div class="container">
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-5">
              <h3> เข้าสู่ระบบ
            </h3>
              <form action="checklogin.php" method="post" class="form-horizontal">
                 <div class="form-group">
                  <div class="col-sm-3 control-label">
                    ชื่อผู้ใช้ : 
                  </div>
                  <div class="col-sm-4">
                    <input type="text" name="m_username" required class="form-control">
                  </div>
                 </div>
                 <div class="form-group">
                  <div class="col-sm-3 control-label">
                    รหัสผ่าน : 
                  </div>
                  <div class="col-sm-4">
                    <input type="password" name="m_password" required class="form-control">
                  </div>
                 </div>
                 <div class="form-group">
                  <div class="col-sm-3">
                  </div>
                  <div class="col-sm-4">
                    <button type="submit" class="btn btn-primary">Login</button>
                  </div>
                 </div>
              </form>
            </div>
          </div>
        </div>
        <!-- end form-->

        <!-- start footer -->

        <!-- end footer -->
      </body>
    </html>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>