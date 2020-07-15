<?php 
require 'config.inc.php';

// updating the last question where user is logging out 
$update_current_question_query = 'UPDATE users SET current_ques='.$_SESSION['current_ques'].' WHERE id='.$_SESSION['user_id'];
if($result = mysqli_query($conn,$update_current_question_query)){
    echo 'updating the current ques successful';
}else{
    echo mysqli_error($conn);
}

session_destroy();
header("Location:index.php");
?>