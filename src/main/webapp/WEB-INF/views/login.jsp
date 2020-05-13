
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
          <li ><a href="signup">Sign Up</a></li>
           <li><a href="productList">View All Products</a></li>
          <li><a href="findAll">Find All</a></li>
          <li class="selected"><a href="login">Log In</a></li>
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
        
    <form:form method = "POST" ACTION ="loginUser" modelAttribute = "user"  class="form-container">
	 <h4 >
		
	</h4>
		
		<div class="form-group">
			<label for="loginName">Username </label> <form:input type="text"
				class="form-control" placeholder= "Username /Email" path="loginName" id="userName"
				/>
		</div>
		
		<div class="form-group">
			<label for="password">Password</label> <form:input type="password"
				class="form-control" placeholder= "Password" path="loginPassword" id="password"
				/>
				</div>

		
			<div class="checkbox">
				<label> <input type="checkbox"> Keep me signed in
				</label>
			</div>
			<input type="submit" class="btn btn-default"></input>
	</form:form>
    
	<div align="center" style="color: red"  >${msg}</div>
	<br>	
	
	
        
        <br>
         <br>
          <br>
           <br>
        
    <div id="content_footer"></div>
   
      
    </div>
  </div>
  
	
</body>
</html>