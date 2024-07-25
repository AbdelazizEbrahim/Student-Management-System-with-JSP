<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
  <style>
    .login-box{
    height: 450px;
   }
    h3{
color:red;
}
  </style>
</head>
<body>
    <form method="post" action="studentHome.jsp">
    <div class="login-box">
    <center><img src="result.png" width="200" height="150"></center>   
     <h3><center color="red">Incorrect Student ID OR Student have no result</center></h3>
           
            <input type="text" name="rollNo" placeholder="Enter Student ID" required="required">
            <input type="submit" name="submit" value="Search">    
            </form>
              <center><h1><a href="index.jsp">Back</a></h1></center>
        </div>   
   </body>
</html>
