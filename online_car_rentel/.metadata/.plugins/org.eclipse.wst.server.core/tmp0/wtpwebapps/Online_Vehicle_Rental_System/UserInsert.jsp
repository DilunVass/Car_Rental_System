<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp form</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="css/UserSignup.css" type="text/css">

</head>

<body>

    <div class="container">
        <div class="row">
        
            <div class="col-md-7">
            <h1 class="text-left">Online vehicle rental system</h1>
            <p class="text-left">
            </p>
            </div>
           <div class="col-md-5">
            <div class="row">
                <div class="col-md-6">
                    <h3 class="text-left">Sign Up</h3>
                    
                </div>

            </div>
            <hr>
            <form action="insert" method = "post">
            
            	<div class="row">
                    <label class="label col-md-2 control-label">Name</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" name="name" placeholder="Name" required>
                    </div>
                </div>
                <div class="row">
                    <label class="label col-md-2 control-label">Email</label>
                    <div class="col-md-10">
                        <input type="email" class="form-control" name="email" placeholder="Email" required>
                    </div>
                </div>
    
                <div class="row">
                    <label class="label col-md-2 control-label">Password</label>
                    <div class="col-md-10"> 
                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                        <input type="checkbox"><large>Remember me</large>
                    </div>
                </div>
    
                <div class="row">
                    <label class="label col-md-2 control-label">Verify Password</label>
                    <div class="col-md-10"> 
                        <input type="password" class="form-control" placeholder="Confirm Password" id="confirm_password" required>
                    
                    </div>
                </div>
    
                <div class="row">
                    <label class="label col-md-2 control-label">DOB</label>
                    <div class="col-md-10"> 
                        <input type="date" class="form-control" name="dob" placeholder="Date of Birth" required>
                    
                    </div>
                </div>
    
              
    
                <div class="row">
                    <label class="label col-md-2 control-label">Gender</label>
                    <div class="col-md-10"> 
                       <input type="radio" name="gender" value="male"><small>Male</small>
                       <input type="radio" name="gender" value="female"><small>Female</small>
                </div>
    
                </div>
    
                <div class="row">
                     <label class="label col-md-2 control-label">Country</label>
                     <div class="col-md-10">
                        <input type="text" class="form-control" name="country" placeholder="Country" required>
                     </div>
                    </div>

                <button type = "submit" class="btn btn-info">Submit</button>  
                <a href="Home.jsp"><div class="btn btn-warning">Cancel</div></a>  
            </form>
            <!--close-->
            <!--make another coloumn for textbox and label-->

    
                
                



            <!--close-->




           </div>
     </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"></script>
    
</body>
</html>