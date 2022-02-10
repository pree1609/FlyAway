<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.search" %>
<%@ page import= "model.booking" %>
 
 <%
 	booking.passenger_name = request.getParameter("pname");
 	booking.passenger_email = request.getParameter("email");
 	booking.passenger_phone = request.getParameter("phone");
 	
 	if (booking.passenger_name.equals("") || booking.passenger_email.equals("") ||
 		booking.passenger_phone.equals("")){
 		out.println("Please enter valid passenger details!");
 	}
 	else{
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flyaway: Payment Getaway</title>
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
	<section class="container-fluid bg">
        <section class="row justify-content-center">
            <div class="row">
                <div class="col">
                    <h1 align="center" style="color:whitesmoke;"><b>Checkout</b></h1>
                    <p align="center" style="color:whitesmoke;"><span><strong>Enter Payment Details</strong></span></p><br>
                </div>
            </div>
           <section class="col-sm-6 col-md-3">
               <form action="${pageContext.request.contextPath}/confirmation-booking.jsp" method="post" class="form-container">
                   <div class="form-group">
                       <label for="card_details">Name on Card</label>
                       <input type="text" class="form-control" id="name_on_card" name="name_on_card" placeholder="Enter Name on Card">
                   </div>
                   <div class="form-group">
                       <label for="card_details">Card Number</label>
                       <input type="number" class="form-control" id="card_detials" name="card_number" placeholder="Enter Card Number">
                   </div>
                   <br>
                   <p align="left"><span><strong>Total fare = <br> <%=booking.ticket_price%> X <%=search.persons%> persons = Rs. <%=Integer.parseInt(booking.ticket_price) * search.persons %></strong></span></p>
                   <button type="submit" class="btn btn-success btn-block" value="Submit">Confirm Payment</button>
                   
               </form>
          </section>
        </section>
    </section>
</body>
</html>
<% 
}
%>