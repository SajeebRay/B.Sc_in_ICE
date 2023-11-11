<?php 
    $server = "localhost";
    $user = "root";
    $password = "";
    $database = "dbms_lab";
    $connect = mysqli_connect($server, $user, $password, $database);
    if($connect){
        echo "Database Connected Succefully. <hr>";
    }
    else {
        echo "Database Not Connected. <hr>";
    }
    function selectDepartment($table)
    {
        if ($table) {
            echo "Department Table";
            echo "
            <table border='1'>
            <tr> 
                <th> Name </th>
                <th> Building </th>
                <th> Budget </th>
            </tr>
            ";
            if (mysqli_num_rows($table)) {
                while ($row = mysqli_fetch_array($table)) {
                    echo "
                    <tr>
                        <td> " . $row['dept_name'] . " </td>
                        <td> " . $row['bulding'] . " </td>
                        <td> " . $row['budget'] . " </td>
                    </tr>
                    ";
                }
            }
            echo "</table> <hr>";
        } else {
            echo "Table not created or invalid query <hr>";
        }
    }
    #If the table created before or you already execute the program
    mysqli_query($connect, "drop table department");
    $res = mysqli_query($connect, "create table department(
        dept_name varchar(20),
        bulding varchar(20),
        budget numeric(8,2),
        primary key(dept_name)
    )");
    if($res){
        echo "Table Created Succefully. <hr>";
    }
    else {
        echo "Table Not Created. <hr>";
    }
    mysqli_query($connect, "insert into department values('ICE','Watson','90000')");
    mysqli_query($connect, "insert into department values('CSE','Science','85000')");
    mysqli_query($connect, "insert into department values('EEE','Engineering','80000')");
    mysqli_query($connect, "insert into department values('CE','Engineering','68000')");
    mysqli_query($connect, "insert into department values('EECE','Science','55000')");
    mysqli_query($connect, "insert into department values('Arct','Painter','95000')");
    $table = mysqli_query($connect, "select * from department");
    selectDepartment($table);

    mysqli_query($connect, "delete from department where dept_name ='CSE' ");
    echo "Deleted a record where department name CSE <hr> ";
    $table = mysqli_query($connect, "select * from department");
    selectDepartment($table);
?>
