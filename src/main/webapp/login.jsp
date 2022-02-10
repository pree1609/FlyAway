<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="servlets.login"%>
<% login.isLoggedIn = false; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page!!</title>
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
            background-image: url("img/plane.png");
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
<!--  <h1>Enter email and password to login:</h1>
  <form action="login" method="post">
	<label for="inputEmail">Email address:</label>
	<input type="email" name="email"> 
	<br><br>
	<label for="inputPassword"> Password:</label>
	<input type="password" name="password">
	<br><br>
	<input type = "submit" name="submit">
</form>-->
	<section class="container-fluid bg">
        <section class="row justify-content-center">
            <div class="row">
                <div class="col">
                    <h2 align="center" style="color:whitesmoke;"><b>Login</b></h2>
                    <br>
                </div>
            </div>
            <section class="col-sm-6 col-md-3">
                <form action="login" method="post" class="form-container">
                    <div class="form-group mb-2">
                        <label for="inputEmail" class="sr-only">Email address</label>
                        <input type="email" name="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" placeholder="Enter email">
                        <br>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password">
                        <br>
                    </div>
                    <button type="submit" class="btn btn-success btn-block" value="Submit">Login</button>
                </form>
            </section>
        </section>
    </section>
</body>
</html>