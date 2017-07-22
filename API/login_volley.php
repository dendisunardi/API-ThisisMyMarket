<?php
	
	//include "koneksi.php";

	$user="root";
	$password="";
	$host="localhost";
	$db_nm="db_m_market";
	$con=mysqli_connect($host, $user, $password, $db_nm);

	$sql="select * from user;";
	$result=mysqli_query($con, $sql);
	if(mysqli_num_rows($result)>0){
		//$row=mysqli_fetch_assoc($result);
		//echo json_encode(array("Email"=>$row["user_email"], "Name"=>$row["user_nm"],"Notelp"=>$row["user_notelp"]));

		//$result=mysqli_query($con, $sql);
		$code="login_true";
		$row= mysqli_fetch_array($result);

		//memanggil nama pada database
		$id=$row[0];
		$email=$row[1];
		$name= $row[3];
		$jk=$row[4];
		$notelp=$row[5];
		

		//masukan variable ke array response
		array_push($respone, array("code"=>$code, "id"=>$id, "name"=>$name, "email"=>$email, "jk"=>$jk, "notelp"=>$notelp));
		//encode dan masukan array response ke server_response
		echo json_encode(array("server_response"=>$respone));

		
	}

	

?>