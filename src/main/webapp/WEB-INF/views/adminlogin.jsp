<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="/head"/>
<div class="form">
<script type="text/css">
					</script>
					
					<div class="container">
					<div class="row">
					    <div class="col-lg-12 col-centered">
					    	<div class="table-responsive">
					    	
					    	<c:if test="${success != null}">
			                <div class="alert alert-success">
			                	<p>${success}</p>
			                </div>
			                </c:if>
			                
			                <c:if test="${error != null}">
			                <div class="alert alert-danger">
			                	<p>${error}</p>
			                </div>
			                </c:if>
					    
	<form method="post" action="adminlogin"  >
	
		<!--  -->
		<table style="width: 80%;" class="table center">
			<tr>
				
				<td>UserName:<input path="UserName" type="text" name="UserName" id="UserName" class="form-control" autofocus="true"/></td>
				
			</tr>
			
			
			<tr>
			
				<td>Password:<input path="Password" name="Password" type="Password"  class="form-control" id="Password" autofocus="true"/></td>
				
			</tr>
			
			<td>  <button type="submit">Submit</button></td>
	  </table>
		<!--  -->
	
	</form>		
							  	
</body>
</html>