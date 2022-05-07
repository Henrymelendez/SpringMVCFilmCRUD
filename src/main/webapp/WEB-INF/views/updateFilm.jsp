<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form name="updateFilm" action="update.do">
			
		<h3> Editing film with ID: ${film.id} </h3>	
		
		<label value="title"> Title: </label> <input type="text" name="title"
			value="title"> </input> <br>
			
		<label value="decription"> Description: </label> <input type="text" name="description"
			value="decription"> </input> <br>
			
		<label value="releaseYear"> Release Year: </label> <input type="text" name="releaseYear"
			value="releaseYear"> </input> <br>
			
		<label for="language" id=> Language: </label>			
			<select name="language">
			  <option id="language" value="English">English</option>
			  <option id="language" value="Italian">Italian</option>
			  <option id="language" value="Japanese">Japanese</option>
			  <option id="language" value="Manderine">Manderine</option>
			  <option id="language" value="French">French</option>
			  <option id="language" value="German">German</option>
		</select>
			
	</form>

</body>
</html>