<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>





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

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Online Barber Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
   
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="<spring:url value='/user/login'/>">Log Out</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
 <table border="1" class="table table-striped table-bordered">

		<caption><h1>Appointments List</h1></caption>
		<tr>
					<th>Appoint Id</th><th>Date</th><th>Services</th><th>Slot</th>
				</tr>
 	<c:forEach var="a" items="${requestScope.alist}">
			<tr>
				<td>${a.appointId}</td>
				<td>${a.regDate}</td>
				<c:forEach var="serv" items="${a.services}">
				<td>${serv.serviceName}</td>
				</c:forEach> 
				<c:forEach var="slot" items="${a.slots}">
				<td>${slot.slotName}</td>
				</c:forEach> 
			</tr>
		</c:forEach> 	
	</table>
	</div>
	<div class="container">
	
	<a href="<spring:url value='/shopkeeper/services'/>"><p text style="color:Blue;"><h3>Services</h3></p>
	<a href="<spring:url value='/shopkeeper/slots'/>"><p text style="color:Blue;"><h3>Slots</a></h3></a>
	<a href="<spring:url value='/shopkeeper/addslot'/>"><p text style="color:Blue;"><h3>Add New slot</a></h3></p>
	<a href="<spring:url value='/shopkeeper/addservice'/>"><p text style="color:Blue;"><h3>Add New service</a></h3></p>
	
</div>
</body>
</html>
