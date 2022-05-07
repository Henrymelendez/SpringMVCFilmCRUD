<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%  %>
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="home.do">Return Home</a>
	<form name="updateFilm" action="updateFilm.do" method="post">
			
		<h3> Editing film with ID: ${film.id} </h3>	
		
		<label > Title: </label> <input type="text" name="title">  <br>
			
		<label > Description: </label> <input type="text" name="description">  <br>

		<label > Rating: </label> <input type="text" name="rating">  <br>
			
		<label > Rental Duration: </label> <input type="text" name="rentalDuration"> <br>
		
		<label > Length: </label> <input type="text" name="length"> <br>
		
		<label > Replacement Cost: </label> <input type="text" name="replacementCost"> <br>
		
		<label > Special Features: </label> <input type="text" name="specialFeatures"> <br>
		
		
		<label for="language" id="language"> Language: </label>			
			<select name="languageId">
			  <option id="language" value="1">English</option>
			  <option id="language" value="2">Italian</option>
			  <option id="language" value="3">Japanese</option>
			  <option id="language" value="4">Mandarin</option>
			  <option id="language" value="5">French</option>
			  <option id="language" value="6">German</option>
		</select>
		
		<input type="text" hidden="true" name="id" value="${film.id}">
	
		
		<button type="submit">Submit</button>
	</form>

</body>
</html>