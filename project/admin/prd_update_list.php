<?php
//2. query ข้อมูลจากตาราง tb_member: 
$query = "SELECT l.*,m.m_name
FROM tbl_prd_update_log as l
INNER JOIN tbl_member as m ON l.ref_m_id=m.m_id
WHERE l.ref_p_id=$ID
ORDER BY l.lid DESC" 
or die("Error:" . mysqli_error());

// echo $query;
// exit; 

//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result . 
$result = mysqli_query($condb, $query); 
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล: 
echo '<h4> ประวัติการแก้ไขสินค้า</h4>';
echo "<table id='example1' class='display table table-bordered table-hover' cellspacing='0'>";
//หัวข้อตาราง
echo "
<thead>
<tr align='center' class='danger'>
<th width='5%'>รหัส</th>
<th width='70%'>แก้โดย</th>
<th width='25%'>ว/ด/ป</th>
</tr>
</thead>
";
while($row = mysqli_fetch_array($result)) { 
  echo "<tr>";
  echo "<td align='center'>" .$row["lid"] .'.'."</td> "; 
  echo "<td>" .$row["m_name"] .  "</td> "; 
  echo "<td>" .date('d-m-Y H:i:s',strtotime($row["l_date_save"])) .  "</td> ";
  echo "</tr>";
}
echo "</table>";
//5. close connection
mysqli_close($condb);
?>