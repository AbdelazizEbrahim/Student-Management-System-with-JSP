<!DOCTYPE html>
<html>
<head>
  <title>Remove Student</title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <style>
    .back-home {
      position: absolute;
      top: 10px;
      left: 10px;
    }
    .container {
      margin-top: 50px;
    }
    .card-header {
      background-color: #007bff;
      color: white;
    }
    .card {
      margin-top: 20px;
    }
    .form-group label {
      font-weight: bold;
    }
    .btn-primary {
      background-color: #007bff;
      border-color: #007bff;
    }
  </style>
</head>
<body>
  <a href="adminHome.jsp" class="btn btn-primary back-home">Back Home</a>
  <div id="Paris1" class="container">
    <main class="my-form">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">Remove Student</div>
              <h3 class="text-center">Empty list or incorrect ID</h3>
              <div class="card-body">
                <form name="my-form" onsubmit="return validform()" action="removeStudent.jsp" method="POST">
                  <div class="form-group row">
                    <label for="rollNo" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                    <div class="col-md-6">
                      <input type="text" class="form-control" name="rollNo" required>
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-6 offset-md-4">
                      <button type="submit" class="btn btn-primary">
                        Remove
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
  </div>
</body>
</html>
