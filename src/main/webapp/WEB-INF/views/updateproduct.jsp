<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<html>
<head>
<c:import url="/head-meta"/>

</head>

<body>
<c:import url="/head"/>
<br>

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
					    
	<form:form method="post" action="${pageContext.request.contextPath}/hitproductdb" modelAttribute="Product" enctype="multipart/form-data">
	
	<form:input path="ProductId" type="hidden" />
	
	
		<!--  -->
		<table style="width: 80%;" class="table center">
			<tr>
				<td><form:label path="productName" for="productName">Product Name:</form:label></td>
				<td><form:input path="productName" type="text"  class="form-control" id="productName"/></td>
				
			</tr>
			
			<tr>
				<td><form:label path="productCategory" for="productCategory">Product Category:</form:label></td>
				<td><form:input path="productCategory" type="text"  class="form-control" id="productCategory"/></td>
		
			<tr>
				<td><form:label path="productPrice" for="productPrice">Product Price:</form:label></td>
				<td><form:input path="productPrice" type="productPrice"  class="form-control" id="productPrice" autofocus="true"/></td>
			</tr>
			
							  	
			<tr>
				<td><form:label path="productQuantity" for="productQuantity">Product Quantity:</form:label></td>
				<td><form:input path="productQuantity" type="productQuantity" class="form-control" id="productQuantity"/></td>
			</tr>
							  	
			<tr>
				<td><form:label path="productImage" for="productImage">Product Image:</form:label></td>
				<td><form:input path="productImage" type="file" class="form-control" id="productImage"/></td>
			</tr>
				
			<tr>
				<td><form:label path="productDescription" for="productDescription">Product Description:</form:label></td>
				<td><form:textarea path="productDescription" class="form-control" id="productDescription"></form:textarea></td>
			</tr>
							  	
			<tr>
				<td colspan="2" >
					<div class="row">
					    <div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-default">Submit</button> 
					    </div>
					</div>
		  		</td>
		  	</tr>
							  	
		  </table>
		<!--  -->
	
	</form:form>	
</div>		