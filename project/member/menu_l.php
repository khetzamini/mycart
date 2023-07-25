<img src="../mimg/<?php echo $m_img;?>" alt="" width="100%">
<br><br>
Last Login : 
<?php echo date('d/m/Y', strtotime($lastlogin));?>
<br>
<div class="list-group">
	<a href="index.php" class="list-group-item active">
		หน้าหลัก
	</a>
	<a href="index.php?act=edit" class="list-group-item">
		แก้ไขโปรไฟล์
	</a>
	<a href="index.php?act=pwd" class="list-group-item">
		แก้ไขรหัสผ่าน
	</a>
	<a href="../logout.php" onclick="return confirm('Confirm?');" class="list-group-item list-group-item-danger">ออกจากระบบ</a>
</div>