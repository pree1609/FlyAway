<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "model.booking" %>
 <%@ page import = "model.search" %>
 <%
 	booking.name_on_card = request.getParameter("name_on_card");
 	booking.card_number = request.getParameter("card_number");
 	
 	if(booking.name_on_card.equals("") || booking.card_number.equals("")){
 		out.println("Please enter valid card details!");
 	}
 	else{
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flyaway: Confirmation Page</title>
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
        .top-img{
        	width:10%;
        	height:10%;
        }
    </style>
</head>
<body>
	<div class="container">
        <h2 align="center"><span><strong>Thank You</strong></span></h2>
        <!-- <div align="center" class="col">
            <img src="img/main1.jpg" class="img-fluid top-img" alt="image">
        </div>-->
        <p align="center"><span><strong>Your ticket has been booked. The summary/details are as follows</strong></span></p>
        <p><button onclick="window.print()" class="btn btn-success btn-block" >Print Ticket</button></p>
        <br>
        <h3>Ticket Summary</h3>
        <h4><strong><%=search.source%> to <%=search.destination%> | <%=search.date%> (<%=search.day%>)</strong></h4>
        <p align="left"><%=booking.flight_booking_id%> - <%=booking.flight_name%> (Travelers <%=search.persons%>)</p><br>
        <br>
        <h3><strong>Passenger Summary</strong></h3>
        <h3>Booking Name-<%=booking.passenger_name%> | Email- <%=booking.passenger_email%> | Phone- <%=booking.passenger_phone%></h3>
        <br>
        <h3><strong>Payment Summary</strong></h3>
        <h4>Payment By-<%=booking.name_on_card%> | Card No- <%=booking.card_number%></h4><br>
        <h2 align="right"><strong>Total Paid- Rs. <%=search.persons* Integer.parseInt(booking.ticket_price)%></strong></h2><br><br>
    </div>
</body>
</html>
<%}%>