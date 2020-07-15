<?php

$mysql_host  = "localhost";
$mysql_user = "root";
$mysql_password = "";
$mysql_db = "quizzer";
$conn = mysqli_connect($mysql_host,$mysql_user,$mysql_password,$mysql_db);
if(!$conn){
    echo mysqli_connect_errno();
}

?>