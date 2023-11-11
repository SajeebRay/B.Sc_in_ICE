<!doctype html>
    <html>
        <head>
            <title>Lab-4 Registration Form</title>
            <script type="text/javascript">
                function validateForm() {
                    var name = document.getElementById('user').value;
                    if (!/^[a-zA-Z ]{6,}$/.test(name)) {
                        alert('Name should contain alphabets and be at least 6 characters long.');
                        return false;
                    }
                    var password = document.getElementById('pass').value;
                    if (password.length < 6) {
                        alert('Password should be at least 6 characters long.');
                        return false;
                    }
                    var email = document.getElementById('email').value;
                    if (!/^\S+@\S+\.\S{2,}$/.test(email)) {
                        alert('Invalid email address.');
                        return false;
                    }
                    var phoneNumber = document.getElementById('phone').value;
                    if (!/^\d{10}$/.test(phoneNumber)) {
                        alert('Phone number should contain 10 digits only.');
                        return false;
                    }
                    return true;
                }
            </script>
            <style> 
                body {
                    border: 6px solid rgb(153, 141, 141);
                    padding: 10px;
                    width: 324px;
                    margin: 0 auto;
                }
                .inputForm { 
                padding-top: 5px;
                padding-bottom: 8px;
                width: 98%;
                }
                #submit{
                    width = 100%;
                }
            </style>
            
        </head>
        <body>
          <div class = "formdiv" >
            <div id="form" align="center">
                <form align="center" action="Lab-03.php" method="POST" onsubmit="return validateForm()">
                    <table>
                        <tr> 
                            <td colspan = "2"> </td><h1 name="signup">Personal Details</h1> </td> 
                        </tr>
                        <tr> 
                            <td> <b> First Name: </b> </td>
                            <td>  <input class = "inputForm" type="text" name="user" id="user"placeholder="Enter the firstname"required> </td>
                        </tr>
                        <tr> 
                            <td> <b> Email: </b> </td>
                            <td> <input class = "inputForm" type="email" name="email" id="email"placeholder="Email"required> </td>
                        </tr>
                        <tr> 
                            <td> <b> Password: </b>  </td>
                            <td> <input class = "inputForm" type="password" name="pass" id="pass"placeholder="Set password"required>  </td>
                        </tr>
                        <tr> 
                            <td> <b> Phone NO: </b>  </td>
                            <td> <input class = "inputForm" type="text" name="phone" id="phone"placeholder="Phone number"required>  </td>
                        </tr>
                        <tr> 
                            <td> <b>Gender: </b> </td>
                            <td> <input type="radio" id="gender" name="gender" value="male" required> Male
                              <input type="radio" id="gender" name="gender" value="female"> Female
                              <input type="radio" id="gender" name="gender" value="other"> Other </td>
                        </tr>
                        <tr>
                            <td  colspan = "2"> <div align = "center"> <input type="submit" name="submit" id="submit" value="Submit"> </div> </td> 
                        </tr>
                    </table>
                </form>
            </div>
            </div>
            <?php 
                $server="localhost";
                $username="root";
                $password="";
                $db="lab3";
                $conn=mysqli_connect($server,$username,$password,$db);
                
                if($conn){
                    echo "Database Connected Successfully!";
                }
                else{
                    echo "Database Have some error!";
                }

                if(isset($_POST['submit'])) {
                    $firstname=$_POST['user'];
                    $email=$_POST['email'];
                    $pass=$_POST['pass'];
                    $cont = $_POST['phone'];
                    $gender=$_POST['gender'];

                    $insertquery = "insert into personal_details(Name,Email,Password,Contact,Gender) values('$firstname','$email','$pass', '$cont', '$gender')";
                    $res = mysqli_query($conn,$insertquery);
                    if($res) {
                        echo " Data inserted Successfully!";
                    }
                    else {
                        echo " Data is not inserted Successfully!";
                    }
                }
            ?>
        </body>
        
    </html>