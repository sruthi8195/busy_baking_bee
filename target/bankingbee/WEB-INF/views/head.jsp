<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">BakingBee</a>
    </div>
   
      <ul class="nav navbar-nav navbar-right">


       <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
       <li class="active"><a href="${pageContext.request.contextPath}/aboutus">about us</a></li>
       <li><a href="${pageContext.request.contextPath}/contact">contact us</a></li>
      <li><a href="${pageContext.request.contextPath}/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="${pageContext.request.contextPath}/faq">faq</a></li>
          
          </ul>
        </li>
        
      </ul>
        
      </ul>
    </div>
  </div>
</nav>
  