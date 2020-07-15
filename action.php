<?php
require 'config.inc.php';
require 'connect.inc.php';
$user_id = $_SESSION['user_id'];
$userquestable = 'quesdata'.$user_id;
if(isset($_POST['submit'],$_POST['answer'])){
    if(!empty($_POST['answer'])){
        $user_input  = $_POST['answer'];}
    else{
        $user_input = 0;
    }
        $ques_id = $_POST['question_id'];
        echo 'userinput is '.$_POST['answer'].'<br>';
        $update_answer_query = 'UPDATE quesdata'.$user_id.' SET userinput ="'.$user_input.'" WHERE id='.$ques_id;
        echo $update_answer_query;
        if($update_answer_query_run = mysqli_query($conn,$update_answer_query)){
            echo 'answer updated successfully';
            header("Location:index.php");
        }else{
            echo mysqli_error($conn);
            header("Location:index.php");
            
        }
        //UPDATE `quesdata4` SET `userinput` = '1' WHERE `quesdata4`.`id` = 1;
}else{
    header("Location:index.php");
}


if(isset($_POST['questionchange']) && $_POST['token'] == $_SESSION['token']){
    switch($_POST['questionchange']){
        case 'next':
            $_SESSION['token'] = null;
            nextQuestion();
            header("Location:index.php");
        break;
        case 'previous':
            $_SESSION['token'] = null;
            previousQuestion();
            header("Location:index.php");
        break;
        default:
            break; 
    }
}

?>