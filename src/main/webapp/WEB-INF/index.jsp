<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<title>Dojos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container text-center my-3">
		<h1>All Dojos</h1>
		<table class="table table-bordered w-25 mx-auto my-5">
			<thead>
				<tr>
					<th>Name/Location</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dojos}" var="dojo">
					<tr>
						<td><a href="/dojos/${dojo.id}">${dojo.name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h2 class="my-3">Create A Dojo</h2>
		<form:form action="/createdojo" class="form-control w-25 mx-auto" method="post" modelAttribute="dojo">
			<form:label path="name" class="my-3">Dojo Name:</form:label>
			<form:input path="name" class="form-control my-3" />
			<form:errors path="name" />
			<button type="submit" class="btn btn-primary my-3">Submit</button>
		</form:form>
		<a href="/newninja" class="btn btn-primary my-5">Create A Ninja</a>
	</div>
</body>
</html>