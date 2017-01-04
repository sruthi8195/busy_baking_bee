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

<center>
	<h3>Add Products Here!!!</h3>
</center>

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
					    
	<form method="post" action="AddProduct" modelAttribute="Product" >
	
		<!--  -->
		<table style="width: 80%;" class="table center">
			<tr>
				
				<td>Product Name:<input path="productName" type="text" name="ProductName" id="productName" class="form-control" autofocus="true"/></td>
				
			</tr>
			
			
			<tr>
			
				<td>Product Price:<input path="productPrice" name="ProductPrice" type="productPrice"  class="form-control" id="productPrice" autofocus="true"/></td>
				
			</tr>
			
							  	
			<tr>
				
				<td>Product Quantity<input path="productQuantity" name="ProductQuantity" type="productQuantity"  class="form-control" id="productQuantity" autofocus="true" /></td>
				
			</tr>
				
				<tr>
				
				<td>Product Category<input path="productCateogry" name="ProductCateogry" type="productCateogry"  class="form-control" id="productCateogry" autofocus="true" /></td>
				
			</tr>
							  	
			<tr>
				
				<td>Product Image<input path="productImage" name="productImage" type="file" class="form-control" id="productImage" autofocus="true"/></td>
				
			</tr>
				
			<tr>
				
				<td>Product Description: <input path="ProductDescription" name="ProductDescription" type="ProductDescription"  class="form-control" id="ProductDescription" autofocus="true" /> </td>
				
				
			</tr>
							  	
			
				<td>  <button type="submit">Submit</button></td>
					     
				
		  		
		  	
				  	
		  </table>
		<!--  -->
	
	</form>		
	
	</body>
	</html>
