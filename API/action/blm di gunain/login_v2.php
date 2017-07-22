<?php

	 if($_SERVER['REQUEST_METHOD']=='POST'){

	 //importing dbConnect.php script 
	 include "../config/koneksi.php";

	 
	 //Getting values 
	 $username = $_POST['email'];
	 $password = $_POST['password'];
	 
	 //Creating sql query
	 $sql = "SELECT * FROM user WHERE user_email='$username' AND user_pw='$password' ";
	 
	 
	 //executing query
	 $result = mysqli_query($con,$sql);
	 
	 //fetching result
	 $check = mysqli_fetch_array($result);
	 
	 //if we got some result 
	 if(isset($check)){
	 //displaying success 
	 echo "success";
	 }else{
	 //displaying failure
	 echo "failure";
	 }
	 mysqli_close($con);
	}

?>