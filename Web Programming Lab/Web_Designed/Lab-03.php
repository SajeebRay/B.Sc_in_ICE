<!doctype html>
    <html>
        <head>
            <title>Lab-3 Registration Form</title>
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
                    if (!/^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$/.test(email)) {
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
                #form {
                    border: 6px solid rgb(153, 141, 141);
                    padding: 10px;
                }
                .formdiv {
                background-color: rgba(186, 182, 246, 0.86);
                margin: auto;
                width: 333px;
                height: 360px;
                padding: 6px;
                border: 6px solid #504343;
                }
                .inputForm {
                display: block;   
                padding-top: 5px;
                padding-bottom: 8px;
                width: 98%;
                border-radius: 3px;
                background-color: #5b0707d6;
                color: white;
                }
                .formText {
                  text-align: left;
                }
                .radioBox {
                width: 100%;
                display: block;
                padding: 8px;
                margin-bottom: 10px;
                color: #5a4242;
                }
                #submit {
                    width: 100%;
                    border: 2px solid #598f37;
                    padding: 8px 5px;
                    margin-top: 18px;
                    color: #fff;
                    border-radius: 8px;
                    background: #6b242d;
                    font-style:initial;
                    font-size: 20px;
                    font-weight: bolder;
                    margin-bottom: 4px;
                    transition: all 1s;
                }
                #submit:hover{
                    transform: scale(1.1);
                    cursor: pointer;
                    background: lavender;
                    color: rgb(16, 25, 44);
                }

            </style>
            
        </head>
        <body>
          <div class = "formdiv" >
            <div <div id="form" align="center">
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
                            <td> <input type="radio" id="gender" name="gender" value="male"> Male
                              <input type="radio" id="gender" name="gender" value="female"> Female
                              <input type="radio" id="gender" name="gender" value="other"> Other </td>
                        </tr>
                        <tr>
                            <td  colspan = "2"> <input class="btn btn-primary" type="submit" name="submit" id="submit" value="Submit"> </td> 
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