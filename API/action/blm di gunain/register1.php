<?php
	include "../config/koneksi.php";
	//[""] diambil dari android yg ada " " nya
		$email=$_POST['email'];
		$nama=$_POST['nama'];
		$pasword=$_POST['pasword'];
		$notelp=$_POST['notelp'];
		$jk=$_POST['jk'];

		$sql="select user_email from user where user_email like '".$email."' ";

		$result=mysqli_query($con, $sql);
		$response = array();
		if(mysqli_num_rows($result)>0){
			$code="reg_false";
			$message="user sudah ada.";
			array_push($response, array("code"=>$code, "message"=>$message));
			echo json_encode($response);
		}else{
			$sql="insert into user (user_email, user_pw, user_nm, user_jk, user_notelp) values ('".$email."','".$pasword."','".$nama."','".$notelp."')";
			$result = mysqli_query($con, $sql);
			$code="reg_true";
			$message="berhasil mendaftar.";
			array_push($response, array("code"=>$code, "message"=>$message));
			echo json_encode($response);
		}

		mysqli_close($con);

?>