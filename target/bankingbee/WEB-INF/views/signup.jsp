<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<c:import url="/head-meta" />
</head>
<body>

	<c:import url="/head" />

</body>
<div class="form">
	
		<div id="wrapper">
			<form:form method="POST" action="AddUser" modelAttribute="user"
				name="vform">
				<div>
					<h2>Sign Up here!</h2>
					<h4>
						<strong>If you are new to baking bees please fill in all
							fields to serve you better..</strong>
					</h4>
					<form:label path="username" for="username">		Username  			:	</form:label>
					<br />
					<form:input type="text" name="username" path="username"
						id="username" class="textInput" placeholder="username" />
					<div id="name_error" class="val_error" ></div>
				</div>
				<br />
				<div>
					<form:label path="email" for="email"> 		E-mail id 			:	</form:label>
					<br />
					<form:input path="email" id="email" type="email" name="email"
						class="textInput" placeholder="email" />
					<div id="email_error" class="val_error"></div>
				</div>
				<br />
				<br />
				<div>
					<form:label path="password" for="password">		Password  			: </form:label>
					<br />
					<form:input path="password" id="password" type="password"
						name="password" class="textInput" placeholder="password" />
					<div id="password_error" class="val_error"></div>
				</div>
				<br />

				<div>
					<form:label path="password_confirmation"
						for="password_confirmation">		Password Confirm  	: </form:label>
					<br />
					<form:input path="password_confirmation" id="password_confirmation"
						type="password" name="password_confirmation" class="textInput"
						placeholder="Password_confirmation" />
					<div id="password_error" class="val_error"></div>
				</div>
				<br />


				<div>
					<form:label path="mobile" for="mobile">		Mobile  			:	 </form:label>
					<br />
					<form:input path="mobile" id="mobile" type="text" name="mobile"
						class="textInput" placeholder="mobile" />
					<div id="mobile_error" maxlength="10" class="val_error"></div>
				</div>
				<br />

				<label>
					<div>
						<br />
						<button type="submit" value="Register" name="register">Register
							me</button>
					</div>
				</label>

			</form:form>

		</div>
		</body>
</html>






<!--adding javascript-->
<script type="text/javascript">
	//getting all input objects
	var username = document.forms["vform"]["username"];
	var email = document.forms["vform"]["email"];
	var password = document.forms["vform"]["password"];
	var password_confirmation = document.forms["vform"]["password_confirmation"];
	var mobile = document.forms["vform"]["mobile"]

	//getting all error display objects
	var name_error = document.getElementById("name_error");
	var email_error = document.getElementById("email_error");
	var password_error = document.getElementById("password_error");
	var mobile_error = document.getElementById("mobile_error");

	//setting all event lsiteners
	username.addEventListener("blur", nameVerify, true);
	email.addEventListener("blur", emailVerify, true);
	password.addEventListener("blur", passwordVerify, true);
	mobile.addEventListener("blur", mobileVerify, true);

	//validation function

	function Validate() {
		//username validation
		if (username.value == "") {
			username.style.border = "1px solod red";
			name_error.textContent = "username is required";
			username.focus();
			return false;
		}

		if (email.value == "") {
			email.style.border = "1px solod red";
			email_error.textContent = "email is required";
			email.focus();
			return false;
		}
		//password validation
		if (password.value == "") {
			username.style.border = "1px solod red";
			password_error.textContent = "password is required";
			password.focus();
			return false;
		}
		//check 2 passwords match
		if (password.value != password_confirmation.value) {
			password.style.border = "1px solid red";
			password_confirmation.style.border = "1px solid red";
			password_error.innerHTML = "The 2 password doesn not match";
		}

		if (mobile.value == "") {
			mobile.style.border = "1px solid violet";
			mobile_error.textContent = "mobile number must be 10digit ";
			mobile.focus();
			return false;

		}

	}
	//event handler functions
	function nameVerify() {
		if (username.value != "") {
			username.style.border = "1px solid violet";
			name_error.innerHTML = "";
			return true;
		}
	}

	function emailVerify() {
		if (email.value != "") {
			email.style.border = "1px solid violet";
			email_error.innerHTML = "";
			return false;
		}
	}

	function passwordVerify() {
		if (password.value != "") {
			password.style.border = "1px solid violet";
			password_error.innerHTML = "";
			return false;
		}
	}

	function mobileVerify() {
		if (mobile.value == "/^\d{10}$/") {
			email.style.border = "1px solid violet";
			email_error.innerHTML = "mobile number should be 10 digit";
			return true;
		}
	}
</script>


</body>

</html>



