<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
  <style>
  h3{
color:red;
}
  .login-box{
    height: 400px;
}</style>
</head>
<body>
    <form method="post" action="adminLoginAction.jsp">
    <div class="login-box">
    <img src="user.png" class="avatar">
        <h3><center>Incorrect Username or Password</center></h3>
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
