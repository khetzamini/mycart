<?php
$query = "
SELECT * FROM tbl_comment 
WHERE ref_p_id=$p_id 
AND c_status=1
ORDER BY c_date DESC" or die("Error:" . mysqli_error());
$result = mysqli_query($conn, $query); 

echo "<table id='example' class='display table table-bordered table-hover' cellspacing='0'>";
//หัวข้อตาราง
echo "
<thead>
<tr align='center' class='danger'>
<th width='5%'>รหัส</th>
<th width='75%'>ความคิดเห็น</th>
<th width='20%'>วันที่-เวลา</th>
</tr>
</thead>
";
while($row = mysqli_fetch_array($result)) { 
  echo "<tr>";
  echo "<td align='center'>" .$i +=1 .'.'. "</td> "; 
  //echo "<td align='center'>" .$row["c_id"] .'.'. "</td> "; 
  echo "<td>" .$row["c_detail"] .  "</td> "; 
  echo "<td>" .date('d/m/Y H:i:s',strtotime($row["c_date"])) .  "</td> "; 
  echo "</tr>";
}
echo "</table>";
//5. close connection
mysqli_close($conn);
?>