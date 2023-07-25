<?php
$query = "SELECT * FROM tbl_comment ORDER BY c_id DESC" or die("Error:" . mysqli_error());
$result = mysqli_query($condb, $query);  

echo "<table id='example' class='display table table-bordered table-hover' cellspacing='0'>";
//หัวข้อตาราง
echo "
<thead>
<tr align='center' class='danger'>
<th width='5%'>รหัส</th>
<th width='50%'>ความคิดเห็น</th>
<th width='15%'>สถานะ</th>
<th width='25%'>วันที่-เวลา</th>
<th width='5%'>แก้ไข</th>
</tr>
</thead>
";
while($row = mysqli_fetch_array($result)) { 
  echo "<tr>";
  echo "<td align='center'>" .$row["c_id"] .'.'. "</td> "; 
  echo "<td>"; 
  echo $row["c_detail"]; 
  echo "<a href='prd.php?ID=$row[ref_p_id]&act=edit' class='btn btn-success btn-xs' target='_blank'>เปิดดู</a>";
  echo "</td>";
  echo "<td>"; 
  $c_status = $row["c_status"];
  if($c_status==0){
    echo '<font color="#ef8204">';
    echo 'รออนุมัติ';
    echo '</font>';
  }else{
    echo '<font color="green">';
    echo 'อนุมัติ';
    echo '</font>';
  }
  echo "</td> ";
  echo "<td>" .$row["c_date"] .  "</td> "; 
  //แก้ไขข้อมูล
  echo "<td>
  <a href='comment_status_db.php?c_id=$row[0]&c_status=$c_status' class='btn btn-warning btn-xs'>ปรับสถานะ</a></td> ";
  echo "</tr>";
}
echo "</table>";
//5. close connection
mysqli_close($condb);
?>