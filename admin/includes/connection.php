<?php
try
{
  $pdo = new PDO('mysql:host=localhost;dbname=hotel','root','');
}
catch(PDOException $e)
{
  exit('Database error.');
}
?>
