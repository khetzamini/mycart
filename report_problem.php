<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>แจ้งปัญหา</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
  </head>
  <body>

        <!-- start form login-->
        <div class="container">
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-7">
              <h3> Form แจ้งปัญหาการใช้งานเว็บไซต์ </h3>
              <form action="report_problem_db.php" method="post" class="form-horizontal">
                <div class="form-group">
                  <div class="col-sm-3 control-label">
                    ปัญหา :
                  </div>
                  <div class="col-sm-9">
                    <textarea name="p_detail" required class="form-control"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-3 control-label">
                    Email :
                  </div>
                  <div class="col-sm-9">
                    <input type="email" name="p_email" required class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-3 control-label">
                    Phone :
                  </div>
                  <div class="col-sm-9">
                    <input type="text" name="p_phone" required class="form-control">
                  </div>
                </div>
                
                <div class="form-group">
                  <div class="col-sm-3">
                  </div>
                  <div class="col-sm-4">
                    <button type="submit" class="btn btn-primary">แจ้งปัญหา</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- end form-->
        <!-- start footer -->
