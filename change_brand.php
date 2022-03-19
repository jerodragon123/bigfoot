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
      $name = $_POST['name'];
      $brandid = $_POST['brandid'];
      $q = $conn->prepare("UPDATE brands SET name = :name WHERE brandid = :brandid");
      $q->bindParam(':brandid',$brandid,PDO::PARAM_STR);
      $q->bindParam(':name',$name,PDO::PARAM_STR);
      $q->execute();
  }

  $sql = 'SELECT brandid, `name` FROM brands ORDER BY `name`';
  $q = $conn->query($sql);
  $q->setFetchMode(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html>
<head>
	<title>Bigfoot ala</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	
<form action="change_brand.php" method="POST">
    <p> 
        <select name="brandid" id="brandid">option
            <option>Select brand</option>
            <?php while ($row = $q->fetch()){ ?>
            <option  value="<?php echo $row['brandid']; ?>"><?php echo $row['name']; ?></option>
            <?php } ?>
        </select>
        <input type="text" name="name" id="name" size="40" /><br />
        <input type="submit" value="Change brand" name="addBtn" />
    </p>
</form>

<a href="login.php">Login</a>

</body>
</html>