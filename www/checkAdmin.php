<?php
	session_start();
	$conn = mysqli_connect("localhost","root", "", "staffcoc");
	
	$strSQL = "SELECT * FROM useradmin WHERE usernameAdmin = '".mysql_real_escape_string($_POST['txtUserId'])."' 
    and passAdmin = '".mysql_real_escape_string($_POST['txtPassword'])."'";
    echo $strSQL;
    $objQuery = mysqli_query($conn, $strSQL);
    if(!$objResult)
	{
        $message = "wrong ID or PASSWORD";
        echo "<script type='text/javascript'>alert('$message');</script>";
        header("location:admin.php");
        $_SESSION["ReportError"]="Username or password is not correct";
	}

    while ($row = mysqli_fetch_assoc($objQuery))
    {   
        if($row["rights"] == "admin")
			{
                $_SESSION["IDname"] = $row["usernameAdmin"];
                $_SESSION["status"] = $row["rights"];
                $_SESSION["ReportError"]=null;
                header("location:home.php");
			}
    }
    
	
	mysql_close();
?>