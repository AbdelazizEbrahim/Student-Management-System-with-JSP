<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
  <style>
  .login-box{
    height: 380px;
}</style>
</head>
<body>
    <form method="post" action="adminLoginAction.jsp">
    <div class="login-box">
    <img src="user.png" class="avatar">
        <h1>Admin Login</h1>
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username" required="required">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" required="required">
            <input type="submit" name="submit" value="Login">
            </form>
             <center><h1><a href="index.jsp">Back</a></h1></center>
        </div>   
    </body>
</html>
