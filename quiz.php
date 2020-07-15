<?php
$user_id = $_SESSION['user_id'];
$userquestable = 'quesdata'.$user_id;

$fetch_question = 'SELECT * FROM questions'.$_SESSION['set'].' WHERE id='.$_SESSION['current_ques'];

// echo $fetch_question;
if($fetch_question_result = mysqli_query($conn,$fetch_question)){
    // fetching user inputs if any 
    $fetch_userresponse  = 'SELECT * FROM quesdata'.$user_id;
    if($fetch_userresponse_result = mysqli_query($conn,$fetch_userresponse)){
        $userresponse_data = mysqli_fetch_all($fetch_userresponse_result,MYSQLI_ASSOC);
        // print_r($userresponse_data);
    }else{
        echo mysqli_error($conn);
    }

    $question_num = 1;
?>
    <div class="Quiz">
        <div class="leftcnt">
        <div class="questionstatus">
            <div class="instru">
                <div class="unvisited"></div>
                <div>Unvisited</div>
                <div class="visited"></div>
                <div>Attempted</div>
            </div>
                 <?php
                 
                    for($i = 0;$i<20;$i++){
                ?>
                        <div class = 
                        <?php
                            switch($userresponse_data[$i]['userinput']){
                                case 0:
                                    echo 'unvisited';
                                    break;
                                default:
                                    echo 'visited';
                                };
                        ?>>
                            <?php echo $i+1;?>
                        </div>
                    <?php }?> 
            </div>
        </div> 
        <div class="rightcnt">
<?php
    if($fetched_data = mysqli_fetch_assoc($fetch_question_result)){
       $options_string = $fetched_data['options'];
       $options = explode("," ,$options_string);
       $options_num = 1;
        if($fetched_data['id']<=5){
            $level = 1;
        }else if($fetched_data['id']<=10){
            $level=2;
        }else if($fetched_data['id']<=15){
            $level=3;
        }else if($fetched_data['id']<=20){
            $level=4;
        }
?>
            <div class="current_level">
                <div class="levelcnt"><span class="level"><?php echo "Level - ".$level;?></span></div>
                <div>
                <form action="submission.php" method="POST">
                    <input type="submit" name="submit_test" value="Submit Test"/>
                    </form>
                </div>
            </div>
            <div  class="Ques">
                <div class="ques" ><?php echo $fetched_data['id'].'.  '.$fetched_data['Ques']; ?></div>
                <form action="action.php" method="POST">
                <?php 
                    foreach($options as $option){
                        $rownum = $fetched_data['id']-1; 
                ?>
                    <div class="optioncnt <?php if($options_num==$userresponse_data[$rownum]['userinput']){echo "  selected_option";}?>">
                        <div>
                            <input type="radio" name="answer" value="<?php echo $options_num ?>"\
                        <?php
                        
                            if(mysqli_num_rows($fetch_userresponse_result)>=$rownum+1 && $options_num == $userresponse_data[$rownum]['userinput']){
                                echo "checked";
                            }  
                        ?> ></div>
                        <div class="option"><?php echo $option?></div>
                        <input type="hidden" name="question_id" value="<?php echo $fetched_data['id'];?>"/>
                    </div>
                    <?php $options_num++;}?>
                
                <div class="submitbtn"><button name="submit">Submit</button></div>
                </form>
                
            </div>
                <?php $question_num++;} ?>
                        <form class="pagechangeform" action="action.php" method="POST">
                            <?php $_SESSION['token'] = md5(rand(0,1000000).time());?>
                            <input type="hidden" name="token" value="<?php echo $_SESSION['token']?>"/>
                            <div><button name="questionchange" type="submit" value='previous'>Previous</button></div>
                            <div><button name="questionchange" type="submit" value="next">Next</button></div>
                        </form>   
            
            </div>

    </div>
<?php }?>