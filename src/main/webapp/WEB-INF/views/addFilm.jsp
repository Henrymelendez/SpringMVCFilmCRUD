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
<title>Insert title here</title>
</head>
<body>
<div class="d-flex justify-content-center">
<form class="needs-validation col-lg-6" action="add.do" id="addFilm" method="POST" novalidate>

<div class="form-row">

    <div class="col-md-4 mb-3">
      <label for="validationTooltip01">Add Film Title</label>
      <input type="text" class="form-control" name="" id="validationTooltip01" placeholder="Title"  required>
      <div class="invalid-tooltip">
        Add a Title
      </div>
    </div>
    </div>
    
    
    <div class="form-row">
    <div class="form-group">
    <label for="exampleFormControlTextarea1">Film Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="" required></textarea>
    <div class="invalid-tooltip">
    	Add a Description
    </div>
  </div>
	
  </div>
    
    
    
    
</form>
</div>

</body>
</html>