<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>BDU</title>
<body>
<img src="logo.png"  align="left"width="100" height="100">
<img src="apj.png" align="right"  width="100" height="100"></center>
<!--<button class="btn"><a href="index.jsp" class="logo">Back Home</a></button>-->
<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris1')">Remove Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris2')">Update Student Result</button>
    <a href="adminLogin.jsp" class="w3-bar-item w3-button tablink">Logout</a>
  </div>
  
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Students</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewStudent.jsp" method="post">
                             

                               <div class="form-group row">
                                <label for="department" class="col-md-4 col-form-label text-md-right">Department</label>
                                <div class="col-md-6">
                                    <select class="form-control" name="branch" required>
                                        <option value="">Select Department</option>
                                        <option value="software Engineering">Software Engineering</option>
                                        <option value="computer_science">Computer Science</option>
                                        <option value="information_system">Information System</option>
                                        <option value="information_technology">Information Technology</option>
                                        <option value="cyber_security">Cyber Security</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="user_name" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="rollNo" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="student_name" class="col-md-4 col-form-label text-md-right">Student Name</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="name" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="father_name" class="col-md-4 col-form-label text-md-right">Student Father Name</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="fatherName" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="gender" class="col-md-4 col-form-label text-md-right">Gender</label>
                                <div class="col-md-6">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="male" value="male" required>
                                        <label class="form-check-label" for="male">Male</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="female" value="female" required>
                                        <label class="form-check-label" for="female">Female</label>
                                    </div>
                                </div>
                            </div>


                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        Save
                                        </button>
                                        <button class="btn btn-primary">
                                            <a href="index.jsp" class="logo" style="color: white">Back Home</a>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </main>
    </div>

    

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Insert New Result</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="insertNewResult.jsp" method="">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" name="rollNo" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Physics</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="phy" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Chemistry</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="chem" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Mathematics</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="math" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Biology</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="bio" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">English</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="eng" required="true" min="1" max="100">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Sport</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="sport" required="true" min="1" max="100">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Art</label>
                                    <div class="col-md-6">
                                        <input type="number" class="form-control" name="art" required="true" min="1" max="100">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Save
                                        </button>
                                        <button class="btn btn-primary">
                                            <a href="index.jsp" class="logo" style="color: white">Back Home</a>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
      </main>
        <br>
    </div>



<div id="Paris2" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Update Student Result</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="updateStudent.jsp" method="">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" name="rollNo" required="true">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Physics</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="phy" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Chemistry</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="chem" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Mathematics</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="math" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Biology</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="bio" required="true" min="1" max="100">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">English</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="eng" required="true" min="1" max="100">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Sport</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="sport" required="true" min="1" max="100">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Art</label>
                                    <div class="col-md-6">
                                        <input type="number" class="form-control" name="art" required="true" min="1" max="100">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Update
                                        </button>
                                        <button class="btn btn-primary">
                                            <a href="index.jsp" class="logo" style="color: white">Back Home</a>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
      </main>
        <br>
    </div>




<div id="Paris1" class="w3-container w3-border city" style="display:none">
    <br>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!------ Include the above in your HEAD tag ---------->
  
  <!doctype html>
  <html lang="en">
  <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
      <!-- Fonts -->
      <link rel="dns-prefetch" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
  
  
  
      <link rel="icon" href="Favicon.png">
  
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  
  </head>
  <body>
  
  
  
  <main class="my-form">
      <div class="cotainer">
          <div class="row justify-content-center">
              <div class="col-md-8">
                      <div class="card">
                          <div class="card-header">Remove Student</div>
                          <div class="card-body">
                              <form name="my-form" onsubmit="return validform()" action="removeStudent.jsp" method="">
                                  <div class="form-group row">
                                      <label for="full_name" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                      <div class="col-md-6">
                                          <input type="text"class="form-control" name="rollNo" required="true">
                                      </div>
                                  </div>
                                      <div class="col-md-6 offset-md-4">
                                          <button type="submit" class="btn btn-primary">
                                         Remove
                                          </button>
                                          <button class="btn btn-primary">
                                            <a href="index.jsp" class="logo" style="color: white">Back Home</a>
                                        </button>
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </div>
              </div>
          </div>
          <br>
      </div>



</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>

  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
        
      <thead>
        <tr>
          <th>Department</th> 
          <th>Student ID</th>
          <th>STudent Name</th>
          <th>Student Father Name</th>
          <th>Gender</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
       <%@page import ="java.sql.*"%>
        <%@page import ="Project.ConnectionProvider"%>
        <% try 
              {
              Connection con = ConnectionProvider.getCon();
              Statement st = con.createStatement();
              ResultSet rs = st.executeQuery("select * from student");
              while (rs.next()){%>
                   <thead>
                     <tr>
                         <th><%=rs.getString(1) %></th>
                         <th><%=rs.getString(2) %></th>
                         <th><%=rs.getString(3) %></th>
                         <th><%=rs.getString(4) %></th>
                         <th><%=rs.getString(5) %></th>
                      </tr>
                   </thead>
            <%}
           }
           catch(Exception ex){
             out.println(ex);
             }
          finally {
                       
                   }
           %>
    </table>
  </div>
    <button class="btn btn-primary">
     <a href="index.jsp" class="logo" style="color: white">Back Home</a>
    </button>
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Student ID</th>
          <th>Physics</th>
          <th>Chemistry</th>
          <th>Mathematics</th>
          <th>Biology</th>
          <th>English</th>
          <th>Sport</th>
          <th>Art</th>
        </tr>
      </thead>
    </table>
      
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
       <%try 
         {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from result");
            while (rs.next()){%>
                  <tbody>
                     <tr>
                         <td><%=rs.getString(1) %></td>
                         <td><%=rs.getString(2) %></td>
                         <td><%=rs.getString(3) %></td>
                         <td><%=rs.getString(4) %></td>
                         <td><%=rs.getString(5) %></td>
                         <td><%=rs.getString(6) %></td>
                         <td><%=rs.getString(7) %></td>
                         <td><%=rs.getString(8) %></td>
                      </tr>
                  </tbody>
                  
             <%}
            }
         catch(Exception ex){
            out.println(ex);
            }
%>

    </table>

  </div>
<button class="btn btn-primary">
       <a href="index.jsp" class="logo" style="color: white">Back Home</a>
 </button>
</section>



</div>
    <hr class="new1">
  <center><h5>Note: Any errors occur then contact the developer BDU Tech .
Designed & Developed by BDU Tech members</h5></center>
  <hr class="new1">
<center><h5>All Right Reserved @ BDU Tech 2024</h5></center> 
  <hr class="new1">
<br>
</body>
</html>