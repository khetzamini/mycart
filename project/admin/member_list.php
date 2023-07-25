<?php
//1. เชื่อมต่อ database:
include('../condb.php');
//2. query ข้อมูลจากตาราง tb_member:
$query = "SELECT * FROM tbl_member ORDER BY m_id DESC" or die("Error:" . mysqli_error());
// echo $query;
// exit;
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($condb, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
echo "<table id='example' class='display table table-bordered table-hover' cellspacing='0'>";
  //หัวข้อตาราง
  echo "
  <thead>
  <tr align='center' class='danger'>
    <th>รหัส</th>
    <th>รูปภาพผู้ใช้งาน</th>
    <th>ชื่อผู้ใช้</th>
    <th>ชื่อ-นามสกุล</th>
    <th>อีเมล์</th>
    <th>เบอร์โทร</th>
    <th>สมัครวันที่-เวลา</th>
    <th>แก้ไข</th>
    <th>ลบ</th>
  </tr>
  </thead>
  ";
  //$i=1;
  while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
    //echo "<td>" .$i .  "</td> ";
    echo "<td align='center'>" .$row["m_id"] .'.'  ."</td> ";
    echo "<td>"."<img src='../mimg/".$row['m_img']."' width='100'>"."</td>";
    echo "<td>" .$row["m_username"] .  "</td> ";
    //echo "<td>" .$row["m_password"] .  "</td> ";
    echo "<td>"
      .$row["m_fname"].$row["m_name"]
      .' '
      .$row["m_lname"];
      echo '<br/>';
      echo 'Level = '.$row["m_level"];
    echo "</td> ";
    echo "<td>" .$row["m_email"] .  "</td> ";
    echo "<td>" .$row["m_phone"] .  "</td> ";
    echo "<td>" .date('d/m/Y H:i:s',strtotime($row["m_datesave"])) .  "</td> ";
    //แก้ไขข้อมูล
    echo "<td align='center'>
      <a href='member.php?ID=$row[0]&act=edit' class='btn btn-warning btn-xs'>แก้ไข</a>
      <br><br>
      <a href='member.php?ID=$row[0]&act=rwd' class='btn btn-primary btn-xs'>เปลี่ยนรหัสผ่าน</a>
    </td> ";
    
    //ลบข้อมูล
    echo "<td align='center'>
      <a href='member_del_db.php?ID=$row[0]' onclick=\"return confirm('คุณต้องการลบข้อมูลนี้หรือไม่?')\" class='btn btn-danger btn-xs'>ลบ</a></td> ";
    echo "</tr>";
    //$i++;
    }
  echo "</table>";
  //5. close connection
  mysqli_close($condb);
  ?>