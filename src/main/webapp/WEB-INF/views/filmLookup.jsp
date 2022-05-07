<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to the ultimate film database</h1>
<h4>The films may be fake, but you'll wish they weren't!</h4>
<h3>Look Up Film</h3>
<div>
<form action="">
<label for="actorId">Find By Actor Id </label>
<input type="text" name="actorId">
<button type="submit">Submit</button>
</form>
</div>
<br>
<div>
<form action="">
<label for="query">Find by key Word in title of description</label>
<input type="text" name="query">
<button type="submit">Submit</button>
</form>
</div>
<br>

<div>
<form action="lookup.do">
<label for="filmId">Find By Film Id</label>
<input type="text" name="filmId">
<button type="submit">Submit</button>
</form>
</div>
<br>

</body>
</html>