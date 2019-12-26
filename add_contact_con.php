
<?php
session_start();
 // Starting Session
$error=''; // Variable To Store Error Message
if (isset($_POST['save'])) {

// Define variables
$cmp_name=mysql_real_escape_string(stripcslashes($_POST['cmp_name']));
$mobile=mysql_real_escape_string(stripcslashes($_POST['mobile']));
$telephone=mysql_real_escape_string(stripcslashes($_POST['telephone']));
$email=mysql_real_escape_string(stripcslashes($_POST['email']));
$address=mysql_real_escape_string(stripcslashes($_POST['address']));
$comment=mysql_real_escape_string(stripcslashes($_POST['comment']));
$user_id = $_SESSION['login_user'];

include_once('conn.php');

	$sql1 = " INSERT INTO `contact`(`user_id`, `cmp_name`, `mobile`, `phone`, `email`, `address`, `comment`) VALUES ('$user_id','$cmp_name', '$mobile', '$telephone', '$email','$address' , '$comment') ";
	//echo $sql1;

  $query1 = mysqli_query($connection , $sql1);
 // echo "<br/>$query1";

    if($query1)
    { ?>
    	<script type="text/javascript">
    		window.alert('Contact added');
    		window.location="add_contact.php";
    	</script>
<?php
	}else 
	{
		$error = "contact not added";// Initializing Session
		header("location: add_contact.php"); // Redirecting To Other Page
		mysql_close(); // Closing Connection
	}	
 

	
}
?>