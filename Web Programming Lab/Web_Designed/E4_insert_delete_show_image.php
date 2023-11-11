<?php
$connect=mysqli_connect("localhost","root","","Programmer");

//Insert start

if(isset($_POST["insert"]))
{
	$id =$_POST["id"];
	$name=$_POST["name"];
	//image
	$img=$_FILES["img"]["name"];
	// $extention=pathinfo($img,PATHINFO_EXTENSION); Use to rename the image
	// $img_new_name=$id.'.'.$extention;
	$password=$_POST["password"];
	//encrypt your password
	$pass = md5($password);
	//echo $password;
	$insert="INSERT INTO Stu_Reg(ID,Name,Image,Password) VALUES ('$id','$name','images/$img', '$pass')";
	$result=mysqli_query($connect,$insert);

	//upload image
        move_uploaded_file($_FILES['img']['tmp_name'], "images/" . $_FILES['img']['name']);
	if($result==1)
	{
		echo"Successfully insert your record!";
	}
	else
	{
		echo"Unsucess";
	}
} //insert End
//delete start
if(isset($_POST['delete']))
     {
    $id = $_POST['id'];
    $password = $_POST['password'];
     $pass=md5($password);
     $query="SELECT * FROM Stu_Reg where ID = '$id' and Password='$pass'";  
         $result=mysqli_query($connect,$query);
         $row = mysqli_fetch_array($result);
   $query = "DELETE FROM Stu_Reg where ID = '$id' and Password='$pass'";
   $execute = mysqli_query($connect,$query);
   if($execute)
    {
    	//remove image

    	         $image=$row['Image'];
               unlink("$image");
              echo "Succesfully deleted your record";
    }
   else
{ 
 echo "Unsucess";
}
}//delete end


//show data from database
if(isset($_POST["select"])){

$query="SELECT * FROM Stu_Reg"; //ORDER BY id ASC";";
$result=mysqli_query($connect,$query);

 if(mysqli_num_rows($result) > 0)
{
		?>
 <table cellpadding=10 border='1'>
<tr>
<th>ID</th> 
<th>Name</th>
<th>Image</th>
</tr>
 <?php
while($row = mysqli_fetch_array($result))
{
?>	
<tr>
<td style='color:black'><?php echo $row['ID']?></td>
<td style='color:black'><?php echo $row['Name']?></td>
<td style='color:black'> <img width=100px height=80px src="<?php echo $row['Image']?>"></td>
</tr>
<?php
}
?>
</table>
<?php
}
else
{
	echo "No Data Found!";
}
}

//end of show database
?>
<html>
<head>
<script>
function change(event)
{
	var output=document.getElementById('image_change');
	output.src=URL.createObjectURL(event.target.files[0]);
}
</script>

<style type="text/css">
	table
	{
	    margin: auto;
		font-size: 25px;
		text-align: left;
	}
	input
	{
		font-size: 20px;
		width: 100%;
	}
	button
	{
		width: 100%;
		font-size: 20px;
		background-color: red;
		color: white;
		cursor: pointer;
	}
</style>
</head>
<body>
	<h1 style="text-align:center;">Programmer Registration Form</h1>
<form method="post" action="" enctype="multipart/form-data">
	<table border="0">
		<tr>
			<th>ID:</th>
			<td colspan="2"><input type="text"name="id" required> </td>
		</tr>
		<tr>
			<th>Name:</th>
			<td colspan="2"> <input type="text"name="name"></td>
		</tr>
		<tr >
			<th colspan="3"><img id="image_change" src="images/man_icon.jpg" height="160px" width="100%" border="1"></th>
		</tr>
		<tr> 
			<th >Image:</th>
			<td><input type="file" name="img" id="img_id"onchange="change(event)"></td>
		</tr>
		<tr>
			<th>Password:</th>
			<td colspan="2"><input type="password" name="password" required></td>
		</tr>
		<tr >
			<th><button name="insert">Insert</button></th>
			<th><button name="select">Show</button></th>
			<th><button name="delete">Delete</button></th>
		</tr>
		<tr>
			<td colspan="3">
				N.B. 1. To delete a record inter your ID and Password.<br>
				2. To show all records enter your ID and Password.
			</td>
		</tr>
		
</table>
</form>
</body>
</html>