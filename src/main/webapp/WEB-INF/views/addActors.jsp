<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="addActors.do" method="post">
	<button value ="submit" type="submit">Submit</button>
		<input type="hidden" name="filmId" value="${film.id}" />
		<c:forEach var="actor" items="${allActors }">
			<label for="actor">${actor.firstName } ${actor.lastName}</label>
			<input id="actor" type="checkbox" name="actorId" value="${actor.id}"/>
			<br>
		</c:forEach>
	</form>
</body>
</html>