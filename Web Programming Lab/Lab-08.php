<!doctype html>
    <html>
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Lab-8 Form</title>
            <script type="text/javascript">
                function validateForm() {
                    // Name validation (should contain alphabets and be at least 6 characters long)
                    var name = document.getElementById('number1').value;
                    if (!/^[0-9]{1,}$/.test(name)) {
                        alert('Number should contains at least 1 digit');
                        return false;
                    }
                    var name2 = document.getElementById('number2').value;
                    if (!/^[0-9]{1,}$/.test(name2)) {
                        alert('Number should contains at least 1 digit');
                        return false;
                    }
                    return true;
                }
            </script>
            <style> 
                 #form {
                    border: 6px solid rgb(153, 141, 141);
                    padding: 10px;
                    width: 430px;
                    margin: 0 auto;
                }
                .inputForm { 
                padding-top: 5px;
                padding-bottom: 8px;
                width: 98%;
                }
                #submit {
                    width: 100%;
                    border: 2px solid #598f37;
                    padding: 8px 5px;
                    margin-top: 18px;
                }
            </style>
            
        </head>
        <?php 
            if(isset($_POST['submit']))
            {
                $num1=$_POST['number1'];
                $num2=$_POST['number2'];
                $type=$_POST['calc'];
                if ($type == 'Sum') {
                    $res = $num1 + $num2;
                } elseif ($type == 'Subs') {
                    $res = $num1 - $num2;
                } elseif ($type == 'Multi') {
                    $res = $num1 * $num2;
                } else {
                    if ($num2 == 0) {
                        echo "Divided by zero";
                    } else {
                        $res = $num1 / $num2;
                    }
                }
            }
        ?>
        <body>
          <div class = "formdiv" >
            <div id="form">
                        <form action="" method="POST" onsubmit="return validateForm()">
                    <table>
                        <tr> 
                            <th colspan = "2"> </td><h1 name="signup">Calculator</h1> </th> 
                        </tr>
                        <tr> 
                            <td> <b> First Number: </b> </td>
                            <td>  <input class = "inputForm" type="text" name="number1" id="number1" required> </td>
                        </tr>
                        <tr> 
                            <td> <b> Second Number: </b> </td>
                            <td>  <input class = "inputForm" type="text" name="number2" id="number2" required> </td>
                        </tr>
                        <tr> 
                            <td> <b>Operation: </b> </td>
                            <td> <input type="radio" id="calc" name="calc" value="Sum" required> Sum
                              <input type="radio" id="calc" name="calc" value="Subs"> Substract
                              <input type="radio" id="calc" name="calc" value="Multi"> Multiply
                              <input type="radio" id="calc" name="calc" value="Div"> Divide </td>
                        </tr>
                        <tr>
                            <td  colspan = "2"> <input class="btn btn-primary" type="submit" name="submit" id="submit" value="Calculate"> </td> 
                        </tr>
                        <tr>
                            <td colspan = "2" width = 400px> <?php echo "The result is: " . number_format($res, 2); ?></td>
                        </tr>
                    </table>
                </form>
               
            </div>
            </div>
        </body>
        
    </html>