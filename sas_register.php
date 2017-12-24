<!DOCTYPE html>
<html>
<head> 
<meta charset = "UtF-8"> 
<title></title> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<style>
body {
    background-image: url("1234.jpg");
}
#div1{
    display: block;
    border: 1px solid;
    padding: 10px;
    width:50%;
}
</style>
</head> 
<body> 
<h1 align="center">Rent Superbike</h1>
<br>
<div id="div1" class="container" align="center">
<h3>ลงทะเบียน</h3>  
<form action="register.php" method="post">
  <div class="form-group" align="left">
    <label for="username">Username:</label>
    <input type="text" class="form-control" name="username" placeholder="Username" required autofocus>
  </div>
  <div class="form-group" align="left">
    <label for="password">Password:</label>
    <input type="text" name="password" class="form-control" placeholder="Password" required>
  </div>
  <div class="form-group" align="left">
    <label for="email">Email:</label>
    <input type="text" name="email" class="form-control" placeholder="Password" required>
  </div>
  <button type="submit" value="ลงทะเบียน" class="btn btn-primary">ลงทะเบียน</button>
</form>
<br>
<a href="index.php"> กลับหน้าหลัก </a> 
</div>

</body> 
</html> 