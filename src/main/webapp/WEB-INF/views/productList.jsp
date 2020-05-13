
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>

<head>
  <title>colour_blue - examples</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <style>
.grid-container {
  display: grid;
  grid-row-gap: 20px;
  grid-template-columns: auto auto auto auto;
  background-color: #2196F3;
  padding: 10px;
}

.grid-item {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid rgba(0, 0, 0, 0.18);
  padding: 10px;
  font-size: 20px;
  text-align: left;
}
</style>
</head>
<body>
  
  <link rel="stylesheet" type="text/css" href="style/style1.css" title="style" />
</head>

<body>
 <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
           <h1><a href="#index">Spring <span class="logo_colour">Project:</span>Sample-1</a></h1>
          <h2>Simple. Contemporary. Learning Solutions</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li ><a href="/">Home</a></li>
          <li><a href="about">About Us</a></li>
          <li><a href="signup">Sign Up</a></li>
          <li class = "selected"><a href="productList">View All Products</a></li>
          <li><a href="findAll">Find All</a></li>
           <li><a href="productEntry">Enter Products</a></li>
          
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        
        <ul>
         
        </ul>
       
      </div>


<h1>The available Products:</h1>
<div class="grid-container">
<c:forEach items="${products}" var = "product">

  <div class="grid-item">Product ID: <c:out value="${product.productId}" /></div>
  <div class="grid-item">  <c:out value="${product.productName}" /></div>
  <div class="grid-item"> <c:out value="${product.description}" /></div>  
  <div class="grid-item">Price:  $<c:out value="${product.price}" />0</div>

</c:forEach>
</div>

</body>
</html>