<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@page import="java.sql.*"%>

        <%@ page import="com.UserComment.*, java.util.*, java.io.*" %>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href='https://css.gg/home.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/homePage.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/gamePage.css">
<title>Insert title here</title>
<body>

<% String val = request.getParameter("comId"); %>

	<%
                    try{
                    	Class.forName("com.mysql.jdbc.Driver");
						String url="jdbc:mysql://localhost/Online_vehicle_rental_system";
						String username="root";
						String password="bhtd1996213";
						Connection conn=DriverManager.getConnection(url,username,password);
						Statement stmt=conn.createStatement();
						
						String sql = "select* from rental where idRental = '"+val+"'";
						ResultSet rs=stmt.executeQuery(sql);
                    	
						while(rs.next()){	
							
					%>
					
						<h3>Edit Request</h3>
                        <hr class="ml-0" />
                        <hr class="s-br" />
                        <form action="upreq" method = "post">
	                        
            <div class="form-group">
            <input type="hidden" class="form-control" placeholder="Name" name="id" value="<%=rs.getString(1) %>" required>
            <input type="hidden" class="form-control" placeholder="Name" name="vehicleId" value="<%=rs.getString(2) %>" required>
            <h6>Type</h6>
                <input type="text" class="form-control" placeholder="Type" name="vehicleType" value="<%=rs.getString(3) %>" required>
                
                
            </div>
            <div class="form-group">
    			<h6>Number OF Days</h6>
    			<input id="ccn" type="tel" class="form-control" placeholder="Number OF Days" name="NoOfDays" value="<%=rs.getString(4) %>"  required>
			</div>

            
            <div class="form-group">
            <h6>Schedule Date</h6>
				<input type="date" class="form-control" placeholder="exp date" name="ScheduleDate" value="<%=rs.getString(5) %>" required>
	         </div>
	         
			<div class="form-group">
    			<div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Edit Request</button></div>
			</div>
                        </form>
     
						         	
                    <%
					
						}
						
					%>
					<%
					   	rs.close();
				    	stmt.close();
				    	conn.close();
                    	
                    }
                    
                    catch(Exception e){
                    	e.printStackTrace();
                    }
                    
                    %>
                    
                    
                    

</body>
</html>