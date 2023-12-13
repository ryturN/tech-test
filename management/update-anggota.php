<?php
$namafolder="gambar_anggota/"; //tempat menyimpan file

include "../conn.php";

if (!empty($_FILES["nama_file"]["tmp_name"]))
{
        $jenis_gambar=$_FILES['nama_file']['type'];
        $id = $_POST['id'];
        $no_anggota = $_POST['no_anggota'];
        $nama = $_POST['nama'];
        $jk = $_POST['jk'];
        $ttl = $_POST['ttl'];
        $alamat = $_POST['alamat'];	
		
	if($jenis_gambar=="image/jpeg" || $jenis_gambar=="image/jpg" || $jenis_gambar=="image/gif" || $jenis_gambar=="image/x-png")
	{			
		$gambar = $namafolder . basename($_FILES['nama_file']['name']);		
		if (move_uploaded_file($_FILES['nama_file']['tmp_name'], $gambar)) {
			$sql="UPDATE data_driver SET no_anggota='$no_anggota', nama='$nama', jk='$jk', ttl='$ttl', alamat='$alamat', foto='$gambar' WHERE id='$id'";
			$res=mysqli_query($conn,$sql) or die (mysqli_error($conn));
			echo "Gambar berhasil dikirim ke direktori".$gambar;
            echo "<h3><a href='anggota.php'> Input Lagi</a></h3>";	   
		} else {
		   echo "<p>Gambar gagal dikirim</p>";
		}
   } else {
		echo "Jenis gambar yang anda kirim salah. Harus .jpg .gif .png";
   }
} else {
	echo "Anda belum memilih gambar";
}

?>