<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


    <title>COC Academic Staff</title>

    <style> 
        i {
            line-height: 2;
            letter-spacing: 0.5px;
            font-size: 15px;
            margin-left: 50px;
            
        }
        a {
            font-size: 20px;
            
        }
        h1 {
            font-size: 30px;
        }
        a.nav-link{
            font-size: 15px;
        }
        
    </style>
        

</head>

<body background="">
    <div id="app">
        <nav class="navbar navbar-expand-lg navbar-default bg-default">
            <a class="navbar-brand " href="#"> <img class="logo" src="photo/logo.png" width="300" height="50"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar1" aria-controls="navbarNav"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbar1">
                <ul class="navbar-nav ml-auto ">
                    <li class="nav-item active">
                        <h4> <a class="nav-link" href="logout.php">&nbsp;&nbsp;Logout </a></h4>
                    </li>
                    <li class="nav-item active">
                        <h4> <a class="nav-link" href="home.php">&nbsp;&nbsp;Search <span class="sr-only">(current)</span></a></h4>
                    </li>
                    <li class="nav-item active">
                        <h4> <a class="nav-link" href="COCAcademicStaff.php">&nbsp;&nbsp;COC Academic Staff</a></h4>
                    </li>
                    <li class="nav-item active">
                        <h4> <a class="nav-link" href="contact.php">&nbsp;&nbsp;Contact</a></h4>
                    </li>
                    <li class="nav-item active">
                        <h4> <a class="nav-link" href="" charset="UTF-8">&nbsp;&nbsp;<?php echo $_SESSION["IDname"];?></a></h4>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container" style=background-color:#33c0ca;>
            <div class="navbar-header">
                <h1 style=color:#f4f8f8;>Add COC Academic staff</h1>

            </div>

        </div>
        <br>
      
        <br>
        <div class="container">
            <div class="row" style=background-color:#f2f1f1;>
                <legend>
                    <div class="collapse navbar-collapse" id="app-navbar-collapse">
                        <ul class="nav navbar-nav">&nbsp;</ul>
                        <ul class="nav navbar-nav navbar-left"></ul>
                        <ul class="col-md-10">
                         
                            <h3>Add </h3>
                            
                        </ul>
                        <!-- <ul class="nav navbar-nav navbar-right"> -->
                        <!-- <li> -->
                 
                        <a href="COCAcademicStaff.php">
                            
                            <button class="btn btn-primary btn-lg" type="submit" id="searchB">
                                    back &nbsp;  &nbsp;   
                            </button></a>
                        <!-- </ul> -->
                    </div>
                  
                </legend>
                
                <div class="col-md-9">
                    <br>

                    <div class="container">



                        <div class="col-md-5">
                        <div class="input-group mb-2">
                          <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"><h5>Name</h5></span>
                                 </div>
                          <input type="text" class="form-control"id="name" name="name" placeholder="Name" aria-label="Name" aria-describedby="basic-addon1">
                          </div>
                      <br><br>
                           <div class="input-group mb-2">
                          <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"><h5>Lastname</h5></span>
                                 </div>
                          <input type="text" class="form-control"id="lastname" name="lastname" placeholder="Lastname" aria-label="Lastname" aria-describedby="basic-addon1">
                          </div>

                           <br><br>
                            

                            <button class="btn btn-primary btn-lg" type="submit" id="Add" onclick="search();">
                            Search &nbsp;  &nbsp;   
                            </button>
                            &nbsp;  &nbsp; 
                            <button class="btn btn-danger btn-lg" type="submit" id="Add" onclick="deleteStaff();">
                            Delete &nbsp;  &nbsp;   
                            </button>
                            </div>
                            <div id="show">
                    
                    </div>

                        </div>



                      

                    </div>

                </div>

             
               
            </div>

            <br>

        </div>
    </div>
    </div>
    <br>

    </div>
    
    <script src="js/addStaff.js"></script>
</body>