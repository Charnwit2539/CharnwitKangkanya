<?php
    require 'connect.php';
    $id = $_POST['ID'];
    $sql = "Select * From product where p_id=$id";
    $query = mysqli_query($conn,$sql);
    $row = mysqli_fetch_array($query);
    
    $arr = array();
    $arr['url'] = $row['p_pic'];
    $arr['title']= $row['p_name'];
    $arr['det']=$row['p_detail'];
    $arr['price']=$row['p_price'];
    
    echo json_encode($arr);
?>