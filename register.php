
<?php

require 'config/config.php';
require 'includes/form_handlers/register_handler.php';
require 'includes/form_handlers/login_handler.php';


?>



<html>
<head>
<title>Welcome to OMAIR</title>
<link rel="stylesheet" type="text/css" href="assets/css/register_style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="assets/js/register.js"></script>
</head>
<body>
     <?php
       if(isset($_POST['register_button'])){
           echo'
             <script>
               $(document).ready(function(){
                   $("#first").hide();
                   $("#second").show();
               });
             </script>
          ';
       } 
     ?>
<div class="wrapper">

<div class="login_box">


<div class="login_header">
<h1>OMAIR</h1>
Login or sign up below
</div>


<div id="first">
  <form action="register.php" method="POST">
     <input type="text" name="log_email" placeholder="Email Address" value="
             <?php 
               if(isset($_SESSION['log_email'])){
                     echo $_SESSION['log_email'];
                 }
             ?>
        " required>
        <br>
     <input type="password" name="log_password" placeholder="Password">
        <br>
     <input type="submit" name="login_button" value="Login">
        <br>
     <a href="#" id="signup" class="signup">Need an account ? Register here!</a>
     <?php if(in_array("EMAIL OR PASSWORD WAS INCORRECT<br>" , $error_array)) echo "EMAIL OR PASSWORD WAS INCORRECT<br>"; ?>
  </form>
</div>

<div id="second">
  <form action="register.php" method="POST">

    <input type="text" name="req_fname" placeholder="First Name" value="
             <?php 
               if(isset($_SESSION['req_fname'])){
                     echo $_SESSION['req_fname'];
                 }
             ?>
    " required>
    <br>
    <?php if(in_array("YOUR FIRST NAME MUST BE BETWEEN 2 AND 25 CHARACTERS<br>",$error_array)) echo "YOUR FIRST NAME MUST BE BETWEEN 2 AND 25 CHARACTERS<br>"; ?>
    <input type="text" name="req_lname" placeholder="Last Name" value="
             <?php 
               if(isset($_SESSION['req_lname'])){
                     echo $_SESSION['req_lname'];
                 }
             ?>
    " required>
    <br>
     <?php if(in_array("YOUR LAST NAME MUST BE BETWEEN 2 AND 25 CHARACTERS<br>",$error_array)) echo "YOUR LAST NAME MUST BE BETWEEN 2 AND 25 CHARACTERS<br>"; ?>
    <input type="email" name="req_email" placeholder="Email" value="
             <?php 
               if(isset($_SESSION['req_email'])){
                     echo $_SESSION['req_email'];
                 }
             ?>
    " required>
    <br>
    
    <input type="email" name="req_email2" placeholder="Confirm Email" value="
             <?php 
               if(isset($_SESSION['req_email2'])){
                     echo $_SESSION['req_email2'];
                 }
             ?>
    " required>
    <br>

    <?php
    if(in_array("EMAIL ALREADY IN USED<br>",$error_array)) echo "EMAIL ALREADY IN USED<br>"; 
    else if(in_array("INVALID EMAIL FORMAT<br>",$error_array)) echo "INVALID EMAIL FORMAT<br>"; 
    else if(in_array("EMAILS DO NOT MATCH<br>",$error_array)) echo "EMAILS DO NOT MATCH<br>";
    ?>
    <input type="password" name="req_password" placeholder="Password" required>
    <br>
    <input type="password" name="req_password2" placeholder="Confirm Password" required>
    <br>

    <?php
    if(in_array("YOUR PASSWORD DO NOT MATCH<br>",$error_array)) echo "YOUR PASSWORD DO NOT MATCH<br>"; 
    else if(in_array("YOUR PASSWORD CAN ONLY CONTAIN ENGLISH CHARACTERS OR NUMBERS<br>",$error_array)) echo "YOUR PASSWORD CAN ONLY CONTAIN ENGLISH CHARACTERS OR NUMBERS<br>"; 
    else if(in_array("YOUR PASSWORD MUST BE BETWEEN 5 AND 30 CHARACTERS<br>",$error_array)) echo "YOUR PASSWORD MUST BE BETWEEN 5 AND 30 CHARACTERS<br>";
    ?>
     <input type="submit" name="register_button" value="Rigester">
     <br>
     
    <?php if(in_array("<span style='color:#14C800;'>You are successfully registered , login now ..</span><br>",$error_array)) echo "<span style='color:#14C800;'>You are successfully registered , login now ..</span><br>"; ?>
    <a href="#" id="signin" class="signin">Already have an account ? Sign in here!</a>

  </form>
  </div>

  </div><!--end of login_box-->

  </div><!-- end of wrapper-->
</body>
</html>