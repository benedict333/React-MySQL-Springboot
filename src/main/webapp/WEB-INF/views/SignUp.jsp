
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <title>colour_blue - examples</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
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
          <li><a href="/">Home</a></li>
          <li><a href="about">About Us</a></li>
          <li class="selected"><a href="signup">Sign Up</a></li>
           <li><a href="productList">View All Products</a></li>
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
      <div id="content">
        <!-- insert the page content here -->
        
        
	
	
	<br>	
	
	<form:form method = "POST" ACTION ="signUpUser" modelAttribute = "user"  class="form-container">
	 <h4 >
		Hello Guest!
		<br>
		Please Sign Up!		
	</h4>
		<div class="form-group">
			<label for="firstName">First Name</label> <form:input type = "text"
				class="form-control" path ="firstName" id="firstName"
				/>
		</div>
				<div class="form-group">
			<label for="LastName">Last Name</label> <form:input type="text"
				class="form-control" path="LastName" id="LastName"
				/>
		</div>

		<div class="form-group">
			<label for="age">Age</label> <form:input type="text"
				class="form-control" path="age" id="age"
				/>
		</div>
		<div class="form-group">
			<label for="email">Email </label> <form:input type="text"
				class="form-control" path="email" id="email"
				/>
		</div>
<div class="form-group">
			<label for="UserName">Username</label> <form:input type="text"
				class="form-control" path="userName" id="userName"
				/>
		</div>
		
		
		<div class="form-group">
			<label for="password">Password</label> <form:input type="password"
				class="form-control" path="password" id="password"
				/>
				</div>		
			
			<input type="submit" class="btn btn-default"></input>
	</form:form>
        
        <br>
         <br>
          <br>
           <br>
        
    <div id="content_footer"></div>
   
      
    </div>
  </div>
  
	
</body>
</html>