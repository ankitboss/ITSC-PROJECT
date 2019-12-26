
<?php
session_start(); // Starting Session
$error=''; // Variable To Store Error Message
if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "Username or Password is invalid";
}
else
{
// Define $username and $password
$username=$_POST['username'];
$password=$_POST['password'];
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
include('conn.php');
// To protect mysqli injection for Security purpose
$username = stripslashes($username);
$password = stripslashes($password);
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);

// SQL query to fetch information of registerd users and finds user match.
$sql = "SELECT * from `user` where `pwd`='$password' AND `user_id`='$username' ";
$query = mysqli_query($connection, $sql);
$rows = mysqli_num_rows($query);
if ($rows == 1) 
{
	$sql1 = " SELECT `post` from `user_post` where  `user_id`='$username' ";
    $query1 = mysqli_query($connection, $sql1);
    $post = mysqli_fetch_assoc($query1);
    if($post['post'] == "Admin")
    {
		$_SESSION['login_user']=$username; // Initializing Session
		header("location: welcome.php"); // Redirecting To Other Page
	}elseif($post['post'] = "Adder")
	{
		$_SESSION['login_user']=$username; // Initializing Session
		header("location: add_contact.php"); // Redirecting To Other Page
	}	
} else 
{
$error = "Username or Password is invalid";
} 
mysqli_close(); // Closing Connection
}
}
?>