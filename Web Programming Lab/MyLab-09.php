<?php
$conn = mysqli_connect("localhost","root","","student1");
if($conn) {
    echo "Database connected! <hr>";
}
else {
    echo "Check database connection! <hr>";
}
if(isset($_POST['insert'])){
    $id = $_POST['id'];
    $name = $_POST['name'];
    $ses = $_POST['session'];
    $phone = $_POST['phone']; 
    $city = $_POST['city'];
    $gender = $_POST['gender'];
    $insert = "INSERT INTO semester_reg(ID, Name, Session, Phone_No, City, Gender) VALUES ('$id','$name','$ses','$phone','$city','$gender')";
    $result = mysqli_query($conn, $insert);
    if($result){
        echo "Data inserted successfully! <hr>";
    }
    else {
        echo "Check insertion query! <hr>";
    }
}
if(isset($_POST['update'])){
    $id = $_POST['id'];
    $name = $_POST['name'];
    $ses = $_POST['session'];
    $phone = $_POST['phone'];
    $city = $_POST['city'];
    $gender = $_POST['gender'];
    $update = "UPDATE semester_reg SET Name='$name',Session='$ses',Phone_No='$phone',City='$city',Gender='$gender' WHERE ID='$id'";
    $result = mysqli_query($conn, $update);
    if($result){
        echo "Data updated successfully! <hr>";
    }
    else {
        echo "Check update query! <hr>";
    }
}
if(isset($_POST['delete'])){
    $id = $_POST['id'];
    $name = $_POST['name'];
    $ses = $_POST['session'];
    $delete = "DELETE FROM semester_reg WHERE ID='$id' and Name='$name' and Session='$ses'";
    $result = mysqli_query($conn, $delete);
    if($result){
        echo "Data deleted successfully! <hr>";     
    }
    else {
        echo "Check delete query! <hr>";
    }
}
if(isset($_POST['select'])){
    // $id = $_POST['id'];
    // $name = $_POST['name'];
    $select = "SELECT * FROM semester_reg";
    $result = mysqli_query($conn, $select);
    if($result){
        echo "All registered student's list! <hr>";
        echo "<table border='1'> 
        <tr>
        <td>ID</td> 
        <td>Name</td>
        <td>Session</td>
        <td>Phone Number</td>
        <td>City</td>
        <td>Gender</td>
        </tr>";
        if(mysqli_num_rows($result) ){
            while($row = mysqli_fetch_array($result) ){
                echo "<tr> 
                <td> ".$row['ID']."      </td> 
                <td> ".$row['Name']."    </td>
                <td> ".$row['Session']." </td>
                <td> ".$row['Phone_No']."</td>
                <td> ".$row['City']."    </td>
                <td> ".$row['Gender']."  </td>
                </tr>";  
            }
        }
        echo "</table>";  
    }
    else {
        echo "Check query or no data! <hr>";
    }
}

?> 
<html>
    <head>
        <title>Lab-09</title>
        <style>
            body, div {
                margin: 0 auto;
                width: 600px;
            }
            div {
                border: 5px solid blue;
                width: 300px;
            }
            table {
                background-color: aquamarine;
                width: 100%;
                margin: 0 auto;
                text-align: right;
            }
            th {
                text-align: left;
            }
            #mine {
                text-align: center;
            }
            submit {
                cursor: pointer;
            }
        </style>
        <script>
            function validateForm(){
                var identity = document.getElementById('id').value;
                if(!/^\d{6}$/.test(identity)){
                    alert('ID should be six digit');
                    return false;
                }
                var user = document.getElementById('name').value;
                if(!/^[A-Za-z ]{2,}$/.test(user)){
                    alert('Name should be character');
                    return false;
                }
                var contact = document.getElementById('phone').value;
                if(!/^01\d{9}$/.test(contact)){
                    alert('Error contact');
                    return false;
                }
                var City = document.getElementById('city').value;
                if(!/^[A-Z][a-z]$/.test(City)){
                    alert('Error City');
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <div>
        <form action="" method="POST" onsubmit="return validateForm()">
            <table>
                <tr> <td colspan="2" id="mine"> <h2> Student's Registration Form <h2> </td></tr>
                <tr>
                    <th>ID: </th>
                    <td> <input type="text" name="id" id="id" required> </td>
                </tr>
                <tr> 
                    <th>Name: </th>
                    <td> <input type="text" name="name" id="name" required> </td>
                </tr>
                <tr>
                    <th>Session: </th>
                    <td> <input type="text" name="session" id="session"> </td>
                </tr>
                <tr>
                    <th>Phone Number: </th>
                    <td> <input type="text" name="phone" id="phone" re> </td>
                </tr>
                <tr>
                    <th>City: </th>
                    <td> <input type="text" name="city" id ="city" required> </td>
                </tr>
                <tr>
                    <th>Gender: </th>
                    <td> 
                        Male <input type="radio" name="gender" value="Male">
                        Female <input type="radio" name="gender" value="Female">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" id="mine"> 
                        <input type="submit" name="insert" value="INSERT"> 
                        <input type="submit" name="update" value="UPDATE">
                        <input type="submit" name="delete" value="DELETE">
                        <input type="submit" name="select" value="SHOW">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" id="mine"> <hr>
                        You can update all info exept ID. <hr>
                        To delete info enter ID, Name and Session. <hr>
                        To see all data enter valid ID and Name. <hr>
                    </td>
                </tr>
                <br>
            </table>
        </form>
        </div>
    </body>
</html>