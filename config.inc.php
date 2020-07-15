<?php
require 'connect.inc.php';
ob_start();
session_start();
$current_file = $_SERVER['SCRIPT_NAME'];


function LoggedIn(){
    if(isset($_SESSION['user_id']) && !empty($_SESSION['user_id'])){
        return true;
    }else{
        return false;
    }
}

function getUserField($field){
    global $conn;
    $query ="SELECT $field FROM users WHERE id='".$_SESSION['user_id']."'";

    if($result = mysqli_query($conn,$query)){
        $data = mysqli_fetch_assoc($result);
        return $data[$field];
    }else{
        echo 'fetching field failed'.mysqli_error($conn);
    }
}

function nextQuestion(){
    $_SESSION['current_ques'] = $_SESSION['current_ques']%20 + 1;

}
function previousQuestion(){
    if($_SESSION['current_ques']==1){
        $_SESSION['current_ques'] =20;
    }else
    $_SESSION['current_ques'] = $_SESSION['current_ques'] - 1;
}


?>