<?php
	//Importing Database Script
	include "../config/koneksi.php";


	$sql="select * from product";
	$result=mysqli_query($con,$sql);

	if($result){
		while($row=mysqli_fetch_array($result)){
			$flag[]=$row;
		}
		print(json_encode($flag));
	}

	mysqli_close($con);
?>