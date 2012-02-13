<?php
ob_start();

include_once '../inc/php/config.php';

$username = mysql_real_escape_string($_POST['username']);
$password = md5($_POST['password']);

$sql="SELECT * FROM players WHERE nickname='$username' and password='$password'";
$result=mysql_query($sql);

// Mysql_num_row is counting table row
$count=mysql_num_rows($result) or die(mysql_error());
// If result matched $myusername and $mypassword, table row must be 1 row

if($count==1){
// Register $myusername, $mypassword and redirect to file "login_success.php"
session_register("username");
session_register("password"); 
header("location:login_success.php");
}
else {
echo "Wrong Username or Password";
}

ob_end_flush();
?>