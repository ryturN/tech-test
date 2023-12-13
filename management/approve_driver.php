<?php
session_start();
if (empty($_SESSION['username'])){
	header('location:../index.php');	
} 
	include "../conn.php";

include ("../conn.php");    
$nama = $_POST['nama'];
$nameConn = mysqli_real_escape_string($conn,$nama);
$accountId = $_SESSION['username'];
// var_dump($accountId);

// Get the current approval count of the driver
// $result = mysqli_query($conn, "SELECT approval_count FROM status_driver WHERE nama='$nameConn'");
// $row = mysqli_fetch_assoc($result);


// Increment the approval count
$checkApproval = mysqli_query($conn, "SELECT * FROM approvals WHERE driver_name='$nameConn' AND username='$accountId'");
if (mysqli_num_rows($checkApproval) > 0 ) {
    echo "<script>alert('You have already approved this driver.'); window.location = 'index.php'</script>";
} else {
    // Get the current approval count of the driver
    mysqli_query($conn, "INSERT INTO approvals (driver_name, username) VALUES ('$nameConn', '$accountId')");
    $result = mysqli_query($conn, "SELECT approval_count FROM status_driver WHERE nama='$nameConn'");
    $row = mysqli_fetch_assoc($result);
    $approval_count = $row['approval_count'];
    
    // Increment the approval count
    $approval_count++;
    
    // If approval count is 2 or more, change status to 'active'
    if ($approval_count >= 2) {
        $q = mysqli_query($conn, "UPDATE status_driver SET status='active', approval_count=$approval_count WHERE nama='$nameConn'");
        $update_driver_status = mysqli_query($conn, "UPDATE data_driver SET status='active' WHERE nama='$nameConn'");
        echo "<script>alert('Pemesanan Berhasil!'); window.location = 'index.php'</script>";
    } else {
        $q = mysqli_query($conn, "UPDATE status_driver SET approval_count=$approval_count WHERE nama='$nameConn'");
        echo "<script>alert('Pemesanan membutuhkan satu persetujuan lagi.'); window.location = 'index.php'</script>";
    }
}
if (!$q || !$update_driver_status) {
    echo "<script>alert('Error updating driver status: ');" . mysqli_error($conn) . "window.location = 'index.php'</script>";
}
?>