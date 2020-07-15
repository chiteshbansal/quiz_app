<?php
    // require 'config.inc.php';
    $username = "Guest";
    if(LoggedIn()){
        $username = getUserField('firstname');
    }

?>

<div class="header">
    <div class="appname">Quizzer</div>
    <div class="user">
        <div><span class="username"><?php echo $username?></span></div>
        <div><img src="download.jpg" alt='username' width="30" height="30"/></div>
    </div>
    <?php if(LoggedIn()){?>
        <div class="logout" > <a href= "LogOut.php"> Log Out </a></div>
    <?php }?>
</div>
