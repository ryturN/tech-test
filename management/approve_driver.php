<?php
include ("../conn.php");    
    $nama = $_POST['nama'];
    $nameConn = mysqli_real_escape_string($conn,$nama);
    // var_dump($nameConn);
    $q = mysqli_query($conn, "update status_driver set status = 'active' where nama='$nameConn'");


    $update_driver_status = mysqli_query($conn, "UPDATE data_driver SET status='active' WHERE nama='$nameConn'");
	echo "<script>alert('Pemesanan Berhasil!'); window.location = 'index.php'</script>";
    if (!$update_driver_status) {
        echo "<script>alert(Error updating driver status: );window.location = 'index.php'</script>" . mysqli_error($conn);
    }

?>