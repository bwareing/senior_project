<?php 
    include "configtable.php";
    // register User
    $First_Name = mysqli_real_escape_string($connect_string($connect,$_POST['First_Name']));
    $Last_Name = mysqli_real_escape_string($connect_string($connect,$_POST['Last_Name']));
    $Role = mysqli_real_escape_string($connect_string($connect,$_POST['Role']));
    $Email = mysqli_real_escape_string($connect_string($connect,$_POST['Email']));
    $Phone = mysqli_real_escape_string($connect_string($connect,$_POST['Phone']));

    $query = "INSERT INTO registered_user" (First_Name, Last_Name, Role, Email, Phone)
    VAULES('$First_Name','$Last_Name','$Role','$Email','$Phone');

    $Results = mysqli_query($connect, $query);

    if($Results > 0)
    {
        echo "Welcome to Counselor Outreach. We are happy you are here!";
    }


?>