   <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
body {


	background-image: url("https://images.cdn3.stockunlimited.net/preview1300/cinema-background-with-movie-objects_1823381.jpg");
	border: 10px;
	max-width: 700px;
	width: 100%;
	
	
	
	display: block;
	align-items: center;
	justify-content: center;
	
	position: absolute;
	right: 0;
	left: 0;
	top:0;
	bottom:0;
	margin: auto;
}
.divider{
    width:5px;
    height:auto;
    margin-bottom: 15px;
    
}

dl {
	margin-bottom: 15px;
	
	

}

dd, dt {
	color: white;
}

h3, h1, h2 {
	color: white;
}

</style>

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
								<li>
									<form action="lookup.do" method="get">
										<input type="text" hidden="true" name="filmId"
											value="${film.id}"> <input type="submit"
											value="${film.title}">
									</form>
								</li>
							</c:forEach>
						</ul>
						<h3>Select a film to view more information, delete, or update
							information</h3>
					</c:when>
					<c:when test="${! empty film }">
						<h1><p>Details on: ${film.title }</p></h1>
						
						<dl>
						<dt> Film Details</dt>
						<dd>${film.showDetails() }</dd>
						<dt>Film Actors:</dt>
						<c:forEach var="actor" items="${actors}">
						<dd>
						${actor}
						</dd>
						</c:forEach>
						</dl>
						
						
					
						<div class="divider">
						<form action="updateFilm.do" method="get">
							<input type="text" hidden="true" name="filmId" value="${film.id}">
							<button value="${film}" class="btn btn-primary">Update Film</button>
						</form>
						</div>
						<div class="divider">
						<form action="delete.do">
							<input type="text" hidden="true" name="id" value="${film.id }">
							<button value="${film}" class="btn btn-primary">Delete Film</button>
						</form>
						</div>
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
						<form action="updateFilm.do" method="get">
							<input type="text" hidden="true" name="filmId" value="${film.id}">
							<button value="${film}" class="btn btn-primary">Update Film</button>
						</form>

					</c:when>
					<c:when test="${! empty actor }">
						<h3>The following actor has been successfully added to the
							database: ${actor.firstName} ${actor.lastName}, id: ${actor.id }</h3>
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
		<c:when test="${deletingObject == true }">
			<div name="deletion">
				<c:if test="${objectDeleted == true }">
					<h3>Deletion successful</h3>
				</c:if>
				<c:if test="${objectDeleted == false }">
					<h3>
						Something went wrong and the deletion was not successful. Return to
						the <a href="home.do">homepage</a> to try again.
					</h3>
				</c:if>
			</div>
		</c:when>
		<c:when test="${updatingObject == true }">
			<div name="edit">
				<c:choose>
					<c:when test="${filmUpdated == true}">
						<h3>The following film has been successfully updated to the
							database: </h3>
							<h3>${film.title}, id: ${film.id }</h3>
					</c:when>
					<c:when test="${actorUpdated == true }">
						<h3>The following actor has been successfully added to the
							database: ${actor.firstName} ${actor.lastName} id: ${actor.id }</h3>
					</c:when>
				</c:choose>
				<c:if test="${filmUpdated == false || actorUpdated == false }">
					<h3>
						Update failed return to <a href="home.do">homepage</a> to try
						again.
					</h3>
				</c:if>
			</div>
		</c:when>
	</c:choose>

	<a  class="btn btn-primary" href="home.do">Return Home</a>
</body>
</html>