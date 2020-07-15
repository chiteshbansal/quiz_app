<?php
$error = "";
// require 'config.inc.php';
if(isset($_POST['submit'])){
    $username = mysqli_real_escape_string($conn,$_POST['username']);
    $password = mysqli_real_escape_string($conn,$_POST['password']);
    $password_hash = md5($password);
    
    $query = "SELECT id,current_ques,QuesSet FROM users WHERE username='".$username."' AND password='".$password_hash."'";
    if($query_run = mysqli_query($conn,$query)){
        if(mysqli_num_rows($query_run)==1){
            $data = mysqli_fetch_assoc($query_run);
           $_SESSION['user_id'] = $data['id'];
           $_SESSION['current_ques'] = $data['current_ques'];
              $_SESSION['set'] = $data['QuesSet'];
           header("Location:index.php");
        }else{
            $error = 'username /password invalid';
        }
    }else{
        echo mysqli_error($conn);
    }
}else if(isset($_POST['register'])){
    header("Location:Register.php");
}
?>



<div class="loginformcnt">
<div class="loginform">
        <div class="Login_left">
            <div><h2>Hello , Friend...</h2></div>
            <form action = "<?php echo $current_file?>" method="POST">
                <div  class="formelement">
                    <label>Username</label>
                    <input type="text" name="username" placeholder="Enter the username" required/>
                </div>
                <div class="formelement">
                    <label>Password</label>
                    <input type="password" name="password" placeholder="Enter the password "required/>
                </div>
                <div style="color:red;"><?php echo $error?></div>
                <div class="'formbuttons">
                    <input type='submit'name="submit" value="Login"/>
                </div>
                 
            </form> 
            <form action = "<?php echo $current_file?>" method="POST">
                <input type='submit' value='Register' name="register"/>
            </form>  
        </div>
        <div class="Login_right">
            Welcome Back....
        </div>
    </div>
    <div class="formimgcnt"><img src="loginform1.jpg" /></div>
</div>
