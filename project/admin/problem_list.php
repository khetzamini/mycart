<?php
$query = "SELECT * FROM tbl_problem ORDER BY p_id DESC" or die("Error:" . mysqli_error());
$result = mysqli_query($condb, $query); 

echo "<table id='example' class='display table table-bordered table-hover' cellspacing='0'>";
//หัวข้อตาราง
echo "
<thead>
<tr align='center' class='danger'>
<th width='5%'>รหัส</th>
<th width='50%'>รายการปัญหา</th>
<th width='15%'>อีเมล</th>
<th width='10%'>เบอร์โทร</th>
<th width='20%'>วันที่-เวลา</th>
</tr>
</thead>
";
while($row = mysqli_fetch_array($result)) { 
  echo "<tr>";
  echo "<td align='center'>" .$row["p_id"] .'.'. "</td> "; 
  echo "<td>" .$row["p_detail"] .  "</td> "; 
  echo "<td>" .$row["p_email"] .  "</td> "; 
  echo "<td>" .$row["p_phone"] .  "</td> "; 
  echo "<td>" .date('d/m/Y H:i:s',strtotime($row["p_datesave"])) .  "</td> "; 
  echo "</tr>";
}
echo "</table>";
//5. close connection
mysqli_close($condb);
?>