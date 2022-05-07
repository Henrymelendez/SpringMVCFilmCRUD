<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>MVC Films</title>
</head>
<body>
<h1>Welcome to the ultimate film database</h1>
<h4>The films may be fake, but you'll wish they weren't!</h4>
<h3>Menu</h3>

<div class="d-flex align-content-between flex-wrap">

<form action="form.do" >
<button name="lookup" class="btn btn-success">Film Lookup</button>
</form>

<form action="form.do">
<button name="add" class="btn btn-success">Add Film</button>
</form>

<form action="form.do">
<button name="delete" class="btn btn-success">Delete Film</button>
</form>
<a href="presidentInfo?termNumber=${president.termNumber }"></a>
</div>

</body>
</html>