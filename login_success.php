<?php
session_start();  
    if(isset($_SESSION["username"]))  
    {  
        echo '<h3>Login Succesvol, Welkom - '.$_SESSION["username"].'</h3>';  
        echo '<br /><br /><a href="logout.php">Log uit</a>';  
        echo '<br><a href="index.php">Browse schoenen</a>';
        echo '<br><a href="add_brand.php">Voeg brand toe</a>';
        echo '<br><a href="add_model.php">Voeg model toe</a>';
        echo '<br><a href="add_size.php">Voeg size toe</a>';
    }  
    else  
    {  
        echo '<script>alert("Login voor deze pagina")</script>';
        header("location:login.php");  
    }  
?> 