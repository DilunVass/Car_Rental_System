<!DOCTYPE html>
<html>
    <head>
        <title>Home page</title><!--Edit this-->
        <%@page import="java.sql.*"%>
        <%@ page import="com.Game.*, java.util.*, java.io.*" %>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--boostrap link-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <!--Link other files-->
        <link rel="stylesheet" href="css/index02.css">
        <link rel="stylesheet" href="css/homePage.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link href='https://css.gg/home.css' rel='stylesheet'>
        <link href='https://css.gg/games.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href='https://css.gg/facebook.css' rel='stylesheet'>
    </head>
    <body>
        <div class="nev_bar">
            
            <ul>
                <a href="#"><img src="images/03.jpg" class="logo_header"></a>
                <li><a href="#"><i class="gg-home"></i></a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="UserLogin.jsp">Login</a></li>
                <li><a href="UserInsert.jsp">SignUp</a></li>
            </ul> 
        </div> 
        <!--edit this area-->
        <div class="part01">
            <div class="tm-page-wrap mx-auto">
                <div class="position-relative">
                    <div class="position-absolute tm-site-header">
                        <div class="container-fluid position-relative">
                            <div class="row">
                                <div class="col-5 col-md-8 ml-auto mr-0">
                                    <div class="tm-site-nav">
                                        <nav class="navbar navbar-expand-lg mr-0 ml-auto" id="tm-main-nav">
                                            <button class="navbar-toggler tm-bg-black py-2 px-3 mr-0 ml-auto collapsed" type="button"
                                                data-toggle="collapse" data-target="#navbar-nav" aria-controls="navbar-nav"
                                                aria-expanded="false" aria-label="Toggle navigation">
                                                <span>
                                                    <i class="fas fa-bars tm-menu-closed-icon"></i>
                                                    <i class="fas fa-times tm-menu-opened-icon"></i>
                                                </span>
                                            </button>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        
                    <div id="tm-video-container">
                        <video autoplay muted loop id="tm-video">
                            <!-- <source src="video/sunset-timelapse-video.mp4" type="video/mp4"> -->
                                <source src="Video/Official Launch Trailer  Call of Duty Modern Warfare II-1.mp4" type="video/mp4">
                        </video>    
                    </div>
                    
                    <i id="tm-video-control-button" class="fas fa-pause"></i>
                </div>
        
                <div class="container-fluid">
                    <div id="content" class="mx-auto tm-content-container">
                        <main>
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="tm-page-title mb-4">Our Game Catalog</h2>
                                    <div class="tm-categories-container mb-5">
                                        <h3 class="tm-text-primary tm-categories-text">Categories:</h3>
                                        <ul class="nav tm-category-list">
                                            <li class="nav-item tm-category-item"><a href="HomePage.jsp" class="nav-link tm-category-link">All</a></li>
                                            <li class="nav-item tm-category-item"><a href="HomeAction.jsp" class="nav-link tm-category-link">Action</a></li>
                                            <li class="nav-item tm-category-item"><a href="HomeFPS.jsp" class="nav-link tm-category-link">FPS</a></li>
                                            <li class="nav-item tm-category-item"><a href="HomeAdventure.jsp" class="nav-link tm-category-link">Adventure</a></li>
                                            <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link active">Featured</a></li>
                                        </ul>
                                    </div>        
                                </div>
                            </div>
                            <div class="row tm-catalog-item-list">
                            
                           <%
								try
								{
									Class.forName("com.mysql.jdbc.Driver");
									String url="jdbc:mysql://localhost/gaming_webapp";
									String username="root";
									String password="bhtd1996213";
									Connection conn=DriverManager.getConnection(url,username,password);
									Statement stmt=conn.createStatement();
									
									
									String query="select * from games where type ='featured'";
									
									ResultSet rs=stmt.executeQuery(query);
									while(rs.next())
									{	
									%>	
								
                                		<div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                                    		<div class="position-relative tm-thumbnail-container">
                                        		<img src="<%=rs.getString(4) %>" alt="Image" class="img-fluid tm-catalog-item-img">    
                                        		<form name="testForm" action="GamePage.jsp">
                                        			<input type="hidden" name="gameId" value="<%=rs.getString(1)%>">
                                        			<input type="submit" class="position-absolute tm-img-overlay" value=".">
                                        		</form> 
                                    		</div>    
	                                    	<div class="p-4 tm-bg-gray tm-catalog-item-description">
	                                        	<h3 class="tm-text-primary mb-3 tm-catalog-item-title"><%=rs.getString(2) %></h3>
	                                        	<p class="tm-catalog-item-text"><%=rs.getString(3) %>
	                                        	<span class="tm-text-secondary"></span></p>
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
								</div>
						
                        </main>
                    </div>
                </div> 
            </div>
    
        </div>
        
        <!--Footer-->
        <footer>
            <div class="row">
                <div class="col">
                    <img src="images/03.jpg"class="logo">
                    <p>Mini description about our website.shfubiovjdgjsijgdtkjgu oirgiusng oirhgitg rhragiheg irhgh</p>
                </div>
                <div class="col">
                    <h3>Contact US</h3>
                    <p>Address - .......</p>
                    <h4>Contact Number - 0710715191</h4>
                    <h4>E-mail - game@gamil.com</h4>
                </div>
                <div class="col">
                    <h3>Links</h3>
                    <ul>
                        <li><a href=""><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
                        <li><a href="">About Us</a></li>
                        <li><a href="">Contact Us</a></li>
                        <li><a href=""><i class="fa fa-facebook-official" aria-hidden="true"></i>facebook</a></li>
                        <li><a href=""><i class="fa fa-instagram" aria-hidden="true"></i>instagram</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h3>Legal</h3>
                   <ul>
                    <li><a href="#" class="cta">
                        <span>Legal</span>
                        <svg width="13px" height="10px" viewBox="0 0 13 10">
                          <path d="M1,5 L11,5"></path>
                          <polyline points="8 1 12 5 8 9"></polyline>
                        </svg>
                      </a></li>
                    <li><a href="">Tearms</a></li>
                   </ul>
                </div>
            </div>
        </footer>
    </body>
</html>