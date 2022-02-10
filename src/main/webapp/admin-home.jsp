<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="servlets.login" %>

<%
	String driverName = "com.mysql.cj.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/flights?allowPublicKeyRetrieval=true&useSSL=false";
	String dbName="flights";
	String userId= "root";
	String password = "Preetiadmin1*";
	
	try{
		Class.forName(driverName);
	} catch(ClassNotFoundException e){
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flyaway: Admin Dashboard</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("img/main1.jpg");
            min-height: 100%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
        .bg{
   			 background: url("img/main1.jpg") no-repeat;
    		width: 100%;
   			 height: 100vh;
    		background-size: 100%;
	}

	.form-container{
    	position: absolute;
    	top: 10px;
    	left: 10vh;
    	background: #f8f8f8;
    	padding: 30px;
    	border-radius: 10px;
    	box-shadow: 0px 0px 10px 0px rgba(47, 47, 47, 0.85);
	}
    </style>
</head>
<body>

	<% 
		if( login.isLoggedIn) {
	%>
	<div class="container bg">
		<h2 align="center"> Admin Dashboard</h2><br>
		<p align = "center"><span><strong><a href="${pageContext.request.contextPath}/change-password.jsp">Change Password</a></strong></span></p>
		<br><br><br>
		<div class="row">
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/source-destination.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">List of source and Destination</button>
            </form>&ensp;
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/airlines.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">List of Airlines</button>
            </form>&ensp;
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/all-flights.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">All flights</button>
            </form>&ensp;
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/login.jsp">
                <button type="submit" class="btn mb-2 btn-danger btn-block">Logout</button>
            </form>
        </div>
        <br>
    </div>
		
	
	</div>
	
	
	
	
	
<% } %>
</body>
</html>