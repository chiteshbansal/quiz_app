<?php
    require 'config.inc.php';
    require 'connect.inc.php';
    include 'header.php';
    if(LoggedIn()){
        echo 'You are already logged in ';
    }else{
    if(isset($_POST['submit'])){
        $username = $_POST['username'];
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $password = $_POST['password'];
        $password_again = $_POST['password_again'];
        $email = $_POST['email'];
        $dob = $_POST['dob'];
        $gender = $_POST['gender'];
        if($password!==$password_again){
            echo "password don't match";
        }else{
            $query = "SELECT username FROM  users WHERE username = '".$username."'";
            $query_run = mysqli_query($conn,$query);
            if(mysqli_num_rows($query_run)>0){
                echo 'username already exits';
            }else{
                $username = mysqli_real_escape_string($conn,$username);
                $password = mysqli_real_escape_string($conn,$password);
                $firstname = mysqli_real_escape_string($conn,$firstname);
                $lastname = mysqli_real_escape_string($conn,$lastname);
                $email = mysqli_real_escape_string($conn,$email);                
                $dob = mysqli_real_escape_string($conn,$dob);                
                $gender = mysqli_real_escape_string($conn,$gender);
                $set = rand(1,4);                
                $password_hash = md5($password);
                $newuser_query = "INSERT INTO users(username,password,firstname,lastname,email,dob,gender,QuesSet) VALUES ('$username','$password_hash','$firstname','$lastname','$email','$dob','$gender','$set')";
                if($newuser_query_run = mysqli_query($conn,$newuser_query)){
                    $id ;
                    $query = "SELECT id FROM users WHERE username='".$username."' AND password='".$password_hash."'";
                    if($query_run = mysqli_query($conn,$query)){
                        $data = mysqli_fetch_assoc($query_run);
                        print_r($data);
                        $id = $data['id'];
                        $id = 'quesdata'.$id;
                        $createtablequery = 'CREATE TABLE '.$id.' (
                            id INT(11) AUTO_INCREMENT PRIMARY KEY,
                            userinput INT(11) NOT NULL
                        )';
                       
                        if($createtablequery_run = mysqli_query($conn,$createtablequery)){
                            $inserting_row_query = 'INSERT INTO '.$id.' VALUES("","")';
                            for($i = 0;$i<20;$i++){
                                if($inserting_row_query_run == mysqli_query($conn,$inserting_row_query)){
                                }else{
                                    echo mysqli_error($conn);
                                }

                            }
                            header("Location:index.php");
                        }else{
                            echo mysqli_error($conn);
                        }
                    }
                    
                    
                }else{
                    echo 'Sorry we are facing some problem , try again later';
                }

            }
        }
    }else if(isset($_POST['login'])){
        header("Location:index.php");
    }
?>
<!<!DOCTYPE>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="header.css?v=<?php echo time();?>"/>
        <link rel="stylesheet" type="text/css" href="css/loginform.css?v=<?php echo time();?>">
        <title>

        </title>
    </head>

    <body>
        <div class="registerformcnt">
            
            <div class="registerform loginform">
                <div class="register_left">
                <div><h2>Hello , Friend...</h2></div>
                <form action="Register.php" method="POST">
                    <div class="formelement">
                        First Name:
                        <input type="text" name="firstname" required/>
                    </div>
                    <div class="formelement">
                        Last Name:
                        <input type="text" name="lastname" required/></div>
                    <div class="formelement">
                        UserName:
                        <input type="text" name="username" required/>
                    </div>
                    <div class="formelement">
                        Password:
                        <input type="password" name="password" required/>
                    </div>
                    <div class="formelement">
                        Password Again:
                        <input type="password"  name="password_again" required/>
                    </div>
                    <div class="formelement">
                        Email:
                        <input type="email" name="email" required/>
                    </div>
                    <div class="formelement">
                        Date of Birth :
                        <input type="date" name="dob" required/>
                    </div>
                    <div class="formelement">
                        Gender
                        <input type="radio" name="gender" value="Male" >Male
                        <input type="radio" name="gender" value="Female" >Female
                        <input type="radio" name="gender" value="Others" >Others
                    </div>
                    <input type="submit" name="submit" value="Register" />
                </form>
                <form action="Register.php" method="POST">
                        <input type="submit" name="login" value="Login"/>
                </form>
            </div>
            <div class="register_right">
                    Welcome to quizzer,
                    Glad to see you
                </div>
            </div>
            <div class="formimgcnt"><img src="loginform2.jpg" /></div>
        </div>
    </body>
    </html>
<?php
    }

?>