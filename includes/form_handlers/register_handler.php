<?php

//Declaring vars to prevent errors
$fname =""; //hold first name
$lname ="";//hold last name
$em ="";//email
$em2 ="";//email 2
$password ="";//password
$password2 ="";//password 2
$date ="";//sign up date
$error_array = array();//holds errors messages

if(isset($_POST['register_button'])){
    //Registeration form values

    //First name:
    $fname = strip_tags($_POST['req_fname']); //Remove HTML tags
    $fname = str_replace(' ','',$fname); //Remove spaces
    $fname = ucfirst(strtolower($fname)); //Uppercase first letter
    $_SESSION['req_fname'] = $fname; //Stores first name into session variable

    //Last name:
    $lname = strip_tags($_POST['req_lname']); //Remove HTML tags
    $lname = str_replace(' ','',$lname); //Remove spaces
    $lname = ucfirst(strtolower($lname)); //Uppercase first letter
    $_SESSION['req_lname'] = $lname; //Stores last name into session variable

    //Email:
    $em = strip_tags($_POST['req_email']); //Remove HTML tags
    $em = str_replace(' ','',$em); //Remove spaces
    $em = ucfirst(strtolower($em)); //Uppercase first letter
    $_SESSION['req_email'] = $em; //Stores email into session variable

    //Email 2:
    $em2 = strip_tags($_POST['req_email2']); //Remove HTML tags
    $em2 = str_replace(' ','',$em2); //Remove spaces
    $em2 = ucfirst(strtolower($em2)); //Uppercase first letter
    $_SESSION['req_email2'] = $em2; //Stores confirmed email into session variable

    //Password:
    $password = strip_tags($_POST['req_password']);
    $password2 = strip_tags($_POST['req_password2']);

    //Date:
    $date = date("Y-m-d"); //Current Date

    //CHECK IF EMAILS MATCH:
    if($em == $em2){
        //Check Emails are in valid format
        if(filter_var($em , FILTER_VALIDATE_EMAIL)){

            $em = filter_var($em , FILTER_VALIDATE_EMAIL);

            //check if emails already exists
            $e_check = mysqli_query($con , "SELECT email FROM users WHERE email = '$em'");
            //Count the numbers of rows return
            $num_rows = mysqli_num_rows($e_check);
            if($num_rows > 0){
                array_push($error_array ,"EMAIL ALREADY IN USED<br>") ;
            }
        }else{
            array_push($error_array ,"INVALID EMAIL FORMAT<br>") ;
        }//end else if valid format

    }else{
        array_push($error_array, "EMAILS DO NOT MATCH<br>");
    }//end else if emails don't match'

    //Check First Name
    if(strlen($fname) > 25 || strlen($fname) < 2){
        array_push($error_array, "YOUR FIRST NAME MUST BE BETWEEN 2 AND 25 CHARACTERS<br>");
    }
    //Check Last Name
    if(strlen($lname) > 25 || strlen($lname) < 2){
        array_push($error_array, "YOUR LAST NAME MUST BE BETWEEN 2 AND 25 CHARACTERS<br>");
    }
    //Check Password
    if($password != $password2){
        array_push($error_array, "YOUR PASSWORD DO NOT MATCH<br>");
    }else{
        if(preg_match('/[^A-Za-z0-9]/',$password)){
            array_push($error_array, "YOUR PASSWORD CAN ONLY CONTAIN ENGLISH CHARACTERS OR NUMBERS<br>");
        }
    }

    if(strlen($password) > 30 || strlen($password) < 5){
        array_push($error_array, "YOUR PASSWORD MUST BE BETWEEN 5 AND 30 CHARACTERS<br>");
    }

    if(empty($error_array)){
        $password = md5($password); //encrypt password before sending to database

        //Generate username by concatenating first name and last name 
        $username = strtolower($fname."_".$lname);
        $check_username_query = mysqli_query($con , "SELECT username FROM users WHERE username='$username'");

        $i = 0;
        //if username exists add number to username
        while(mysqli_num_rows($check_username_query) != 0){
            $i++;
            $username = $username."_".$i;
            $check_username_query = mysqli_query($con , "SELECT username FROM users WHERE username='$username'");
        }

        //Profile picture assignement
        $rand = rand(1,2);
        if($rand == 1)
        $profile_pics = "assets/images/profile_pics/defaults/head_deep_blue.png";
        else if($rand == 2)
        $profile_pics = "assets/images/profile_pics/defaults/head_sun_flower.png";

        $query = mysqli_query($con , "INSERT INTO users VALUES ('' ,'$fname' ,'$lname' ,'$username' , '$em' , '$password' ,'$date' ,'$profile_pics', '0' , '0' , 'no' , ',')");
        array_push($error_array,"<span style='color:#14C800;'>You are successfully registered , login now ..</span><br>");
        //clear session vars
        $_SESSION['req_fname'] = "";
        $_SESSION['req_lname'] = "";
        $_SESSION['req_email'] = "";
        $_SESSION['req_email2'] = "";
        
    
    }//end if empty(error_array)

}//end if isset(register_button) submit

?>