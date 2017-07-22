<?php

//Panggil Koneksi
include "../config/koneksi.php";

//Getting values
$id_user = $_POST['id_user'];
$id_produk = $_POST['id_produk'];
$id_toko = $_POST['id_toko'];
$penerima = $_POST['id_penerima'];
$pembayaran = $_POST['id_pembayaran'];
$jumlah = $_POST['jumlah'];
$note = $_POST['note'];
//$notelp = $_POST['notelp'];

$respone = array();

array_push($respone, array($id_user, $id_produk, $id_toko, $pembayaran, $note, $jumlah));
		//encode dan masukan array response ke server_response
echo json_encode(array("server_response"=>$respone));

//Creating an sql query
$sql = "INSERT INTO order2 (id_user, id_product, id_toko, metode_payment, note_product, quantity) 
                    VALUES ('$id_user','$id_produk','$id_toko','$pembayaran','$note','$jumlah')";
//$sql2 = "INSERT INTO order2 (id_user, id_product, id_toko, quantity) VALUES ('$id_user','$id_produk','$id_toko','$jumlah')";

//Executing query ke database
if(mysqli_query($con,$sql)){
    $code="succes";
    array_push($respone, array("code"=>$code));
    echo json_encode(array("server_respon"=>$respone));    
}else{
    $code= "Something error to server.";
    array_push($respone, array("code"=>$code));
    echo json_encode(array("server_respon"=>$respone));
}

//Closing the database
mysqli_close($con);


?>