<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel='stylesheet' href="header.css?v=<?php echo time();?>" >
    <link type="text/css" rel='stylesheet' href="css/loginform.css?v=<?php echo time();?>" >
    <link type="text/css" rel='stylesheet' href="css/question.css?v=<?php echo time();?>" >
	<title></title>
</head>
<body>

<?php
require 'config.inc.php';
include 'header.php';
$loginStatus = LoggedIn();
if($loginStatus){
    include 'quiz.php';
}else{
    include "LoginForm.php";
}
?>

</body>
</html>