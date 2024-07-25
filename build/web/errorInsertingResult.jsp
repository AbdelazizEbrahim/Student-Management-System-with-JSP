<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Inserting Result</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        .container {
            margin-top: 50px;
            text-align: center;
        }
        .back-home {
            position: absolute;
            top: 10px;
            left: 10px;
        }
        .alert {
            max-width: 600px;
            margin: auto;
        }
    </style>
</head>
<body>
    <a href="adminHome.jsp" class="btn btn-primary back-home">Back Home</a>
    <div class="container">
        <div class="alert alert-danger" role="alert">
            <h4 class="alert-heading">Error Inserting Result</h4>
            <p>The student with the provided ID does not exist or it has result.</p>
            <hr>
            <p class="mb-0">Please verify the ID and try again.</p>
        </div>
    </div>
</body>
</html>
