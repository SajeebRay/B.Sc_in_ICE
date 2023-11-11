<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab-07</title>
    <style>
        body {
                    border: 6px solid rgb(153, 141, 141);
                    padding: 10px;
                    width: 430px;
                    margin: 0 auto;
                }
    </style>
</head>
<body>
    <h2>Electricity Bill Calculator</h2>

    <form action = "Lab-07.php" method="POST">
        Enter the number of units: <input type="text" id = "units" name="units">
        <input type="submit" name = "submit" id = "submit" value="Calculate">
    </form>

     <?php
    if(isset($_POST['submit'])) {
        // Get the units from the form
        $units = $_POST["units"];

        // Calculate the electricity bill based on the given conditions
        if ($units <= 50) {
            $bill = $units * 3.50;
        } elseif ($units <= 100) {
            $bill = 50 * 3.50 + ($units - 50) * 4.00;
        } elseif ($units <= 200) {
            $bill = 50 * 3.50 + 50 * 4.00 + ($units - 100) * 5.20;
        } else {
            $bill = 50 * 3.50 + 50 * 4.00 + 100 * 5.20 + ($units - 200) * 6.50;
        }

        // Display the calculated bill
        echo "Your electricity bill for $units units is Taka. " . number_format($bill, 2);
    }
    ?>  
</body>
</html>