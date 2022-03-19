<?php 
print_r($_POST);

include "config.php";

session_start();  
    if(isset($_SESSION["username"]))  
    {  
        echo '<h3>Login Succesvol, Welkom - '.$_SESSION["username"].'</h3>';  
        echo '<br /><br /><a href="logout.php">Log uit</a>';  
        echo '<br><a href="index.php">Browse schoenen</a>';
        echo '<br><a href="add_brand.php">Voeg brand toe</a>';
        echo '<br><a href="add_model.php">Voeg model toe</a>';
        echo '<br><a href="add_size.php">Voeg size toe</a>';

        echo '<br><a href="change_brand.php">Bewerk brand</a>';
        echo '<br><a href="change_model.php">Bewerk model</a>';
        echo '<br><a href="change_size.php">Bewerk size</a>';

        echo '<br><a href="delete_brand.php">Verwijder brand</a>';
        echo '<br><a href="delete_model.php">Verwijder model</a>';
        echo '<br><a href="delete_size.php">Verwijder size</a>';
    }  
    else  
    {  
        echo '<script>alert("Login voor deze pagina")</script>';
        header("location:login.php");  
    }  

   error_reporting(E_ALL); ini_set('display_errors', 1);

   if(isset($_POST['addBtn'])){
      $brand = $_POST['name'];
      $q = $conn->prepare("INSERT INTO brands (name) VALUES (:name)");
      $q->bindParam(':name',$brand,PDO::PARAM_STR);
      $q->execute();
  }

?>
<!DOCTYPE html>
<html>
<head>
	<title>Bigfoot ala</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	
<form action="add_brand.php" method="POST">
    <p> 
        <input type="text" name="name" id="name" size="40" /><br />
        <input type="submit" value="Add brand" name="addBtn" />
    </p>
</form>

<a href="login.php">Login</a>

</body>
</html>