
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name = "viewport" content = "width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<title>Insert title here</title>
</head>
<body class = "lead">
	<div class ="container">
		<div class = "">
			<form:form action = "/customer/processForm/" modelAttribute= "customers" method ="post">
			<form:hidden path = "id"/>
				<div class = "form-group">
					<form:input path = "firstName" placeholder="FirstName" class = "form-control"/>
					<form:input path = "lastName" placeholder="LastName" class = "form-control"/>
					<form:input path = "email" placeholder="Email" class = "form-control"/>
				</div>
				<input type = "submit" value = "Save" class = "btn btn-primary"/>
			</form:form>
		</div>
	</div>

</body>
</html>