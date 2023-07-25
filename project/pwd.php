<?php
$pwd ='user';
echo 'md5 = '.md5($pwd);
echo '<br>';
echo 'sha1 = '.sha1($pwd);
echo '<br>';
echo 'hash sha256 = '.hash('sha256',$pwd);
echo '<br>';
echo 'hash sha512 = '.hash('sha512','$pwd');
?>
