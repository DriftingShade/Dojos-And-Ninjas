<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<title>New Ninja</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container mx-auto text-center">
		<h1>Create New Ninja</h1>
		<form:form action="/newninja" class="form-control w-25 mx-auto" method="post" modelAttribute="ninja">
			<form:label path="firstName" class="my-1">First Name:</form:label>
			<form:input path="firstName" class="form-control my-3" />
			<form:errors path="firstName" />
			
			<form:label path="lastName" class="my-1">Last Name:</form:label>
			<form:input path="lastName" class="form-control my-3" />
			<form:errors path="lastName" />
			
			<form:label path="age" class="my-1">Age:</form:label>
			<form:input path="age" class="form-control my-1" />
			<form:errors path="age" />
			
			<form:select path="dojo" class="form-select my-2" aria-label="Default select">
				<c:forEach var="dojo" items="${dojos}">
					<option value="${dojo.id}">${dojo.name}</option>
				</c:forEach>
			</form:select>
			<button type="submit" class="btn btn-primary my-3">Submit</button>
		</form:form>
		<a href="/" class="btn btn-primary my-5">Back To Dojos</a>
	</div>

</body>
</html>