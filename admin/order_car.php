<?php 
include ("../conn.php");
$nama = $_POST['driver'];
$car = $_POST['car'];
$date = $_POST['date_finish'];
$nameConn = mysqli_real_escape_string($conn,$nama);
$carConn = mysqli_real_escape_string($conn,$car);

$q = mysqli_query($conn, "select * from data_driver where id='$nameConn'");
$c = mysqli_query($conn, "select * from data_kendaraan where merk_kendaraan='$carConn'");
$row = mysqli_fetch_array ($q);
$rowC = mysqli_fetch_array ($c);

$sql = "INSERT INTO status_driver (no_anggota, nama, merk_kendaraan, type_kendaraan, tanggal_pemesanan, tanggal_selesai, status) VALUES (?, ?, ?, ?, NOW(), ?, 'pending')";

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssss", $row['no_anggota'], $row['nama'], $rowC['merk_kendaraan'], $rowC['type_kendaraan'], $date);

if ($stmt->execute()) {
	echo "<script>alert('Pemesanan Berhasil!'); window.location = 'index.php'</script>";
    $update_driver_status = mysqli_query($conn, "UPDATE data_driver SET status='pending' WHERE id='$nameConn'");
    if (!$update_driver_status) {
        echo "<script>alert(Error updating driver status: );window.location = 'index.php'</script>" . mysqli_error($conn);
    }
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$stmt->close();
?>