<?php
//condb
$con= mysqli_connect("localhost","root","","my_db") or die("Error: " . mysqli_error($con));
mysqli_query($con, "SET NAMES 'utf8' ");
//query
$query = "SELECT * FROM tbl_slider ORDER BY sid DESC" or die("Error:" . mysqli_error($con));
$result = mysqli_query($con, $query);
//devbanban.com
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  </head>
  <body>
    
    <!--content -->
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-xs-12">
   
        <div class="col-md-12 col-xs-12">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <?php
              $i=0;
              foreach($result as $row){
              $actives='';
              if($i==0){
              $actives='active';
              }
              ?>
              <li data-target="#carouselExampleIndicators" data-slide-to="<?php echo $i;?>" class="<?php echo $actives;?> ">
                
              </li>
              <?php $i++;} ?>
            </ol>
            <div class="carousel-inner">
              <?php
              $i=0;
              foreach($result as $row){
              $actives='';
              if($i==0){
              $actives='active';
              }
              ?>
              <div class="carousel-item <?php echo $actives;?>">
              <img class="d-block w-100" src="img/<?php echo $row['slider'];?>">
                </a>
              </div>
              <?php 
              $i++;}
              mysqli_close($con);
              //devbanban.com
              ?>

          
        </div>
      </div>
    </div>

    <!-- Optional JavaScript devbanban.com-->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>   
</html>
