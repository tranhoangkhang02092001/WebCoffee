<?php
session_start();
    if (!isset($_SESSION['dangnhap'])){
    header('Location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="css/styleadmincp.css">
</head>
<body>
    <h3 class="title_admin">Chào mừng đến với Admin</h3>
    <div class="wrapper">
    <?php
        include("config/config.php");
        include("modules/header.php");
        include("modules/menu.php");
        include("modules/main.php");
    ?>
    </div>
    <script src="//cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('thongtinlienhe');
    </script>
</body> 
</html>