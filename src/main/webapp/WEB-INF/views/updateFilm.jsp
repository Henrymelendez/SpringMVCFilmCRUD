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
	
	background-image: url("https://images.cdn3.stockunlimited.net/preview1300/cinema-background-with-movie-objects_1823381.jpg");
	color:white;
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
	width: 30px;
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
	
		

}

.column {
	float: left;
}

.title {
margin-bottom: 20px;	
	

}
.row>* {
	width: 30%;
	
	
}


.column {
	margin-top: 300px;
	
	bottom: 20px;
}

h3 {
padding: 0px;
}

.one {
margin-top: 10px;
}

.buttons {
	margin-top: 15px;
}

</style>



<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
				<h3 class="justify-content-center title" >Editing film with ID: ${film.id}</h3>
			<form name="updateFilm" action="updateFilm.do" method="post">
		<div class="row ">

				<div class=" d-flex flex-column h-100 one" >
					<label class="d-flex flex-row h-10" for="title"> Title: </label> <label class="d-flex flex-row h-10" for="description">
						Description: </label> <label class="d-flex flex-row h-10" for="rating"> Rating: </label> <label
						class="d-flex flex-row h-10" for="rentalDuration"> Rental Duration: </label> <label class="d-flex flex-row h-10" for="length">
						Length: </label> <label class="d-flex flex-row h-10" for="replacementCost">Replacement Cost: </label> <label
						class="d-flex flex-row" for="specialFeatures"> Special Features: </label> <label class="d-flex flex-row h-10"
						for="language" id="language">Language: </label>
				</div>

				<div class="d-flex flex-column h-100">
					<input type="text" name="title" class="d-flex flex-row h-10" id="title"> <input
						class="d-flex flex-row h-10" type="text" name="description" id="description"> <input
						class="d-flex flex-row h-10" type="text" name="rating" id="rating"> <input class="d-flex flex-row h-10"
						type="text" name="rentalDuration h-10" id="rentalDuration"> <input class="d-flex flex-row h-10"
						type="text" name="length" id="length"> <input class="d-flex flex-row h-10" type="text"
						name="replacementCost" id="replacementCost"> <input class="d-flex flex-row h-10" type="text"
						name="specialFeatures" id="specialFeatures"> <select class="d-flex flex-row h-10"
						name="languageId" for="languageId">
						<option id="language" value="1">English</option>
						<option id="language" value="2">Italian</option>
						<option id="language" value="4">Mandarin</option>
						<option id="language" value="5">French</option>
						<option id="language" value="6">German</option>
					</select> <input type="text" hidden="true" name="id" value="${film.id}">
				</div>
		</div>
			<div class="buttons">
				<a class="button" href="home.do">Return Home</a>
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