<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "servlets.login" %>
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
<title>Flyaway: List of Source and destination</title>
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
    </style>
</head>
<body>
<% if(login.isLoggedIn){ %>
	<section class="container-fluid">
		<section class="row justify-content-center">
			<section>
				<table class="table table-hover table-striped">
                	<thead>
                	<tr>
                    	<th scope="col">Flight ID</th>
                    	<th scope="col">Airline Name</th>
                	</tr>
                	</thead>
                	<tbody>
                		 <%
                    		try{
                        		connection = DriverManager.getConnection(connectionUrl, userId, password);
                        		statement=connection.createStatement();
                        		String sql ="SELECT id, name FROM flight";
                        		resultSet = statement.executeQuery(sql);
                        		while(resultSet.next()){
                		%>
						<tr>
                    		<td><%=resultSet.getString("id") %></td>
                    		<td><%=resultSet.getString("name") %></td>       		
               			</tr>
               			 <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    else {
                        out.print("You must Login first");
                    }
                %>
                	
                	</tbody>
			</section>
		
		</section>
	
	</section>
</body>
</html>