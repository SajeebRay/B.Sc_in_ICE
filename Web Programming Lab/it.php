<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> it.html</title>
</head>
<body bgcolor="green">
    <section>
        <div>
            <form action="it.php" method="POST" > 
                <table align = "center" border="1" style="border-collapse: collapse;">
                  <tr>
                    <th>ID: </th>
                    <td> <input type="text" name="id" id="id"> </td>
                  </tr>
                  <tr>
                    <th>Name: </th>
                    <td> <input type="text" name="user" id="user"></td>
                  </tr>
                  <tr >
                    <th colspan="2"><img id="picDekhao" height="160px" width="100%"></th>
                    <script>
                        function dekhao(event) {
                            var output=document.getElementById('picDekhao');
                            output.src=URL.createObjectURL(event.target.files[0]);
                        }
                    </script>
                  </tr>
                  <tr> 
                    <th >Image:</th>
                    <td><input type="file" name="img" id="img" onchange="dekhao(event)"></td>
                  </tr>
                  <tr>
                    <th>Password: </th>
                    <td> <input type="password" name="pass" id="pass" ></td>
                  </tr>
                </table>
                <input type="submit" name="submit" value="Submit">
              </form>
        </div>
    </section>
    <section>
        <div id="output"> </div>
        <div>
            <script>;
                var saj = document.getElementById('output');
                for(i = 0; i < 30; i++){
                    if(i%2 == 0) 
                        saj.innerHTML += i + " is even. <hr>";
                    else 
                        saj.innerHTML += i + " is odd. <hr>";
                }
            </script>
        </div>
    </section>
    <section>
        <div>
            <table border="1" height="750" width="700">
                <tr>
                    <td width="250" rowspan="2">
                        <h2><a href="http://localhost/ice.php">ice.html </a> <br> </h2> 
                        <h2><a href="http://localhost/lab-09.php">it.html </a></h2>
                    </td>
                    <td height="400"> 
                        <iframe src="http://localhost/ice.php" height="100%" width="100%"></iframe>
                    </td>
                </tr>
                <tr>
                    <td height="350"> 
                        <iframe src="http://localhost/lab-09.php" height="100%" width="100%" ></iframe>
                    </td>
                </tr>
            </table>
        </div>
    </section>

    <button style=" position: fixed; bottom: 20px; right: 20px; "> <a href="#top"> TOP</a></button>
    <ol>
        <li> <a href="#sec1"> Section-01</a></li>
        <li> <a href="#sec2"> Section-02</a></li>
        <li> <a href="#sec3"> Section-03</a></li>
        <li> <a href="#sec4"> Section-04</a></li>
    </ol>
    <hr>
    <ul type="square" id="sec1">
        <li> adgsds </li>
        <li> adgsds </li>
        <li> adgsds </li>
        <li> adgsds </li>
        <li> adgsds </li>
        <li> adgsds </li>

    </ul><hr>
    <ol type="i" id="sec2">
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
    </ol>
    <ul type="circle" id="sec3">
        <li> adgsds </li>
        <li> adgsds </li>
        <li> adgsds </li>
        <li> adgsds </li>
        <li> adgsds </li>
        <li> adgsds </li>

    </ul><hr>
    <ol type="a" id="sec4">
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
        <li> asdgfdjd </li>
    </ol> <hr>
</body>
</html>