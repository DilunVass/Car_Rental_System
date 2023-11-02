<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loging form</title>


    <!--Bootstrap link CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">

    <!--CSS stylesheet-->
    <link rel="stylesheet" href="css/index03.css" type="text/css">

</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h1 class="text-center"> Sign In </h1>
                <img src="images/logo3.jpg">
                <form action="log" method="post">
                    <input type="email" class="form-control" name="email" placeholder="Enter your email address" required>
                    <input type="password" class="form-control" name="password" placeholder="Enter your password" required>   
                    <button type="submit" class="btn btn-info">Log In</button> 
                </form>
               
                <div class="col">
                    <!-- Simple link -->
                    <a href="#!">Forgot password?</a>
                  </div>      
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>

    <!-- Bootstrap link JavaScript-->


    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"></script>
    
</body>
</html>