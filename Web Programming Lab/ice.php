<?php
$conn = mysqli_connect("localhost", "root", "", "lab3");
if($conn){
  echo "DBMS Connected <hr>";
}
else {
  echo "DBMS not connected";
}
if(isset($_POST['submit'])){
  $name = $_POST['user'];
  $gmail = $_POST['email'];
  $pass= $_POST['pass'];
  $phone = $_POST['phone'];
  $gen = $_POST['gender'];
  $insert = "INSERT INTO `personal_details`(`Name`, `Email`, `Password`, `Contact`, `Gender`) VALUES ('$name','$gmail','$pass','$phone','$gen')";
  $res = mysqli_query($conn, $insert);
  if($res){
    echo "Inserted";
  }
  else {
    echo "Not Inserted";
  }
}
if(isset($_POST['select'])){
  $selected = "SELECT * FROM `personal_details` WHERE 1";
  $result = mysqli_query($conn, $selected);
  if($result){
    echo "The list";
    echo "
    <table border='1'>
    <tr>
        <td> Name </td>
        <td> Email </td>
        <td> Password </td>
        <td> Phone </td>
        <td> Gender </td>
    </tr>
    ";
    if(mysqli_num_rows($result)){
      while($row = mysqli_fetch_array($result)){
        echo "
        <tr>
           <td> ".$row['Name']." </td>
           <td> ".$row['Email']." </td>
           <td> ".$row['Password']." </td>
           <td> ".$row['Contact']." </td>
           <td> ".$row['Gender']." </td>
        </tr>
        ";
      }
    }
    echo "</table>";
  }
}
if(isset($_POST['delete'])){
  $name = $_POST['user'];
  $phone = $_POST['phone'];
  $del = "DELETE FROM `personal_details` WHERE Name='$name' and Contact='$phone' ";
  $ress = mysqli_query($conn, $del);
  if($ress){
    echo "deleted <hr> ";
  }
}
if(isset($_POST['update'])){
  $name = $_POST['user'];
  $gmail = $_POST['email'];
  $pass= $_POST['pass'];
  $phone = $_POST['phone'];
  $gen = $_POST['gender'];
  $update = "UPDATE `personal_details` SET `Email`='$gmail',`Password`='$pass',`Contact`='$phone',`Gender`='$gen' WHERE Name='$name' ";
  $resss = mysqli_query($conn, $update);
  if($resss){
    echo "updated";
  }
  else{
    echo "Not updated";
  }
}

?>
<html>
  <head>
    <title> ICE.html </title>
    <script>
      function validateForm(){
        var name = document.getElementById('user').value;
        if(!/^[A-Za-z ]{6,}$/.test(name)){
          alert('Error Name');
          return false;
        }
        var gmail = document.getElementById('email').value;
        if(!/^\S+@\S+\.\S{2,}$/.test(gmail)){
          alert('Error gmail');
          return false;
        }
        var pass = document.getElementById('pass').value;
        if(pass.length < 6){
          alert('Error password');
          return false;
        }
        var phn = document.getElementById('phone').value;
        if(!/^01[0-9]{9}$/.test(phn)){
          alert('Error Phone');
          return false;
        }
        return true;
      }
    </script>
  </head>
  <body>
    <form action="ice.php" method="POST" > 
      <table align = "center" border="1" style="border-collapse: collapse;">
        <tr>
          <th>Name: </th>
          <td> <input type="text" name="user" id="user"></td>
        </tr>
        <tr>
          <th>Email: </th>
          <td> <input type="text" name="email" id="email"></td>
        </tr>
        <tr>
          <th>Password: </th>
          <td> <input type="password" name="pass" id="pass"></td>
        </tr>
        <tr>
          <th>Phone: </th>
          <td> <input type="text" name="phone" id="phone"></td>
        </tr>
        <tr>
          <th> Gender: </th>
          <td>
            Male <input type="radio" name="gender" value="male" checked>
            Female <input type="radio" name="gender" value="Female">
          </td>
        </tr>
      </table>
      <input type="submit" name="submit" value="Submit">
      <input type="submit" name = "select" value = "Show">
      <input type ="submit" name = "delete" value = "Delete">
      <input type="submit" name = "update" value= "Update">
    </form>
    <section>
      <div>
        <form action="" method="POST">
          Enter Unit <hr>
          <input type="text" name="unit"> <br>
          <input type="submit" name="calc" value="Calculate">
        </form>
        <hr> 
        <?php
          if(isset($_POST['calc'])){
            $units = $_POST['unit'];
            if ($units <= 50) {
              $bill = $units * 3.50;
            } elseif ($units <= 100) {
                $bill = $units * 4.00;
            } elseif ($units <= 200) {
                $bill = $units * 5.20;
            } else {
                $bill = $units * 6.50;
            }
            echo "Bill of $units unit is: $bill <hr>";
          }
        ?>
      </div>
    </section>
    <section>
      <div>
        <script>
          function isDigit(){
            var fnum = document.getElementById('num1').value;
            if(!/^[0-9]{1,}$/.test(fnum)){
              alert('First number error.');
              return false;
            }
            var snum = document.getElementById('num2').value;
            if(!/^[0-9]{1,}$/.test(snum)){
              alert('Second number error.');
              return false;
            }
            return true;
          }
        </script>
        <form action="" method="POST" onsubmit="return isDigit()" >
          First Number: <input type="text" name="num1" id="num1"> <br>
          Second Number: <input type="text" name="num2" id="num2"> <br>
          <input type="submit" name="sum" value="Sum">
          <input type="submit" name="substract" value="Substract">
          <input type="submit" name="multiply" value="Multiply">
          <input type="submit" name="divide" value="Divide">
        </form>
        <?php
          if(isset($_POST['sum'])){
            $number1 = $_POST['num1'];
            $number2 = $_POST['num2'];
            $result = $number1 + $number2;
            echo "$number1 + $number2 = $result<hr>";
          }
          if(isset($_POST['substract'])){
            $number1 = $_POST['num1'];
            $number2 = $_POST['num2'];
            $result = $number1 - $number2;
            echo "$number1 - $number2 = $result<hr>";
          }
          if(isset($_POST['multiply'])){
            $number1 = $_POST['num1'];
            $number2 = $_POST['num2'];
            $result = $number1 * $number2;
            echo "$number1 x $number2 = $result<hr>";
          }
          if(isset($_POST['divide'])){
            $number1 = $_POST['num1'];
            $number2 = $_POST['num2'];
            if($number2 == 0)
              echo "Devided by zero. <hr>";
            else {
              $result = $number1 / $number2;
              echo "$number1 / $number2 = $result<hr>";
            }
          }
        ?>
      </div>
    </section>
  </body>
</html>