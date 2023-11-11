<!doctype html>
    <html>
        <head>
            <title>Lab-3 Registration Form</title>
            <style> 
                body {
                    border: 6px solid rgb(153, 141, 141);
                    padding: 10px;
                    width: 324px;
                    margin: 0 auto;
                }
                form {
                    background-color: yellow;
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
                            <td> <b>Gender: </b> </td>
                            <td> <input type="radio" id="gender" name="gender" value="male"> Male
                              <input type="radio" id="gender" name="gender" value="female"> Female  </td>
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