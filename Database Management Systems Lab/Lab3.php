<?php
$conn = mysqli_connect("localhost", "root", "", "examlab3");
if($conn){
    echo "Database Connected. <hr>";
}
else {
    "Database not connected. <hr>";
}
if(isset($_POST['submit'])){
    $name = $_POST['user'];
    $email = $_POST['email'];
    $password = $_POST['pass'];
    $gender = $_POST['gender'];
    $insert = "INSERT INTO `personal_info`(`Name`, `Email`, `Password`, `Gender`) VALUES ('$name','$email','$password','$gender')";
    $result = mysqli_query($conn, $insert);
    if($result){
        echo "Data Inserted. <hr>";
    }
    else {
        "Data not inserted. <hr>";
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab3 exam solution </title>
    <style>
        body{
            width: 257px;
            margin: 0 auto;
            border: 5px solid rgb(117, 195, 0);
        }
        table{
            background-color: greenyellow;
        }
        #headerFooter{
            text-align: center;
        }
        #inputField{
            text-align: right;
        }
        th{
            text-align: left;
        }
        #submit{
            width: 100%;
            border-collapse: collapse;
            cursor:pointer;
            background-color: rgb(68, 2, 130);
            color: aliceblue;
        }
    </style>
</head>
<body>
    <form action="" method="POST"> <br>
        <table>
            <tr>
                <td colspan="2" id="headerFooter"> <h2>Personal Details </h2></td>
            </tr>
            <tr>
                <th>First Name: </th>
                <td id="inputField"> <input type="text" name="user" required> </td>
            </tr>
            <tr>
                <th>Email: </th>
                <td id="inputField"> <input type="text" name="email"> </td>
            </tr>
            <tr>
                <th>Password: </th>
                <td id="inputField"> <input type="password" name="pass"> </td>
            </tr>
            <tr>
                <th>Gender: </th>
                <td>
                    <input type="radio" name="gender" value="Male" checked> Male
                    <input type="radio" name="gender" value="Female"> Female
                </td>
            </tr>
            <tr>
                <td colspan="2" id="headerFooter"> <input type="submit" id="submit" name="submit" value="Submit"></td>
            </tr>
        </table>
    </form>
</body>
</html>