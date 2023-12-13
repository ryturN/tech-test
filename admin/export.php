<?php
include "../conn.php";

$query = "SELECT * FROM `status_driver`";
$result = mysqli_query($conn, $query);

// Open a file for writing
$file = fopen('status_driver.csv', 'w');

// Add a row for the column names
fputcsv($file, array('ID', 'No Anggota', 'Nama', 'Merk Kendaraan', 'Type Kendaraan', 'Tanggal Pemesanan', 'Tanggal Selesai', 'Status'));

// Add a row for each driver
while($row = mysqli_fetch_assoc($result)) {
    fputcsv($file, $row);
}

// Close the file
fclose($file);

// Send the file to the browser for download
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="status_driver.csv"');
readfile('status_driver.csv');
?>