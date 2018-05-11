
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name = "viewport" content = "width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<title>Insert title here</title>
</head>
<body class = "lead">
<div class = "container">

	<table>
		<tr>
			<th>Firstname</th>
			<th>Lastname</th>
			<th>Email</th>
		</tr>
			<c:forEach var = "customers" items = "${customers}">
			<spring:url value = "/customer/editcustomer/${customers.id}" var = "editUrl"/>
			<spring:url value = "/customer/deletecustomer/${customers.id}" var = "deleteUrl"/>
		<tr>
			<td>${customers.firstName}</td>
			<td>${customers.lastName}</td>
			<td>${customers.email}</td>
			<td><a href ="${editUrl}">Edit</a></td>
			<td><a href ="${deleteUrl}">Delete</a></td>
		</tr>
				</c:forEach>
		
	</table>
	<spring:url value ="/customer/addcustomer/" var = "AddUrl"/> 
	<a href = "${AddUrl}" class = "btn btn-primary">Add Customer</a>

</div>
</body>
</html>