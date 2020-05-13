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
  <link rel="stylesheet" type="text/css" href="style/style1.css" title="style" />
   <style>
.grid-container {
  display: grid;
  grid-row-gap: 20px;
  grid-template-columns: auto auto auto auto auto auto;
  background-color: #2196F3;
  padding: 10px;
}

.grid-item {
  background-color: rgba(255, 255, 255, 30);
  border: 1px solid rgba(0, 0, 0, 0.18);
  padding: 10px;
  font-size: 15px;
  text-align: left;
}
.grid-heading {
  background-color: rgba(255, 255, 255, 0.5);
  border: 1px solid rgba(0, 0, 0, 0.18);
  padding: 10px;
  font-size: 20px;
  text-align: center;
  color: #ffffff;
	text-shadow: 3px 2px red;
}
</style>
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
          <li><a href="productList">View All Products</a></li>
          <li><a class="selected" href="Find All">Find All</a></li>
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
<body>


<h1>The available Products:</h1>
<div class="grid-container">
 <div class="grid-heading"> User-name</div>
  <div class="grid-heading"> First-name</div>
   <div class="grid-heading"> Last-name</div>
    <div class="grid-heading">Age</div>
     <div class="grid-heading">Email</div>
      <div class="grid-heading"> Password</div>
<c:forEach items="${users}" var = "user">

  <div class="grid-item"> <c:out value="${user.userName}" /></div>
  <div class="grid-item"> <c:out value="${user.firstName}" /></div>
  <div class="grid-item"> <c:out value="${user.lastName}" /></div>
  <div class="grid-item"><c:out value="${user.age}" /></div>
   <div class="grid-item"><c:out value="${user.email}" /></div>
	<div class="grid-item"><c:out value="${user.password}" /></div>
</c:forEach>
</div>

</body>
</html>