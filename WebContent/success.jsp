<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.interDriver.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success -to do</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="images/checklist.png" sizes="16x16" type="image/png"> 
  <!-- css -->
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <!-- bootstrap css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <!-- fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Merienda:400,700" rel="stylesheet">
  <!-- script -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="Wrapper-container">
	<nav class="navbar nav-color">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#">
	      <div class="td-logo">
	      	<img alt="logo" src="images/to-do-logo-final.jpeg" class="img-responisve td-img-size"></a>
	      </div>
	    </div>
	    <div>
	      <ul class="nav navbar-nav navbar-right td-nav-right">
	      	<li><a href="index.jsp" class="a-color">Home</a></li>
	      	<li><a href="About-us.jsp" class="a-color"> About Us</a></li>
	        <li><a href="signup_page.jsp" class="a-color"><span class="glyphicon glyphicon-user"></span> <button value="create a free account" onclick=redirect() class="btn-hide">Sign Up</button></a></li>
	        <li><a href="login_page.jsp" class="a-color"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	        <li><a href="contact.jsp" class="a-color"> Contact Us</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<div class="container td-success">
<jsp:useBean id="obj" class="com.interDriver.userBean"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
		<%
			int status=UserDAO.insertUser(obj);
			if(status>0)
			{
				out.println("You have registered successfully.");
			}
			else
			out.println("Not recorded,please try again, this email id is already registered with us");
		%>
</div>
<div class="container td-success">
	<span class="td-span-success">You need to go back to Login.</span>
	<hr>
	<a href="login_page.jsp"><mark class="submit-btn">Go Back</mark></a>
</div>
<div class="tc-copyright">
			<ul>
				<li><a href="About-us.jsp" class="tc-black">About us</a></li>
				<li><a href="terms.jsp" class="tc-black">website terms &amp; conditions</a></li>
				<li><a href="#policy" class="tc-black">privacy policy</a></li>
				<li><a href="contact.jsp" class="tc-black">Contact Us</a></li>
				<li><a href="login_page.jsp" class="tc-black">Login</a></li>
			</ul>
			<div id="policy">© 2018 To do list Ptd Ltd All Rights Reserved</div>
		</div>
</div>
</body>
</html>