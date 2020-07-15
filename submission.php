<?php
    require'connect.inc.php';
    require 'config.inc.php';
    if(!LoggedIn()){
        header("Location:index.php");
    }
    $fetch_question = 'SELECT id,answer FROM questions'.$_SESSION['set'];
    $user_id = $_SESSION['user_id'];
    // echo $fetch_question;
    if($fetch_question_result = mysqli_query($conn,$fetch_question)){
        // fetching user inputs if any 
        $fetch_userresponse  = 'SELECT * FROM quesdata'.$user_id;
        if($fetch_userresponse_result = mysqli_query($conn,$fetch_userresponse)){
            $score = 0;
            $storedanswer = mysqli_fetch_all($fetch_question_result,MYSQLI_ASSOC);
            while($userersponse = mysqli_fetch_assoc($fetch_userresponse_result)){
                $ques_no = $userersponse['id']-1;
                if($userersponse['userinput']===$storedanswer[$ques_no]['answer']){
                    $score++;
                }
            }
        }else{
            echo mysqli_error($conn);
        }
    }else{
        echo mysqli_error($conn);
    }

?>
<!DOCTYPE html>
<html>
<head>
    <link rel = 'stylesheet' type='text/css' href="css/submission.css?v=<?php echo time();?>"/>
	<link rel="stylesheet" type="text/css" href="header.css?v=<?php echo time();?>">
	<title></title>
</head>
<body>
    <?php 
    include 'header.php';?>
    <div class="submission">
        <div class="innercnt">
            <div class="leftcnt">asdfasdfasdf</div>
            <div class="rightcnt">
                <h2>Your Score is ...</h2>
                <div><?php echo htmlspecialchars($score)?> out of 20</div>
                <div>
                    <form action="reattempt.php" method="POST">
                        <button id = 'reattemptbtn' name="submit" type="submit">Re-attempt</button>
                    </form> 
                </div>
            </div>
        </div>
        </div>
    </div>
</body>
</html>