<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	 <%@page import="java.sql.*"%>
	 <%@ page import="com.UserComment.*, java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
        <!--boostrap link-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <!--Link other files-->
      	<link rel="stylesheet" href="css/index02.css">
        <link rel="stylesheet" href="css/homePage.css">
        <link rel="stylesheet" href="css/bootstrap.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href='https://css.gg/facebook.css' rel='stylesheet'>
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet">
 
</head>
<body>
<section id="home" class="welcome-hero">
<!-- top-area Start -->
		

<!-- </section>

<section id="service" class="service">
    <div class="container">
        <div class="service-container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="single-service-item">
                        <div class="single-service-icon">
                            <i class="flaticon-car"></i>
                        </div>
                        <h2><a href="#">largest dealership <span> of</span> car</a></h2>
						<p>
							Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut den fugit sed quia.  
						</p>
                    </div>
                </div>
            </div>

        </div>
    </div>


</section> -->
<h1>All Requested Vehicles</h1>
<section id="featured-cars" class="featured-cars">
			<div class="container">
				
				<div class="featured-cars-content">
					<div class="row">


						<%
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							String url="jdbc:mysql://localhost/Online_vehicle_rental_system";
							String username="root";
							String password="bhtd1996213";
							Connection conn=DriverManager.getConnection(url,username,password);
							Statement stmt=conn.createStatement();
							
							
							String query="select * from rental";
							
							ResultSet rs=stmt.executeQuery(query);
							
							while(rs.next())
							{	
							%>	
						
								<div class="col-lg-3 col-md-4 col-sm-6">
									<div class="single-featured-cars">
										<div class="featured-img-box">
											
											<div class="featured-model-info">
												<h5>Request ID: <%=rs.getString(1) %></h5>
												<h5>Vehicle ID: <%=rs.getString(2) %></h5>	
												<h5>Vehicle Type: <%=rs.getString(3) %></h5>	
												<h5>Rant Days: <%=rs.getString(4) %></h5>
												<h5>Schedule Date: <%=rs.getString(5) %></h5>
												
											</div>
										</div>
										<div class="featured-cars-txt">
											
											
							               
							               <form name="testForm" action="DeleteRequest.jsp">
                                        			<input type="hidden" name="comId" value="<%=rs.getString(1)%>">
                                        			<input type="submit" class="btn btn-primary profile-button" value="Delete">
                                        			
                                        	</form> </span> <form name="testForm" action="UpdateReq.jsp">
                                        			<input type="hidden" name="comId" value="<%=rs.getString(1)%>">
                                        			<br>
                                        			<input type="submit" class="btn btn-primary profile-button" value="Edit">
                                        	</form>
										</div>
									</div>
								</div>
						
						
								
							<%
							
							}
							%>
								<%
								rs.close();
								stmt.close();
								conn.close();
								}
							catch(Exception e)
							{
								e.printStackTrace();
								}
						%>
						<!-- <div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="assets/images/featured-cars/fc1.png" alt="cars">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">BMW 6-series gran coupe</a></h2>
									<h3>$89,395</h3>
									<p>
										Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non. 
									</p>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="assets/images/featured-cars/fc1.png" alt="cars">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">BMW 6-series gran coupe</a></h2>
									<h3>$89,395</h3>
									<p>
										Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non. 
									</p>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="assets/images/featured-cars/fc1.png" alt="cars">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">BMW 6-series gran coupe</a></h2>
									<h3>$89,395</h3>
									<p>
										Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non. 
									</p>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="assets/images/featured-cars/fc1.png" alt="cars">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">BMW 6-series gran coupe</a></h2>
									<h3>$89,395</h3>
									<p>
										Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non. 
									</p>
								</div>
							</div>
						</div> -->
						
					</div>
					
				</div>
			</div><!--/.container-->

			

		</section>

</body>
</html>