<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" type="textt/css" href="style.css">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--bootstrap css-->
  <link href="css/bootstrap.min.css" rel="stylesheet"/>
  <link href="css/basic-template.css" rel="stylesheet"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<c:import url="/head-meta"/>



</head>
<body>

<c:import url="/head"/>


<body>

    <body  id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      
    </div>
  </div>
</nav>


<div class="container">
<div class="row main">
<div class="panel-heading">
<div class="panel-title text-center">

</div>
</div>
<div class="main-login main-center">
<form name="myForm" action = "userlogin" class="form-horizontal" method="post" onsubmit="return validateForm()">
<h1><center>Login </center></h1>
<p> <center>If you are already a member please login here</center>



        
<div class="form-group">
<label for="email" class="cols-sm-2 control-label">Your Email</fonts></label>
<div class="cols-sx-4">
<div class="input-group">
<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email" required/>
</div>
</div>
</div>


<div class="form-group">
<label for="password" class="cols-sm-2 control-label">Password</label>
<div class="cols-sx-4">
<div class="input-group">
<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password" required/>
</div>
</div>
</div>

<div class="form-group" align="center">
<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Login"/>
</div>
</form>
</div>
</div>
</div>




    

    <script>

    function validateForm() {




    	var x = document.getElementById('email');
    	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    	if (!filter.test(email.value)) {
    	alert('Please provide a valid email address');
    	email.focus;
    	return false;
    	}

    	var x = document.forms["myForm"]["password"].value;
    	if (x == null || x == "") {
    	alert("Password must be filled out");
    	return false;
    	}

    	var x = document.forms["myForm"]["confirm"].value;
    	if (x == null || x == "") {
    	alert("Confirm must be filled out");
    	return false;
    	}
    	}  

    </script>

<style>
#success_message{ display: none;}
</style>




<!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p> BakingBees@ company Ltd &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


</body>

</html>