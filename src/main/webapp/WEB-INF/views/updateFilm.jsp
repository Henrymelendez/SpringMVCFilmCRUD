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
	height: 10%;

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
				<h3 class="justify-content-center" >Editing film with ID: ${film.id}</h3>
				<a href="home.do">Return Home</a>
			<form name="updateFilm" action="updateFilm.do" method="post">
		<div class="row ">

				<div class=" d-flex flex-column h-100" >
					<label class="d-flex flex-row h-10"> Title: </label> <label class="d-flex flex-row h-10">
						Description: </label> <label class="d-flex flex-row h-10"> Rating: </label> <label
						class="d-flex flex-row h-10"> Rental Duration: </label> <label class="d-flex flex-row h-10">
						Length: </label> <label class="d-flex flex-row h-10">Replacement Cost: </label> <label
						class="d-flex flex-row"> Special Features: </label> <label class="d-flex flex-row h-10"
						for="language" id="language">Language: </label>
				</div>

				<div class="d-flex flex-column h-100">
					<input type="text" name="title" class="d-flex flex-row h-10"> <input
						class="d-flex flex-row h-10" type="text" name="description"> <input
						class="d-flex flex-row h-10" type="text" name="rating"> <input class="d-flex flex-row h-10"
						type="text" name="rentalDuration h-10"> <input class="d-flex flex-row h-10"
						type="text" name="length"> <input class="d-flex flex-row h-10" type="text"
						name="replacementCost"> <input class="d-flex flex-row h-10" type="text"
						name="specialFeatures"> <select class="d-flex flex-row h-10"
						name="languageId">
						<option id="language" value="1">English</option>
						<option id="language" value="2">Italian</option>
						<option id="language" value="4">Mandarin</option>
						<option id="language" value="5">French</option>
						<option id="language" value="6">German</option>
					</select> <input type="text" hidden="true" name="id" value="${film.id}">
				</div>
		</div>
			<div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>