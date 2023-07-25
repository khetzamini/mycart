<?php
date_default_timezone_set('Asia/Bangkok');
$dn = date('Y-m-d');
$dd = date('2019-03-4');
$dx = round(abs(strtotime($dn) - strtotime($dd))/60/60/24);
//echo 'วัน';
echo 'current date ' .$dn;
echo '<br>';
echo 'due date '.$dd;
echo '<br>';
if($dx==2){
    echo '<font color="orange">';
	echo 'warning';
	echo '</font>';
}elseif($dx==1){
	echo '<font color="red">';
	echo 'due date';
	echo '</font>';
}else{
	echo '<font color="green">';
  echo 'มากกว่า 2 วัน';
  echo '</font>';
}



echo '<hr>';

$strStartDate =date('Y-m-d');
$strNewDate = date ("Y-m-d", strtotime("+60 day", strtotime($strStartDate)));
echo $strStartDate;
echo '<br>';
echo ' + 60 ว้น';
echo '<br>';
echo $strNewDate;
echo '<hr>';
?>