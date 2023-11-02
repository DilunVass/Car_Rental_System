<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	 <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Car</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="css/UserSignup.css" type="text/css">

</head>

<body>
    <% String val = request.getParameter("vehiID"); %>


   
    <div class="container">
        <div class="row">
        
            <div class="col-md-7">
                <% 
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    String url="jdbc:mysql://localhost/Online_vehicle_rental_system";
                    String username="root";
                    String password="bhtd1996213";
                    Connection conn=DriverManager.getConnection(url,username,password);
                    Statement stmt=conn.createStatement();
            
                    String sql = "SELECT * FROM vehicles where idvehicles = '"+val+"'";
                    ResultSet rs=stmt.executeQuery(sql);
                    while(rs.next()){	
                        
                        %>
                        
                            <h1 class="text-left"><%=rs.getString(3) %></h1>
                            <p class="text-left"><%=rs.getString(7) %>
                            </p>
                            
                            </div>
           <div class="col-md-5">
            <div class="row">
                <div class="col-md-6">
                    <h3 class="text-left">Request Car</h3>
                    
                </div>

            </div>
            <hr>
            <form action="addreq" method = "post">
                <input type="hidden" class="form-control" name="vehicleId" placeholder="vehicleId" value="<%=rs.getString(1) %>" required>
            	<div class="row">
                    <label class="label col-md-2 control-label">Vehicle Car</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" name="vehicleType" placeholder="Vehicle Type" required>
                    </div>
                </div>
                
    
                <div class="row">
                     <label class="label col-md-2 control-label">No Of Days</label>
                     <div class="col-md-10">
                        <input type="number" class="form-control" name="NoOfDays" placeholder="No Of Days" required>
                     </div>
                    </div>
    
                <div class="row">
                    <label class="label col-md-2 control-label">Schedule Date</label>
                    <div class="col-md-10"> 
                        <input type="date" class="form-control" name="ScheduleDate" placeholder="Schedule Date" required>
                    
                    </div>
                </div>
    
              
    
                

                <button type = "submit" class="btn btn-info">Submit</button>  
                <a href="Home.jsp"><div class="btn btn-warning">Cancel</div></a>  
            </form>
                        <%
                        
                            }
                            
                        %>
                        <%
                               
                            
                            conn.close();
                            
                        }
                        
                        catch(Exception e){
                            e.printStackTrace();
                        }
                        
                        %>
            
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