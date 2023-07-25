<?php

//2. query ข้อมูลจากตาราง tb_member: 
$query = "
SELECT DATE_FORMAT(log_date, '%M-%Y') AS mydate, 
COUNT(ref_m_id) AS total 
FROM tbl_login_log
GROUP BY DATE_FORMAT(log_date, '%m%')
" or die("Error:" . mysqli_error());

// echo $query;
// exit; 

//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result . 
$result = mysqli_query($condb, $query); 
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล: 
echo '<h4> ประวัติการเข้าสู่ระบบผู้ใช้รายเดือน</h4>';
echo "<table id='example' class='display table table-bordered table-hover' cellspacing='0'>";
//หัวข้อตาราง
echo "
<thead>
<tr align='center' class='danger'>
<th width='20%'>เดือน</th>
<th width='80%'><center>รวม (ครั้ง)</center></th>
</tr>
</thead>
";
while($row = mysqli_fetch_array($result)) { 
  echo "<tr>";
  echo "<td>" .$row["mydate"] .  "</td> ";
  echo "<td align='center'>" .$row["total"] .  "</td> "; 
  
  echo "</tr>";
}
echo "</table>";
//5. close connection
mysqli_close($condb);
?>