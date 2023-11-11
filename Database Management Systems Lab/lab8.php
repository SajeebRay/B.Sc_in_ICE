<?php
$conn = mysqli_connect("localhost", "root", "", "examlab12");
if($conn){
    echo "Database Connected. <hr>";
}
else {
    "Database not connected. <hr>";
}
if(isset($_POST['insert'])){
    $id = $_POST['id'];
    $name = $_POST['user'];
    $image = $_POST['img'];
    $password = $_POST['pass'];
    $pass = md5($password);
    $insert = "INSERT INTO `stu_reg`(`ID`, `Name`, `Image`, `Password`) VALUES ('$id','$name','$image','$pass')";
    $result = mysqli_query($conn, $insert);
    if($result){
        echo "Data Inserted. <hr>";
    }
    else {
        "Data not inserted. <hr>";
    }
}
if(isset($_POST['delete'])){
    $id = $_POST['id'];
    $name = $_POST['user'];
    $delete = "DELETE FROM `stu_reg` WHERE ID='$id'";
    $ress = mysqli_query($conn, $delete);
    if($ress) {
        echo "Deleted Successfully <hr>";
    }
}
if(isset($_POST['select'])){
    $select = "SELECT `ID`, `Name`, `Image` FROM `stu_reg` WHERE 1";
    $res = mysqli_query($conn, $select);
    if($res){
        echo "<h2 align='center'> All Registered Student.<h2>";
        echo "
        <table border='1'>
        <tr>
            <td> ID </td>
            <td> Name </td>
            <td> Image </td>
        </tr>
        ";
        if(mysqli_num_rows($res)){
            while($row = mysqli_fetch_array($res)){
                echo "
                <tr>
                    <td> ".$row['ID']." </td>
                    <td> ".$row['Name']." </td>
                    <td> <img src='".$row['Image']."' width='100%' height='100px'> </td>
                </tr>
                ";
            }
        }
        echo "</table>";
    }
    else{
        echo "Check select query <hr>";
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab 12 exam solution </title>
    <style>
        body{
            width: 312px;
            margin: 0 auto;
            border: 5px solid rgb(117, 195, 0);
        }
        table{
            width:100%;
            background-color: greenyellow;
        }
        #headerFooter{
            text-align: center;
            background-color: #62e924;
        }
        #inputField{
            text-align: right;
        }
        th{
            text-align: left;
        }
        #submit{
            background-color: rgb(68, 2, 130);
            border-collapse: collapse;
            color:aliceblue;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form action="" method="POST"> <br>
        <table>
            <tr>
                <td colspan="3" id="headerFooter"> <h2>Student Registration Form</h2></td>
            </tr>
            <tr>
                <th>ID: </th>
                <td colspan="2" id="inputField"> <input type="text" name="id"> </td>
            </tr>
            <tr>
                <th>Name: </th>
                <td colspan="2" id="inputField"> <input type="text" name="user"> </td>
            </tr>
            <tr>
                <th>Image: </th>
                <td colspan="2" id="inputField"> <input type="file" name="img"> </td>
            </tr>
            <tr>
                <th>Password: </th>
                <td colspan="2" id="inputField"> <input type="password" name="pass"> </td>
            </tr>
            <tr>
                <td colspan="3" id="headerFooter"> 
                    <input type="submit" id="submit" name="insert" value="INSERT">
                    <input type="submit" id="submit" name="select" value="SHOW">
                    <input type="submit" id="submit" name="delete" value="DELETE">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>