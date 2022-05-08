<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
			<form name="updateFilm" action="updateFilm.do" method="post">
		<div class="row ">
				<a href="home.do">Return Home</a>

				<h3>Editing film with ID: ${film.id}</h3>
				<div class="column">
					<label class="row"> Title: </label> <label class="row">
						Description: </label> <label class="row"> Rating: </label> <label
						class="row"> Rental Duration: </label> <label class="row">
						Length: </label> <label class="row">Replacement Cost: </label> <label
						class="row"> Special Features: </label> <label class="row"
						for="language" id="language">Language: </label>
				</div>

				<div class="column">
					<input type="text" name="title" class="row"> <input
						class="row" type="text" name="description"> <input
						class="row" type="text" name="rating"> <input class="row"
						type="text" name="rentalDuration"> <input class="row"
						type="text" name="length"> <input class="row" type="text"
						name="replacementCost"> <input class="row" type="text"
						name="specialFeatures"> <select class="row"
						name="languageId">
						<option id="language" value="1">English</option>
						<option id="language" value="2">Italian</option>
						<option id="language" value="4">Mandarin</option>
						<option id="language" value="5">French</option>
						<option id="language" value="6">German</option>
					</select> <input type="text" hidden="true" name="id" value="${film.id}">
				</div>
				<button type="submit">Submit</button>
		</div>
			</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>