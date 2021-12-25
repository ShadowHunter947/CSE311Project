<!DOCTYPE html>

  <html>

<head>
<meta charset="utf-8">
<meta charset="Name" content="Motor Service Management">
<meta charset="Description" content="Fixing cars for the roads">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon" type="png/gif" href="image/Login.png" />
<title>Welcome to Login Page</title>
</head>

<body>
<div class="title">
  <h1 id="h1ForUser">Motor Service Management</h1>
  <h3 id="h3ForUser">Login Panel</h3>
</div>
<div class="login_details">

  <form method="post" action="backend_files/login_backend.php">

  <table>
    <tr>
      <th>
        <label for="username"> Username: </label>
      </th>
      <th>
        <input type="text" name="username_input" placeholder="Enter your Username">
      </th>
    </tr>
    <tr>
      <th>
        <label for="password"> Password: </label>
      </th>
      <th>
        <input type="text/number" name="password_input" placeholder="Enter your Password">
      </th>
    </tr>
    <tr>
      <th>
        <button type="submit">Login</button>
         <a href="signup.php" class="ca">Create an account</a>
          <a href="index.php" class="ca">¯\_(ツ)_/¯Back to home</a>
      </th>
    </tr>
  </table>

</form>

</div>



</body>

<footer>





</footer>

  </html>
