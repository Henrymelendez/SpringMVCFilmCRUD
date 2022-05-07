<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
</head>
<body>
	<c:choose>
		<c:when test="${usingLookup == true}">
			<div name="lookup">
				<c:choose>
					<c:when test="${films != null && films.size() != 0}">
						<h3>The following film(s) match your query</h3>
						<ul>
							<c:forEach var="film" items="${films}">
								<li><a href="updateFilm?filmId=${film.id}" value="film"
									name="film">${film.title}</a></li>
							</c:forEach>
						</ul>
						<h3>Select a film to view more information, delete, or update
							information</h3>
					</c:when>
					<c:when test="${! empty film }">
						<p>${film }
							<br> ${film.showActors}<br>${film.showDetails}</p>
						<form action="update.do">
							<button name="updateFilm">Update Film</button>
						</form>
						<form action="delete.do">
							<button name="deleteFilm" value="${film.id}">Delete Film</button>
						</form>
					</c:when>
				</c:choose>
				<c:if test="${empty film && empty films }">
					<h2>Sorry, no films match your query</h2>
				</c:if>
			</div>
		</c:when>
		<c:when test="${addingObject == true }">
			<div name="addition">
				<c:choose>
			<--Addition returns a boolean, may simply use that boolean here -->
					<c:when test="${! empty film}">
						<h3>The following film has been successfully added to the database: ${film.title}, id: ${film.id }</h3>
						<form action="update.do">
							<button name="updateFilm">Update Film</button>
						</form>
					</c:when>
					<c:when test="${! empty actor }">
						<h3>The following actor has been successfully added to the database: ${actor.firstName} ${actor.lastName}, id: ${actor.id }</h3>
						<form action="update.do">
							<button name="updateActor">Update Actor</button>
						</form>
					</c:when>
				</c:choose>
				<c:if test="${empty film && empty actor }">
				<h1>We were unable to complete this update. Return to the <a href="home">homepage</a> to try again</h1>
				</c:if>
			</div>
		</c:when>
		<c:when test="${updatingObject == true }">
			<div name="edit">
				<h3></h3>
				<c:choose>
			<--Addition returns a boolean, may simply use that boolean here -->
					<c:when test="${! empty film}">
						<h3>The following film has been successfully added to the database: ${film.title}, id: ${film.id }</h3>
						<form action="update.do">
							<button name="updateFilm">Update Film</button>
						</form>
					</c:when>
					<c:when test="${! empty actor }">
						<h3>The following actor has been successfully added to the database: ${actor.firstName} ${actor.lastName}, id: ${actor.id }</h3>
						<form action="update.do">
							<button name="updateActor">Update Actor</button>
						</form>
					</c:when>
				</c:choose>
			</div>
		</c:when>
		<c:when test="${deletingObject == true }">
			<div name="deletion"></div>
		</c:when>
	</c:choose>

	<a href="home">Return Home</a>
</body>
</html>