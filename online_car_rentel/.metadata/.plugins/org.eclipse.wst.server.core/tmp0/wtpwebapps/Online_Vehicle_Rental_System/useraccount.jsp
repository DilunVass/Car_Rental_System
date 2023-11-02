<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	 <%@page import="java.sql.*"%>
	 <%@ page import="com.UserComment.*, java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="css/userAccount.css">
 <link rel= "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>User Account</title>

</head>
<body>

     <!-- <c:forEach var = "user" items = "${userDetails}">
     
      ${user.userid}
      ${user.email}
      ${user.password}
      ${user.name}

      
     </c:forEach>  -->
     <c:forEach var = "user" items = "${userDetails}">
     
      <!-- ${user.userid}
      ${user.name}
      ${user.email}
      ${user.password} -->
      
   


      
    
<div class="container rounded bg-white mt-16 mb-10">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">User ID : ${user.userid}</span><span class="text-black-50">Email : ${user.email}</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <form action="upuser" method="post" >
	            <div class="p-3 py-5">
	                <div class="d-flex justify-content-between align-items-center mb-3">
	                    <h4 class="text-right">Profile Settings</h4>
	                </div>
	                <div class="row mt-2">
	                <input type="hidden" class="form-control" placeholder="first name" name="id" value="${user.userid}" required>
	                    <div class="col-md-6"><label class="labels"></label>Name<input type="text" class="form-control" placeholder="first name" name="username" value="${user.name}" required></div>
	
	                </div>
	                <div class="row mt-3">
	                    <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" placeholder="Email" name="email" value="${user.email }" required></div>
	                    
	                    <div class="col-md-12"><label class="labels">Date Of Birthday</label><input type="date" class="form-control" placeholder="enter address line 2" name="dob" value="${user.DOB }" required></div>
	                  	                    <div class="col-md-12"><label class="labels">Password</label><input type="password" class="form-control" placeholder="password" name="password" value="${user.password }" required></div>
	                </div>
	                      <div class="row mt-3">
	                    <label class="label col-md-4 control-label" >Gender :- ${user.gender }</label>
	                    <div class="col-md-10"> 
	                 
	                       <input type="radio" name="gender" value="male"><small>Male</small>
	                       <input type="radio" name="gender" value="female"><small>Female</small>
	                </div>
	                <div class="row mt-3">
	                    <div class="col-md-6"><label class="labels">Country</label><input type="text" class="form-control" placeholder="country" name="country" value="${user.country }" required></div>
	                
	                </div>
	                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
	            	</div>
	        	</div>
            </form>
            <form action="deluser" method="post" >
											<input type="hidden" name="id" value="${user.userid }">
											<div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Delete Account</button></div>
							               </form>
  
        
    </div>

    
    <div class="col-md-4">
		
	
                
               <form name="cardform" action="AllCards.jsp">
				<input type="hidden" name="cusId" value="${user.userid}">
				<div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">View Saved Card</button></div>
               </form>
		
        <div class="mt-5 text-center"><a class="btn btn-primary profile-button" href="requestedVehicle.jsp"  type="button">View All Vehicle Request</a></div>
        <h4 >Add New Card</h4>

		
		
		
        <form action="addc" method="post">

            <input type="hidden" name="id" value="${user.userid }">
            <div class="form-group">
            <h6>User Name</h6>
                <input type="text" class="form-control" placeholder="Name" name="name" value="${user.name }" required>
                
                
            </div>
            <div class="form-group">
    			<h6>Card Number</h6>
    			<input id="ccn" type="tel" class="form-control" inputmode="numeric" name="cardNumber" pattern="[0-9\s]{13,19}" autocomplete="cc-number" maxlength="19" placeholder="xxxx xxxx xxxx xxxx" required>
			</div>

            
            <div class="form-group">
            <h6>Exp Date</h6>
				<input type="month" class="form-control" placeholder="exp date" name="expDate" value="" required>
	         </div>
	         <div class="form-group">
    			<h6>CVV</h6>
    			<input id="ccn" type="tel" class="form-control" inputmode="numeric" name="cvv" pattern="[0-9\s]{3}" autocomplete="cc-number" maxlength="3" placeholder="xxx" required>
			</div>
			<div class="form-group">
    			<div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Card</button></div>
			</div>
			
	         
        </form>
        
            <!-- <div class="card">
			  <figure class="card__figure">
			    <img src="" class="card__figure--logo"></img>
			  </figure>
			<div class="card__reader">
			  <div class="card__reader--risk card__reader--risk-one"></div>
			  <div class="card__reader--risk card__reader--risk-two"></div>
			   <div class="card__reader--risk card__reader--risk-three"></div>
			  <div class="card__reader--risk card__reader--risk-four"></div>
			</div>
            
			<p class="card__number">5032 9334 3764 9846</p>
			<div class="card__dates">
			  <span class="card__dates--first">09/16</span>
			  <span class="card__dates--second">09/19</span>
			</div>
			<p class="card__name">GABRIEL FERREIRA<p>
			<div class="card__flag">
			  <div class="card__flag--globe"></div>
			  <div class="card__flag--red"></div>
			   <div class="card__flag--yellow"></div>
			</div>
			</div>
		 -->
        </div>
</div>
</div>
</div>
</c:forEach>
</body>
</html>