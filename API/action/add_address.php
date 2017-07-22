<?php

    include "../config/koneksi.php";

    $id_user = $_POST['id_user'];
    $name = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $provinsi = $_POST['provinsi'];
    $notelp = $_POST['notelp'];

    $sql= "insert into adress (id_user, nm_penerima, alamat, provinsi, notelp) values ('$id_user','$name', '$alamat', '$provinsi', '$notelp')";
    $result = mysqli_query($con, $sql);

    if(!$result){
        $respone= array();
		$code = "input_false";
		$message = "Server trouble.";
		array_push($respone, array("code"=>$code, "message"=>$message));
		echo json_encode(array("server_response"=>$respone));
					
	}else{
		$respone= array();
		$code = "input_true";
		$message = "Berhasil menambahkan";
        array_push($respone, array("code"=>$code, "message"=>$message));
		echo json_encode(array("server_response"=>$respone));  
    }
    mysqli_close($con);
?>