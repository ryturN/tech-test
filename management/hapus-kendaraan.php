<?php
include "../conn.php";
$id = $_GET['kd'];

$query = mysqli_query($conn, "DELETE FROM data_kendaraan WHERE id='$id'");
if ($query){
	echo "<script>alert('Data Berhasil dihapus!'); window.location = 'kendaraan.php'</script>";	
} else {
	echo "<script>alert('Data Gagal dihapus!'); window.location = 'kendaraan.php'</script>";	
}
?>