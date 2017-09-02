<?php


        //MySQLi information

        $db_host     = "localhost";
        $db_username = "root";
        $db_password = "@l1I2N3K4S5";

        //connect to mysqli database (Host/Username/Password)
        $connection = mysqli_connect($db_host, $db_username, $db_password) or die("Error " . mysqli_error());

        //select MySQLi dabatase table
        $db = mysqli_select_db($connection, "table") or die("Error " . mysqli_error());

    $field1_name = $_POST['name'];
    $field2_name = $_POST['id'];
    $field3_name = $_POST['password'];
    $field4_name = $_POST['email'];
    $field5_name = $_POST['sex'];
    $field6_name = $_POST['school'];
    $field7_name = $_POST['birth'];

    $query = mysqli_query($connection, "INSERT INTO create_user
           (name, id, password, email, sex, school, birth ) VALUES
                    (
                        '$field1_name',
                        '$field2_name',
                        '$field3_name',
                        '$field4_name',
                        '$field5_name',
                        '$field6_name',
                        '$field7_name'
                )
    ");


