<?php
$conn = mysqli_connect("localhost","root","","programmer");
if($conn) {
    echo "Database connected! <hr>";
}
else {
    echo "Check database connection! <hr>";
}
if(isset($_POST['insert'])){
    $id = $_POST['id'];
    $name = $_POST['name'];
    $img = $_POST['img'];
    $pass = $_POST['pass'];
    $password = md5($pass);
    $insert = "INSERT INTO `stu_reg`(`ID`, `Name`, `Image`, `Password`) VALUES ('$id','$name','$img','$password')";
    $result = mysqli_query($conn, $insert);
    if($result){
        echo "Data inserted successfully! <hr>";
    }
    else {
        echo "Check insertion query! <hr>";
    }
}
if(isset($_POST['delete'])){
    $id = $_POST['id'];
    $name = $_POST['name'];
    $delete = "DELETE FROM `stu_reg` WHERE ID='$id' and Name='$name' ";
    $result = mysqli_query($conn, $delete);
    if($result){
        echo "<hr> Data deleted successfully! <hr>";     
    }
    else {
        echo "<hr> Check delete query! <hr>";
    }
}
if(isset($_POST['select'])){
    $show = "SELECT `ID`, `Name`, `Image`, `Password` FROM `stu_reg` WHERE 1";
    $result = mysqli_query($conn, $show);
    if($result){
        echo "All info of Programmer registation.";
        echo "
        <table border='1'>
            <tr>
                <th> ID </th>
                <th> Name </th>
                <th> Image </th>
            </tr>
        ";
        if(mysqli_num_rows($result)){
            while($row = mysqli_fetch_array($result)){
                echo "
                <tr> 
                    <td> ".$row['ID']." </td>
                    <td> ".$row['Name']." </td>
                    <td> <img width=100px height=80px src=".$row['Image'].">  </td>  
                </tr>
                ";
            }
        }

        echo "</table>";
    }
    else {
        echo "Error in Query or no data!";
    }
}


?>
<html>
    <head>
        <title> Lab-10 </title>
        <style>
            body{
                margin: 0 auto;
                width: 600px;
            }
            div {
                border: 5px solid rgb(0, 255, 217);
                width: 320px;
                margin: 0 auto;
            }
            table {
                background-color: rgb(7, 247, 91);
                width: 100%;
                margin: 0 auto;
                text-align: right;
            }
            #mine {
                text-align: left;
            }
            #submit {
                cursor: pointer;
                width: 90px;
            }

        </style>
    </head>
    <body>
        <div> <br>
        <form action="" method="POST">
            <table>
                <tr>
                    <th colspan="2" align="center"> <h3>Programmer Registration Form</h3></th>
                </tr>
                <tr>
                    <th id="mine"> ID: </th>
                    <td> <input type="text" name="id" required> </td>
                </tr>
                <tr>
                    <th id="mine"> Name: </th>
                    <td><input type="text" name="name"> </td>
                </tr>
                <tr>
                    <th colspan="2"> <img src="" id="picDekhao" height="150px" width="100%"></th>
                    <script>
                        function dekhao(event){
                            var out = document.getElementById('picDekhao');
                            out.src = URL.createObjectURL(event.target.files[0]);
                        }
                    </script>
                </tr>
                <tr>
                    <th id="mine"> Image: </th>
                    <td> <input type="file" name="img" onchange="dekhao(event)"> </td>
                </tr>
                <tr>
                    <th id="mine"> Password: </th>
                    <td> <input type="password" name="pass"> </td>
                </tr>
                <tr>
                    <th colspan="2" align="center">
                        <input type="submit" id ="submit" name="select" value="SHOW">
                        <input type="submit" id ="submit" name="insert" value="INSERT">
                        <input type="submit" id ="submit" name="delete" value="DELETE">
                    </th>
                </tr>
            </table>
        </form>
        </div>
        <hr>
        To delete Info enter your ID and Name. <hr>
        To see data insert your ID. <hr>
    </body>
</html>