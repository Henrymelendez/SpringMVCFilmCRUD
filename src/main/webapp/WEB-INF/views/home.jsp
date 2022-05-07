<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Films</title>
</head>
<body>
<h1>Welcome to the ultimate film database</h1>
<h4>The films may be fake, but you'll wish they weren't!</h4>
<h3>Menu</h3>

<form action="form.do">
<button name="lookup">Film Lookup</button>
</form>

<form action="form.do">
<button name="add" >Add Film</button>
</form>

<form action="form.do">
<button name="delete" >Delete Film</button>
</form>
<a href="presidentInfo?termNumber=${president.termNumber }"></a>


</body>
</html>