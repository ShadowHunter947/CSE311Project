<!DOCTYPE html>
<html>
<head>
	<title>SIGN UP</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
     <form action="signup-check.php" method="post">
     	<h2>SIGN UP</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>

          <?php if (isset($_GET['success'])) { ?>
               <p class="success"><?php echo $_GET['success']; ?></p>
          <?php } ?>

          <label>First Name</label>
          <?php if (isset($_GET['FirstName'])) { ?>
               <input type="text"
                      name="FirstName"
                      placeholder="First Name"
                      value="<?php echo $_GET['FirstName']; ?>"><br>
          <?php }else{ ?>
               <input type="text"
                      name="FirstName"
                      placeholder="First Name"><br>
          <?php }?>
					<label>Last Name</label>
          <?php if (isset($_GET['LastName'])) { ?>
               <input type="text"
                      name="LastName"
                      placeholder="Last Name"
                      value="<?php echo $_GET['LastName']; ?>"><br>
          <?php }else{ ?>
               <input type="text"
                      name="LastName"
                      placeholder="Last Name"><br>
          <?php }?>


          <label>User Name</label>
          <?php if (isset($_GET['uname'])) { ?>
               <input type="text"
                      name="uname"
                      placeholder="User Name"
                      value="<?php echo $_GET['uname']; ?>"><br>
          <?php }else{ ?>
               <input type="text"
                      name="uname"
                      placeholder="User Name"><br>
          <?php }?>


     	<label>Password</label>
     	<input type="password"
                 name="password"
                 placeholder="Password"><br>

          <label>Re Password</label>
          <input type="password"
                 name="re_password"
                 placeholder="Re_Password"><br>

     	<button type="submit">Sign Up</button>
          <a href="login.php" class="ca">Already have an account?</a>
     </form>
</body>
</html>
