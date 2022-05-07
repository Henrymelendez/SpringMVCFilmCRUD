<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<script type="text/javascript">


</script>



<title>Insert title here</title>
</head>
<body>

<div class="container col-md-5">
<div class="card">
<div class= "card-body">


<form class="needs-validation " action="" id="addingObject" method="POST" novalidate>

    <fieldset class="form-group">
      <label for="validationTooltip01" class="form-label">Add Film Title</label>
      <input type="text" class="form-control" name="" id="validationTooltip01" placeholder="Title"  required>
      <div class="invalid-feedback">
        Add a Title
      </div>
    </fieldset>
   
    
    
    <fieldset class="form-group">
    
    <label for="exampleFormControlTextarea1" class="form-label">Film Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="6" cols="col-md-5" name="" required></textarea>
    <div class="invalid-feedback">
    	Add a Description
    </div>
    <button class="btn btn-primary" type="submit">Submit Film</button>
  </fieldset>
	

    
    
    
    
</form>
</div>
</div>
</div>

</body>
</html>