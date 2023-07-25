<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ลงทะเบียน</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>
  <body>
  
        <!-- start form login-->
        <div class="container">
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-7">
              <h3>ลงทะเบียน</h3>
              <form action="register_db.php" method="post" class="form-horizontal">
    <div class="form-group">
    <div class="col-sm-3 control-label">
      ระดับผู้ใช้ :
    </div>
    <div class="col-sm-4">
      <input type="text" name="m_level" value="MEMBER" class="form-control" readonly>
      </div>
</div>
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
                  <div class="col-sm-3 control-label">
      คำนำหน้าชื่อ :
    </div>
    <div class="col-sm-3">
      <select name="m_fname" class="form-control" required>
      <option value=""></option>
         <option value="เด็กชาย">เด็กชาย</option>
        <option value="เด็กหญิง">เด็กหญิง</option>
         <option value="นาย">นาย</option>
        <option value="นาง">นาง</option>
        <option value="นางสาว">นางสาว</option> 
      </select>
    </div>
  </div>
                 <div class="form-group">
                  <div class="col-sm-3 control-label">
                    ชื่อ : 
                  </div>
                  <div class="col-sm-7">
                    <input type="text" name="m_name" required class="form-control">
                  </div>
                 </div>
                 <div class="form-group">
                  <div class="col-sm-3 control-label">
                    นามสกุล : 
                  </div>
                  <div class="col-sm-7">
                    <input type="text" name="m_lname" required class="form-control">
                  </div>
                 </div>
                 <div class="form-group">
                  <div class="col-sm-3 control-label">
                    อีเมล : 
                  </div>
                  <div class="col-sm-6">
                    <input type="email" name="m_email" required class="form-control">
                  </div>
                 </div>
                 <div class="form-group">
                  <div class="col-sm-3 control-label">
                    เบอร์โทรศัพท์ : 
                  </div>
                  <div class="col-sm-6">
                    <input type="text" name="m_phone" required class="form-control">
                  </div>
                 </div>
                 <div class="form-group">
                  <div class="col-sm-3">
                  </div>
                  <div class="col-sm-4">
                    <button type="submit" class="btn btn-primary">สมัครสมาชิก</button>
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