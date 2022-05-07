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
						<p>${film}</p>
						
						<form action="updateFilm.do" method="get">
						<input type="text" hidden="true" name="film" value="${film}">
							<button>Update Film</button>
						</form>
						<form action="delete.do">
						<input type="text" hidden="true" name="id" value="${film.id }">
							<button value="${film}">Delete Film</button>
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
			
					<c:when test="${! empty film}">
						<h3>The following film has been successfully added to the
							database: ${film.title}, id: ${film.id }</h3>
						<form action="update.do">
							<button name="updateFilm">Update Film</button>
						</form>
					</c:when>
					<c:when test="${! empty actor }">
						<h3>The following actor has been successfully added to the
							database: ${actor.firstName} ${actor.lastName}, id: ${actor.id }</h3>
						<form action="update.do">
							<button name="updateActor">Update Actor</button>
						</form>
					</c:when>
				</c:choose>
				<c:if test="${empty film && empty actor }">
					<h1>
						We were unable to complete this update. Return to the <a
							href="home.do">homepage</a> to try again
					</h1>
				</c:if>
			</div>
		</c:when>
		<c:when test="${updatingObject == true }">
			<div name="edit">

				<h3></h3>
				<c:choose>
					<c:when test="${filmUpdated == true}">
						<h3>The following film has been successfully added to the
							database: ${film.title}, id: ${film.id }</h3>
						<form action="update.do">
							<button name="updateFilm">Update Film</button>
						</form>
					</c:when>
					<c:when test="${actorUpdated == true }">
						<h3>The following actor has been successfully added to the
							database: ${actor.firstName} ${actor.lastName}, id: ${actor.id }</h3>
						<form action="update.do">
							<button name="updateActor">Update Actor</button>
						</form>
					</c:when>
					<c:when test="${filmUpdated == false && actorUpdated == false }">
					<h3>Update failed return to <a
							href="home.do">homepage</a> to try again.</h3>
					</c:when>
				</c:choose>
			</div>
		</c:when>
		<c:when test="${deletingObject == true }">
			<div name="deletion">
				<c:if test="${objectDeleted == true }">
					<h3>Deletion successful</h3>
				</c:if>
				<c:if test="${objectDeleted == false }">
					<h3>Something went wrong, and deletion was not successful.Return to the <a
							href="home.do">homepage</a> to try again</h3>
				</c:if>
			</div>
		</c:when>
	</c:choose>

	<a href="home.do">Return Home</a>
</body>
</html>
