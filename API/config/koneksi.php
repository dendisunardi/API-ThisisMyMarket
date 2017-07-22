<?php
$host = "localhost"; // Nama hostnya
$user = "root"; // Username
$pass = ""; // Password (Isi jika menggunakan password)
$db="db_m_market";
$con=mysqli_connect($host, $user, $pass, $db) or die('Unable to Connect');
//mysql_select_db($database)or die ("database tidak terkoneksi"); // Koneksi ke MySQL
?>