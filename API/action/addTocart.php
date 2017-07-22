<?php
    include "../config/koneksi.php";

    $id_user = $_POST['id_user'];
    $id_product = $_POST['id_product'];

    $sql = "insert into cart (id_user, id_prdk) values ('$id_user', '$id_product')";
    $result=mysqli_query($con, $sql);

    $sql_selectId="select cart from id_prdk like '".$id_product."' ";
    $result2 = mysqli_query($con, $sql_selectId);

    //if(mysqli_num_row($result2) > 0)
    

    if(!$result){
        $code = "insert_false";
        $response = array();
        array_push($response, array("code"=>$code));
        echo json_encode(array("server_response"=>$response));
    }else{
        $code = "insert_true";
        $response = array();
        array_push($response, array("code"=>$code)); //memasukan data ke array
        echo json_encode(array("server_response"=>$response));
    }

    mysqli_close($con);
?>