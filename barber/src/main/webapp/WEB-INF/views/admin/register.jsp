<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>




<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Barber Shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<style>
body {
	margin: 0;
	padding: 0;
	font-weight: Century Gothic;
	background: url("http://localhost:8080/background3.jpg")no-repeat;
	background-size: cover;
	background-position: center;
	width:100%; height:650px;
}
.container{
	height: 75%;
 	width: 80%;
	background: rgba(255, 255, 255, .85);
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 0 20px;
}

</style>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Online Barber Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/admin/shopsdetails">Home</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
           <li><a href="<spring:url value='/user/login'/>">Log Out</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
 <sf:form method="post" modelAttribute="shops">
		<table border="1" class="table table-striped table-bordered">


			
					<tr>
						<td>Enter Shop Name</td>
						<td><input type="text" name="shopName" /></td>
					</tr>


					<tr>
						<td>Enter Owner Name</td>
						<td><input type="text" name="ownerName" /></td>
					</tr>

					<tr>
						<td>Enter location</td>
						<td><input type="text" name="location" /></td>
					</tr>
			<tr>
				<td>Enter contactNumber</td>
				<td><input type="text" name="contactNumber" /></td>
			</tr>



			<tr>
				<td><right><input type="submit" value="Register New Shop" /></right></td>
			</tr>

		</table>
	</sf:form>

</div>

</body>
</html>
