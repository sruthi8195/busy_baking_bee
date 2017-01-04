<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<html>
<head>
<c:import url="/head-meta" />
</head>
<body>
<c:import url="/head" />

	 <script type="text/javascript">
	
	var myApp = angular.module('myApp',[]);
	
	myApp.controller("abc",function($scope)
	{
	
		$scope.data = ${JSONData};
		$scope.searchKeyword = '${param.search}';
	});
	
	</script>
       
<body ng-app="myApp" ng-controller="abc">    
 	<a href="${pageContext.request.contextPath}\addproduct"> 
<button type="button" class="btn btn-default" style="background-color:brown;color:white;width:124px;height:38px;">Add Product</button> 
</a>
    
    
    <div class="container">
    
    <div class="col-lg-12">Search
    			<input type="text" id="search" value="" placeholder="Enter Search Keyword..." class="form-control" ng-model="searchKeyword" />
    		</div>
    		
    		<br>
    		<br>
    		<br>
    		<br>
    
    	<div class="row" ng-repeat="x in data| filter: searchKeyword">
    	<br> <br>
			<div class="col-lg-4">
				<img style="height: 280; width: 380;" src="{{x.ProductImage}}" class="img img-responsive img-thumbnail"></img>
			</div>

			<div class="col-lg-4">
				<table class="table table-responsive">
					<tr>
						<td>Product Name:</td>
						<td>{{x.ProductName}}</td>
					</tr>

					<tr>
						<td>Product Category:</td>
						<td>{{x.ProductCateogry}}</td>
					</tr>

					<tr>
						<td>Product Price:</td>
						<td>{{x.ProductPrice}}</td>
					</tr>

				</table>
    		</div>
    		<div class="col-lg-4">
    			<a href="${pageContext.request.contextPath}/viewproduct/{{x.ProductId}}" class="btn btn-success">View</a>    			
    			<a href="${pageContext.request.contextPath}/updateproduct/{{x.ProductId}}" class="btn btn-info">Update</a>
    			<a href="${pageContext.request.contextPath}/deleteproduct/{{x.ProductId}}" class="btn btn-danger">Delete</a>
    			
    		</div>
    	</div>
    </div>

</body>
</html>