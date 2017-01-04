<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="textt/css" href="style.css">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<c:import url="/head-meta"/>
</head>
<body>

<c:import url="/head"/>

</body>
  
    <form class="well form-horizontal" action=" " method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->

<div id="wrapper">
 	<form method="POST" action="index1.html" onsubmit="return Validate()" name="vform">
 				<div>
 				<h2> Sign Up here! </h2>
 				<h4> <strong>If you are new to baking bees please fill in all fields to serve you better..</strong> </h4>
 				<label>		Username  			:		<br/>
 				<input type="text" name="username" class="textInput" placeholder="username">
 				<div id="name_error" class="val_error"></div>
 				</div>		
 				</label> 								<br/>
 				<div>    
				<label> 		E-mail id 			:		<br/>
				<input type="email" name="email" class="textInput" placeholder="email">
				<div id="email_error" class="val_error"></div>
 				</div>							<br/>				
 				</label> 										<br/>
 				<div>
			    <label>		Password  			:	<br/>
 				<input type="password" name="password" class="textInput" placeholder="password">
 				<div id="password_error" class="val_error"></div>
 				</div>								<br/>
 				</label>
 				<div>
 				<label>		Password Confirm  	:		<br/>
 				<input type="password" name="password_confirmation" class="textInput" placeholder="Password_confirmation">
 				<div id="password_error" class="val_error"></div>
 				</div>			</label>  				<br/>


				<div>
 				<label>		Mobile  			:		<br/>
 				<input type="text" name="mobile" class="textInput" placeholder="mobile">
 				<div id="mobile_error" maxlength="10"  class="val_error"></div>
 				</div> </label> <br/>

<label>
 		<div>
 		<br/>
 			<input type="submit" value="Register" name="register">
 		</div>
 		
 	</form>
 	</label>

 </div>
</body>
</html>



  
  

<!--adding javascript-->
<script type="text/javascript">
	//getting all input objects
	var username=document.forms["vform"]["username"];
	var email=document.forms["vform"]["email"];
	var password=document.forms["vform"]["password"];
	var password_confirmation=document.forms["vform"]["password_confirmation"];
	var mobile=document.forms["vform"]["mobile"]

//getting all error display objects
var name_error=document.getElementById("name_error");
var email_error=document.getElementById("email_error");
var password_error=document.getElementById("password_error");
var mobile_error=document.getElementById("mobile_error");

//setting all event lsiteners
username.addEventListener("blur",nameVerify,true);
email.addEventListener("blur",emailVerify,true);
password.addEventListener("blur",passwordVerify,true);
mobile.addEventListener("blur",mobileVerify,true);

//validation function

function Validate()
{
	//username validation
	if(username.value=="")
	{
		username.style.border="1px solod red";
		name_error.textContent="username is required";
		username.focus();
		return false;
	}

	if(email.value=="")
	{
		email.style.border="1px solod red";
		email_error.textContent="email is required";
		email.focus();
		return false;
	}
	//password validation
	if(password.value=="")
	{
		username.style.border="1px solod red";
		password_error.textContent="password is required";
		password.focus();
		return false;
	}
	//check 2 passwords match
	if(password.value!= password_confirmation.value)
	{
		password.style.border="1px solid red";
		password_confirmation.style.border="1px solid red";
		password_error.innerHTML="The 2 password doesn not match";
	}

	if(mobile.value=="")
{
		mobile.style.border="1px solid violet";
		mobile_error.textContent="mobile number must be 10digit ";
		mobile.focus();
		return false;

}


}
//event handler functions
function nameVerify()
{
	if(username.value!="")
	{
		username.style.border="1px solid violet";
		name_error.innerHTML="";
		return true;
	}
}

function emailVerify()
{
	if(email.value!="")
	{
		email.style.border="1px solid violet";
		email_error.innerHTML="";
		return false;
	}
}

function passwordVerify()
{
	if(password.value!="")
	{
		password.style.border="1px solid violet";
		password_error.innerHTML="";
		return false;
	}
}


function mobileVerify()
{
	if(mobile.value=="/^\d{10}$/")
	{
		email.style.border="1px solid violet";
		email_error.innerHTML="mobile number should be 10 digit";
		return true;
	}
}


</script>


</body>

</html>



