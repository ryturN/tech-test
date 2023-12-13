<?php
$namafolder="gambar_buku/"; //tempat menyimpan file

include "../conn.php";


        $id = $_POST['id'];
        $status = $_POST['status'];	
        
		

			$sql="UPDATE data_kendaraan SET `status`='$status' WHERE `id` ='$id'";
			$res=mysqli_query($conn,$sql) or die (mysqli_error($conn));
         echo "<script>alert('Berhasil!'); window.location = 'kendaraan.php'</script>";
 


?>