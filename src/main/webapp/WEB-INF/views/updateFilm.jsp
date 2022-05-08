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
<style type="text/css">



body {
	border: 10px;
	max-width: 700px;
	width: 100%;
	
	
	height: 50vh;
	display: flex;
	align-items: center;
	justify-content: center;
	
	position: absolute;
	right: 0;
	left: 0;
	top:0;
	bottom:0;
	margin: auto;


}


container {

	width: 500px;
	border: 1px solid black;
	
	


}

.column {
	width: 300px;
	float: left;
	margin-right: 30px;
}


body {
	border: 10px;
	max-width: 700px;
	width: 100%;
	
	
	height: 50vh;
	display: flex;
	align-items: center;
	justify-content: center;
	
	position: absolute;
	right: 0;
	left: 0;
	top:0;
	bottom:0;
	margin: auto;


}


container {

	width: 530px;
	border: 1px solid black;
	
	margin-right: 10px;


}

.column {
	float: left;
	
}

button {
	
	

}
.row>* {
	width: 45%;


}


.column2 {

}

h3 {
padding: 0px;
}


</style>



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

				<div class="column2">
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
				<div>
				<button type="submit" class="btn btn-primary">Submit</button>
				</div>
		</div>
			</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>