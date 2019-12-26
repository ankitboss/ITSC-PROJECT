<?php
session_start();   ?>
<!DOCTYPE html>
<html>
<head>
<title>Your Home Page</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="profile">
<b id="welcome">Welcome : <i><?php echo $_SESSION['login_user']; ?></i></b>
<b id="logout"><a href="logout.php">Log Out</a></b>
</div>
<div>
	<table style="border:1px solid black;text-align:center;">
		<tr>
			<th> user id </th>
			<th> Company name </th>
			<th> Mobile </th>
			<th> telephone </th>
			<th> Email </th>
			<th> Addresss </th>
			<th> Called </th>
			<th> Emailed </th>
			<th> Messeged </th>
			<th> Response </th>

		</tr>
<?php
include_once('conn.php');

$sql = "SELECT * from `contact` ";
$query = mysqli_query($connection, $sql);
$rows = mysqli_num_rows($query);
if ($rows > 0) 
{
	while($post = mysqli_fetch_assoc($query))
	{	$sno = $post['sno'];
		$sql1 = mysqli_query($connection, "select * from `user_contact` where `sno` = '$sno'");
		$data = mysqli_fetch_assoc($sql1);

    	echo "<tr><td>".$post['user_id']."</td><td>".$post['cmp_name']."</td><td>".$post['mobile']."</td><td>".$post['phone']."</td><td>".$post['email']."</td><td>".$post['address']."</td><td>".$data['calls']."</td><td>".$data['email']."</td><td>".$data['msg']."</td><td>".$data['response']."</td></tr>";  
	}
}

   ?>	
</table>
</div>
</body>
</html>