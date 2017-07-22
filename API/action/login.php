<?php
include "../config/koneksi.php";

	 $username = $_POST["email"];
	 $password = $_POST["password"];


	 $sql="SELECT * FROM user WHERE user_email like '$username' AND user_pw  like '$password' ";
	 $result= mysqli_query($con, $sql);

	 $respone= array();

	 if(mysqli_num_rows($result) > 0){

		//$result=mysqli_query($con, $sql);
		$code="login_true";
		$message= "Login Success, Welcome.";
		$row= mysqli_fetch_array($result);

		//memanggil nama pada database
		$id=$row[0];
		$email=$row[1];
		$name= $row[3];
		$jk=$row[4];
		$notelp=$row[5];
		

		//masukan variable ke array response
		array_push($respone, array("code"=>$code, "message"=>$message, "id"=>$id, "name"=>$name, "email"=>$email, "jk"=>$jk, "notelp"=>$notelp));
		//encode dan masukan array response ke server_response
		echo json_encode(array("server_response"=>$respone));
		
		//catatan : harus menggunakan echo atau printf untuk bisa di baca di android datanya
		
	}else{
		
		$code="login_false";
		$message= "Login gagal, coba lagi.";

		//masukan variable ke array response
		array_push($respone, array("code"=>$code, "message"=>$message));
		//encode dan masukan array response ke server_response
		echo json_encode(array("server_response"=>$respone));
		

	}

	mysqli_close($con);
?>