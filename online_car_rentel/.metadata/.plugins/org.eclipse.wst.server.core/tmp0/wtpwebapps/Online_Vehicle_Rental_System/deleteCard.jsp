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
						
						String sql = "select* from cards where idcard = '"+val+"'";
						ResultSet rs=stmt.executeQuery(sql);
                    	
						while(rs.next()){	
							
					%>
					
						<h3>Delete Card</h3>
                        <hr class="ml-0" />
                        <hr class="s-br" />
                        <form action="delcard" method = "post">
	                        <table class="table table-borderless mt-4">
	                            <tr>
	                            	
	                                <td><input type="text" class="form-control" placeholder="Name"  name="username" value="<%=rs.getString(2) %>" required/></td>
	                                <td><input type="text" class="form-control" placeholder="Email"  value="<%=rs.getString(3) %>" required/> </td>
	                                <td><input type="text" class="form-control" placeholder="Date"  value="<%=rs.getString(4) %>" required/> </td>
	                            </tr>
	                            <tr>
	                                <td colspan="3"><input type="text" class="form-control" placeholder="Date" name="comm" value="<%=rs.getString(5) %>" required/> </td>
	                                </td>
	                            </tr>
	                            <tr>
	                            
	                            	<td><input type="checkbox" value = "<%=rs.getString(1) %>" name = "id" required>   Accept teams & conditions
	                                <td colspan="3"><button type="submit" class="btn text-uppercase ml-auto d-block">Delete Card</button>
	                                </td>
	                            </tr>
	                        </table>
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