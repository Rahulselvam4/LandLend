<?php include './includes/dbconfig.php'; 
session_start(); 
$user_id = $_SESSION['id']; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/log.css" />
</head>
<body style="background-image: url('./images/agriland.jpg');">
  
     <!-- Navbar Start -->
     <nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5" id="home">
        <a href="index.html" class="navbar-brand d-flex d-lg-none">
            <h1 class="m-0 display-4 text-secondary"><span class="text-white">Land</span>Lend</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav mx-auto py-0">
                <a href="provider.php" class="nav-item nav-link ">Home</a>
                <a href="" class="nav-item nav-link ">Profile</a>
                <a href="land.php" class="nav-item nav-link active">Add Plots</a>
                <a href="equipment.php" class="nav-item nav-link ">Add equipment</a>
                <!-- <a href="" class="nav-item nav-link ">View Plots</a> -->
                <a href="providercontact.php" class="nav-item nav-link ">Contact</a>
                <a href="Login.php" class="nav-item nav-link ">Logout</a>
              
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
<form method="POST" enctype="multipart/form-data">
<div class="card opacity-100 " style="width: 28rem; margin-left: 500px; margin-top: 80px; margin-bottom:10px; background-color:rgba(255, 255, 255, 0.5);">
            <div class="card-header" style="color:green">
                Add Land
            </div>
            <div class="card-body text-center ">
                <div class="form-group mb-3">
                    <input type="text" class="form-control" name="area" placeholder=" Land Area in (sq.feet)">
                </div>
                <div class="form-group mb-3">
                    <input type="text" class="form-control" name="plotnumber" placeholder=" Land Number">
                </div>
                <div class="form-group mb-3">
                    <input type="text" class="form-control" name="Location" placeholder=" Location">
                </div>
                <div class="form-group mb-3">
                    <input type="text" class="form-control" name="Soiltype" placeholder="Soil type">
                </div>
                <div class="form-group mb-3">
                    <input type="text" class="form-control" name="Amount" placeholder="Amount per Sq.ft">
                </div>
                <div class="form-group mb-3">
                    <input type="text" class="form-control" name="years" placeholder="number of years">
                </div>
                <div class="form-group mb-3">
                    <textarea class="form-control" name="description" placeholder="Plot Description"></textarea>
                </div>
                <div class="form-group mb-3">
                 <label style="color:green"><b>ADD A DOCUMENT<b></label><input type="file" class="form-control-file" name="file"style="color:orange" >
                </div>
                <button type="submit" name="add" style="width: 100px; background-color:orange; border-radius: 10px;"><b>Lease the land</b></button>
            </div>
        </div>
    </form>
    <?php
    if (isset($_POST['add'])) {
        $land_area = $_POST['area'];
        $land_Number = $_POST['plotnumber'];
        $Location=$_POST['Location'];
        $soil=$_POST['Soiltype'];
        $years=$_POST['years'];
        $Amount=$_POST['Amount'];
        $Description = $_POST['description'];
        $document = $_FILES['file']['name'];

        
       
        $document_temp=$_FILES['file']['tmp_name'];
        $document_folder = "uploadedfile/" . $document;
        $select="select * from users where id='$user_id'";
        $results = mysqli_query($conn, $select);
        if (mysqli_num_rows($results) > 0) {
                        while ($row = mysqli_fetch_array($results)) {
                            $Mobile=$row['Mobile'];
                        }
        }
        $query = "INSERT INTO products(area,plotnumber,Location,Soiltype,Amount,years,description,document,user_id,Mobile) VALUES ('$land_area', '$land_Number','$Location','$soil',
        '$Amount','$years','$Description', '$document','$user_id','$Mobile')";
        
        $result = mysqli_query($conn, $query);
        if ($result) {
           move_uploaded_file($document_temp,$document_folder);
           echo'<script>alert("added")</script>';
        } else {
            echo'<script>alert("failed")</script>';

        }
    }
    ?>
</body>
</html>