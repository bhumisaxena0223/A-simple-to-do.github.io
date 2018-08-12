<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us - to do list </title>
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
  <script type="text/javascript">
  function validateForm() {
	    var x = document.forms["form_id"]["userid"].value;
	    var y = document.forms["form_id"]["answer"].value;
	    if( (x == "")&&(y == "")) {
	        alert("Name must be filled out");
	        return false;
	    }
	}
  </script>
</head>
<body>
<div class="Wrapper-container">
	<nav class="navbar">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#"><img alt="logo" src="images/to-do-logo-final.jpeg" class="img-responisve td-img-size"></a>
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
	<!--
	<div class="container td-feedback">
		<form id="form_id" method="post" name="myform" onsubmit="return validateForm()" action="feedback.jsp">
			<label>User Name :</label>
			<input type="text" name="userid" id="userid" required/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<br><label>Feedback :</label>
			<textarea row="4" cols="30" name="answer"required></textarea>
			<br>
			<input type="button" value="submit" id="submit"/>
		</form>
	</div> -->
	<div class="container td-success">
		<div class="img-center"><img src="images/Contact.jpg"></div>
		<h4 class="h4-heading">We love to Help you.</h4>
		<span>You can follow us on :</span><br><br>
		<div><a href="#" ><img src="images/facebook.png" alt="facebook"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" ><img src="images/instagram.png" alt="facebook"></a>
		<br><br>
		<a href="#" ><img src="images/twitter.png" alt="facebook"></a>
		</div>
	</div>
	<div class="container">
		<table class="table-footer">
								<tr>
									<th><a href="#">INFORMATION</a></th>
									<th>SERVICES</th>
									<th>PURCHASE ORDER</th>
									<th>1-800-708-glow(4569)</th>
								</tr>
								<tr>
									<td>company info</td>
									<td>company info</td>
									<td>company info</td>
									<td>hours 9 a.m-5 p.m</td>
								</tr>
								<tr>
									<td>To DoINFO</td>
									<td>To Do INFO</td>
									<td>To Do INFO</td>
									<td>monday-friday</td>
								</tr>
								<tr>
									<td>Contact info</td>
									<td>Contact info</td>
									<td>Contact info</td>
								</tr>
								<tr>
									<td>privacy and security</td>
									<td>privacy and security</td>
									<td>privacy and security</td>
									<td>for faster service: contact us</td>
								</tr>
							</table>
		
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