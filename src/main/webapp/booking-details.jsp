<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="model.booking" %>
 <% booking.flight_booking_id = request.getParameter("id");
 	booking.ticket_price = request.getParameter("ticketprice");
 	booking.flight_name =  request.getParameter("name");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flyaway: Booking Details</title>
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
                    <h1 align="center" style="color:whitesmoke;"><b>Booking Details</b></h1>
                    <p align="center" style="color:whitesmoke;"><span><strong>Enter Passenger Details</strong></span></p><br>
                </div>
            </div>
            <section class="col-sm-6 col-md-3">
                <form action="${pageContext.request.contextPath}/payment-option.jsp" method="post" class="form-container">
                    <div class="form-group">
                        <label for="pname">Passenger Name</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="number" class="form-control" id="phone" name="phone" placeholder="Enter phone number">
                    </div>
                    <br>
                    <button type="submit" class="btn btn-success btn-block" value="Submit">Submit</button>
                </form>
            </section>
        </section>
    </section>
</body>
</html>