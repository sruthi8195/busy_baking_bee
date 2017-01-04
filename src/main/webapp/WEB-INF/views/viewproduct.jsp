<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta" />

<title>Insert title here</title>
</head>
<body>
<c:import url="/head" />
<script type="text/css">
</script>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-centered">
				<div class="table-responsive">


					<table style="width: 80%;" class="table center">
					
					<tr>
									<td colspan="2"><img src="${pageContext.request.contextPath}/${ProductImage}"></img></td>
									
								</tr>
								
						<tr>
							<td><label>Product Name:</label></td>
							<td>${ProductName}</td>

						</tr>
						<tr>
							<td><label>Product Category:</label></td>
							<td>${ProductCateogry}</td>

						</tr>

						<tr>
							<td>Product Price:</td>
							<td>${ProductPrice}</td>
						</tr>
						
						<tr>
							<td>Product Quantity:</td>
							<td>${ProductQuantity}</td>
						</tr>
						
						<tr>
							<td>Product Description:</td>
							<td>${ProductDescription}</td>
						</tr>

				</table>

				</div>
			</div>
		</div>
	</div>

</body>
</html>