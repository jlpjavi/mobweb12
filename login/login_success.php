<?php 
session_start();
if(!session_is_registered('username')){
header("location:main_login.php");
}
?>