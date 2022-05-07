<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<style>

h1 {
    text-align:center;
}

h4 {
	text-align:center;
}

h3 {
	text-align:center;
}








</style>


<title>MVC Films</title>
</head>
<body>
<h1>Welcome to the ultimate film database</h1>
<h4>The films may be fake, but you'll wish they weren't!</h4>
<h3>Menu</h3>

<div class="d-flex justify-content-evenly container" style="width:800px; margin:0 auto; text-align:center;">






<button type="button" name="btnlookup" id="btnlookup" data-toggle="modal" data-target="#myModal2" class="btn btn-primary mr-auto">Film Look Up</button>


      <div id="myModal2" class="modal fade">
     <div class="modal-dialog">
        <div class="modal-content">
        
            <form  class="form-horizontal" role="" method="GET" action="lookup.do">
                  <div class="modal-header modal-header-warning">
                      <button type="button" class="close" data-dismiss="modal2" aria-hidden="true">&times;</button>
                          <h4 class="modal-title ">Please Enter Look Up Info</h4>
                  </div>

                  <div class="modal-body"> 
                     <div class="form-group">
                          <label for="inputName" class="form-label">Please Enter a Actor Id</label>
                          <input type="text" class="form-control" name="actorId" />
                          <button type="submit" class="btn btn-primary">Submit</button>
                 </div>
                 </div>
                 
                 
                 </form>
                 
                  <form  class="form-horizontal" role="" method="GET" action="lookup.do">
                  <div class="modal-header modal-header-warning">
                  <div class="modal-body"> 
                     <div class="form-group">
                          <label for="inputName" class="form-label">Please Enter a Film id</label>
                          <input type="text" class="form-control" name="filmId" ></input>
                          <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                 </div>
                 </div>
                 </form>
                 
                 
                 
                  <form  class="form-horizontal" role="" method="GET" action="lookup.do">
                  <div class="modal-header modal-header-warning">
                    <div class="modal-body"> 
                     <div class="form-group">
                          <label for="inputName" class="form-label">Find Film by key word</label>
                          <input type="text" class="form-control" name="query"></input>
                   			<button type="submit" class="btn btn-primary">Submit</button>
                 </div> 
                 </div>
                 
               </div>
               </form>
                 
                 
                    
                 <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    
                 </div>
            
        </div>
   </div>



</div>





<br>

















 <button type="button" name="btnFilm" data-toggle="modal" data-target="#myModal" class="btn btn-primary split right">Add Film</button>

      <div id="myModal" class="modal fade">
     <div class="modal-dialog">
        <div class="modal-content">
        
            <form  class="form-horizontal" role="" method="POST" action="add.do">
                  <div class="modal-header modal-header-warning">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title ">Please Enter Film Info</h4>
                  </div>

                  <div class="modal-body"> 
                     <div class="form-group">
                          <label for="inputName" class="form-label">Title</label>
                          <input type="text" class="form-control" name="title"/>
                 </div>
                 </div>
                 
                  <div class="modal-body"> 
                     <div class="form-group">
                          <label for="inputName" class="form-label">Description</label>
                          <textarea type="text" class="form-control" name="description" required="required"></textarea>
                 </div>
                  
                 </div>
                 
                    <div class="modal-body"> 
                     <div class="form-group">
                          <label for="inputName" class="form-label">Release Year</label>
                          <input type="number" class="form-control" name="releaseYear" required="required"></input>
                 </div> 
                 </div>
                 
               
                 
                 
                    
                 <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                 </div>
            </form>
        </div>
   </div>



</div>
</div>

</body>
</html>