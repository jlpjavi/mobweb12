<?php

include_once '../inc/php/config.php';
include_once '../inc/php/functions.php';

//setup some variables/arrays
$action = array();
$action['result'] = null;

$text = array();

//check if the form has been submitted
if(isset($_POST['signup'])){

	//cleanup the variables
	//prevent mysql injection
	$username = mysql_real_escape_string($_POST['username']);
	$password = mysql_real_escape_string($_POST['password']);
	
	
	
	//quick/simple validation
	if(empty($username)){ $action['result'] = 'error'; array_push($text,'You forgot your username'); }
	if(empty($password)){ $action['result'] = 'error'; array_push($text,'You forgot your password'); }

	
	if($action['result'] != 'error'){}
	
	$action['text'] = $text;

}

?>

<?php
include '../inc/elements/header.php'; ?>

<?= show_errors($action); ?>

<form method="post" name="login" action="checklogin.php">

    <fieldset>
    
    	<ul>
    		<li>
    			<label for="username">Username:</label>
    			<input type="text" name="username" />
    		</li>
    		<li>
    			<label for="password">Password:</label>
    			<input type="password" name="password" />
    		</li>
	
    		<li>
    			<input type="submit" value="Login" class="large blue button" name="login" />			
    		</li>
    	</ul>
    	
    </fieldset>
    
</form>			
		
<?php
include '../inc/elements/footer.php';
?>