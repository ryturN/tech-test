<?php

include "../conn.php";

        $merk_kendaraan = $_POST['merk_kendaraan'];
        $type_kendaraan = $_POST['type_kendaraan'];
        $status = $_POST['status'];

		
		
			$sql="INSERT INTO data_kendaraan(merk_kendaraan,type_kendaraan,status)
            VALUES ('$merk_kendaraan','$type_kendaraan','$status')";
			$res=mysqli_query($conn, $sql) or die (mysqli_error($conn));
            echo "<script>alert('Pemesanan Berhasil!'); window.location = 'input-kendaraan.php'</script>";
    
    if (!$sql) {
        echo "<script>alert(Error updating driver status: );window.location = 'index.php'</script>" . mysqli_error($conn);
    }



?>