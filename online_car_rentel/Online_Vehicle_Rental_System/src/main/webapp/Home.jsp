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
		<div class="nev_bar">
            
            <ul>
                <a href="#"><img src="" class="logo_header"></a>
                <li><a href="#"><i class="gg-home"></i></a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="UserLogin.jsp">Login</a></li>
                <li><a href="UserInsert.jsp">SignUp</a></li>
            </ul> 
        </div>

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

<section id="featured-cars" class="featured-cars">
			<div class="container">
				<div class="section-header">
					
					<h2>featured cars</h2>
				</div><!--/.section-header-->
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
							
							
							String query="select * from vehicles";
							
							ResultSet rs=stmt.executeQuery(query);
							while(rs.next())
							{	
							%>	
						
								<div class="col-lg-3 col-md-4 col-sm-6">
									<div class="single-featured-cars">
										<div class="featured-img-box">
											<div class="featured-cars-img">
												<img src="<%=rs.getString(9) %>" alt="Image" class="img-fluid tm-catalog-item-img"> 
											</div>
											<div class="featured-model-info">
												<p>
													model: <%=rs.getString(2) %>
													Number: <%=rs.getString(4) %>
												
													<span class="featured-mi-span"><%=rs.getString(5) %></span> 
													<span class="featured-hp-span"><%=rs.getString(8) %></span>
													
												</p>
											</div>
										</div>
										<div class="featured-cars-txt">
											<h2><a href="#"><%=rs.getString(3) %></a></h2>
											<h3><%=rs.getString(10) %></h3>
											<p>
												<%=rs.getString(7) %>
											</p>
											<form name="cardform" action="RequestCar.jsp">
											<input type="hidden" name="vehiID" value="<%=rs.getString(1) %>">
											<div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Rent This Car</button></div>
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