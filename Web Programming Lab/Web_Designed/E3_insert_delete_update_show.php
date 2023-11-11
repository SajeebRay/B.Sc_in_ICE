<?php
//$connect=mysqli_connect("localhost","root","","Student");
$connect=mysqli_connect("localhost","root","","Student");
//require();
//Insert start
if(isset($_POST["insert"]))
{
	$id =$_POST["id"];
	$name=$_POST["name"];
	$sess=$_POST["session"];
	$phone=$_POST["ph_number"];
	$city=$_POST["city"];
	$gender=$_POST["gender"];
	$insert="insert into semester_reg(ID,Name,Session,Ph_Num,City, Gender) values('$id','$name','$sess', '$phone', '$city', '$gender')";
	$result=mysqli_query($connect,$insert);
	if($result==1)
	{
		echo"Successfully insert a record!";
	}
	else
	{
		echo"Unsucess";
	}
}  //Insert end

//Delete start
if(isset($_POST["delete"]))
{
	$id =$_POST["id"];
	$name=$_POST["name"];
	$sess=$_POST["session"];
	$delete="delete from semester_reg where ID='$id'and Name='$name' and Session='$sess'";
	$result=mysqli_query($connect,$delete);
	if($result==1)
	{
		echo"Successfully delete your record!";
	}
	else
	{
		echo"Unsucess";
	}
} //Delete end

//update start
if(isset($_POST["update"]))
{
	$id =$_POST["id"];
	$name=$_POST["name"];
	$sess=$_POST["session"];
	$phone=$_POST["ph_number"];
	$city=$_POST["city"];
	$gender=$_POST["gender"];
	$insert="update semester_reg  set Name='$name',Session='$sess',Ph_Num='$phone', City='$city',Gender='$gender' where ID='$id'";
	$result=mysqli_query($connect,$insert);
	if($result==1)
	{
		echo"Successfully updated your record!";
	}
	else
	{
		echo"Unsucess";
	}
}//update end

//show data start
if(isset($_POST["select"])){

$query="SELECT * FROM semester_reg"; //ORDER BY id ASC";";
$result=mysqli_query($connect,$query);
if($result==true){
	echo "All  Registered Students List <br>";
echo "<table cellpadding=10 border='1'>
<tr>
<th>ID</th> 
<th>Name</th>
<th>Session</th>
<th>Phone Number</th>
<th>City</th>
<th>Gender</th>
</tr>";
 if(mysqli_num_rows($result) > 0)
{
while($row = mysqli_fetch_array($result))
{
	
echo "<tr>";
echo "<td style='color:black'>" . $row['ID'] ."</td>";
echo "<td style='color:black'>" . $row['Name'] . "</td>";
echo "<td style='color:black'>" . $row['Session'] . "</td>";
echo "<td style='color:black'>" . $row['Ph_Num'] . "</td>";
echo "<td style='color:black'>" . $row['City'] . "</td>";
echo "<td style='color:black'>" . $row['Gender'] . "</td>";
echo "</tr>";
}
echo "</table>";

}
} else
{
	echo "No record found!";
}
}
//end of show data

?>
<html>
<head>
	<title>Student Registration Form</title>
	<style type="text/css">
		body{
			text-align: center;
           font-size: 25px;
		}
		input{
			font-size: 20px;
		}
		table
		{
			margin: auto;
			font-size: 20px;
		}
	</style>
</head>
<body>
	<h2>Student's Registration Form </h2>
<form method="post"action="">
<table border="0" style="text-align:left" >
        <tr>
           <th >ID</th>
           <td><input type="text" name="id"  required></td>
         </tr>
		 <tr>
           <th>Name</th>
        <td><input type="text" name="name"  required></td>
         </tr>
         <tr>
           <th>Session</th>
           <td><input type="text" name="session" required></td>
         </tr>
         <tr>
           <th >Phone Number</th>
           <td><input type="text" name="ph_number"></td>
         </tr>
		 <tr>
           <th >City</th>
           <td><input type="text" name="city" value="" ></td>
		 </tr>
		 <tr>
           <th>Gender</th>
           <td><input type="radio" name="gender" value="Male" checked> Male
                <input type="radio" name="gender" value="Female"> Female
            </td>
		 </tr>
		 <tr> 
		 	<td colspan="4">
		 		<input type="submit" name="insert" value="Insert">
                <input type="submit" name="delete" value="Delete">
                <input type="submit" name="update" value="Update">
                <input type="submit" name="select" value="Show">
		 	</td>
		 </tr> 
		 </table> 

		 <br>
        <label style="color:red">N.B. </label> 
		      1. To delete a record please enter your ID, Name and Session.<br>
              2. You can update all information except ID Number. <br>
              3.To show all record enter your ID, Name and Session.
</form>

</body>
</html>