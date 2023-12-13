<?php
include "../conn.php";

$query = "SELECT `id`, `no_anggota`, `nama`, `merk_kendaraan`, `type_kendaraan`, `tanggal_pemesanan`, `tanggal_selesai`, `status` FROM `status_driver` ORDER BY `id`";
$result = mysqli_query($conn, $query);

// Open a file for writing
$file = fopen('status_driver.csv', 'w');

// Add a row for the column names
fputcsv($file, array('ID', 'No Anggota', 'Nama', 'Merk Kendaraan', 'Type Kendaraan', 'Tanggal Pemesanan', 'Tanggal Selesai', 'Status'));

// Add a row for each driver
while($row = mysqli_fetch_assoc($result)) {
    fputcsv($file, array($row['id'], $row['no_anggota'], $row['nama'], $row['merk_kendaraan'], $row['type_kendaraan'], $row['tanggal_pemesanan'], $row['tanggal_selesai'], $row['status']));
}

// Close the file
fclose($file);

// Send the file to the browser for download
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="status_driver.csv"');
readfile('status_driver.csv');
?>