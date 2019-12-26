<?php  session_start(); 
//include('add_contact_con.php'); 
$error =''; ?>
<!DOCTYPE html>
<html>
<head>
<title>Login Form in PHP with Session</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="profile">
<b id="welcome">Welcome : <i><?php echo $_SESSION['login_user']; ?></i></b>
<b id="logout"><a href="logout.php">Log Out</a></b>
</div>
<div id="main">
<div id="login">
<h2>Add new Contact</h2>

<form action="add_contact_con.php" method="post">
<label>Name :</label>
<input id="name" name="cmp_name" placeholder="Company name" type="text" required>
<label>Mobile :</label>
<input id="password" name="mobile" placeholder="Mobile" type="text" required>
<label>Telephone :</label>
<input id="name" name="telephone" placeholder="Telephone" type="text" required>
<label>Email :</label>
<input id="password" name="email" placeholder="Email" type="text" required>
<label>Address :</label>
<input id="name" name="address" placeholder="Address" type="text" required>
<label>Other Description :</label>
<input id="name" name="comment" placeholder="Comment" type="text" required>
<input name="save" type="submit" value=" Save ">

<span><?php echo $error; ?></span>
</form>

</div>
</div>
</body>
</html>