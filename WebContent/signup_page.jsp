<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup page</title>
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
  <script>
  function validateEmail(emailField){
      var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

      if (reg.test(emailField.value) == false) 
      {
          alert('Invalid Email Address');
          return false;
      }

      return true;

}
  var myInput = document.getElementById("psw");
  var letter = document.getElementById("letter");
  var capital = document.getElementById("capital");
  var number = document.getElementById("number");
  var length = document.getElementById("length");

  // When the user clicks on the password field, show the message box
  myInput.onfocus = function() {
      document.getElementById("message").style.display = "block";
  }

  // When the user clicks outside of the password field, hide the message box
  myInput.onblur = function() {
      document.getElementById("message").style.display = "none";
  }

  // When the user starts to type something inside the password field
  myInput.onkeyup = function() {
    // Validate lowercase letters
    var lowerCaseLetters = /[a-z]/g;
    if(myInput.value.match(lowerCaseLetters)) {  
      letter.classList.remove("invalid");
      letter.classList.add("valid");
    } else {
      letter.classList.remove("valid");
      letter.classList.add("invalid");
    }
    
    // Validate capital letters
    var upperCaseLetters = /[A-Z]/g;
    if(myInput.value.match(upperCaseLetters)) {  
      capital.classList.remove("invalid");
      capital.classList.add("valid");
    } else {
      capital.classList.remove("valid");
      capital.classList.add("invalid");
    }

    // Validate numbers
    var numbers = /[0-9]/g;
    if(myInput.value.match(numbers)) {  
      number.classList.remove("invalid");
      number.classList.add("valid");
    } else {
      number.classList.remove("valid");
      number.classList.add("invalid");
    }
    
    // Validate length
    if(myInput.value.length >= 8) {
      length.classList.remove("invalid");
      length.classList.add("valid");
    } else {
      length.classList.remove("valid");
      length.classList.add("invalid");
    }
  }
	function validateForm() {
	    var x = document.forms["user"]["fname"].value;
	    if (x == "") {
	        alert("Name must be filled out");
	        return false;
	    }
	}
	function redirect()
    {
    window.location="signup_page.jsp";
    }
	</script>
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
	<div class="container">	
		<h4 class="h4-heading">Create A Free Account</h4>
		<span class="h4-span">Come join the To do Community.Let's set up your Account.Already have <a href="login_page.jsp">Login here.</a></span>
	</div>
	<div class="container td-social">
		<div class="row clearfix">
			
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 td-form-block">
				<form name="user" action="success.jsp" onsubmit="return validateForm()" method="post">
					Email-ID<br><input type="text" name="userid" size="30" class="form-input" onblur="validateEmail(this);" required>
					<br>
					<br>
					User name<br><input type="text" name="username"required size="30" class="form-input">
				  <br><br>
				  Password<br>
				    <input type="password" id="psw" size="30"class="form-input" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
				  <br>
				  <span class="td-agree">
				  <input type="checkbox" value="check" required>&nbsp;&nbsp;&nbsp;&nbsp;By Signing In, you are agree with <a href="index.jsp" class="a-line">To do List</a> <a href="terms.jsp" class="a-line"> Terms of Services</a> ,Cookie policy, privacy policy and content policy.
				 </span>
				  <br>
					<button type="submit" class="submit-btn">Submit</button>
				</form>
			</div>
		</div>
	</div>
	<div><h4 class="h4-heading">We'll help you With</h4>
	</div>
	<div class="container td-list">
		<div class="row clearfix">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 td-list-1">
				<h2 class="td-list-text">Task List
				</h2>
				<div class="td-img-center">
					<img src="images/shopping-list.png" class="img-responsive">
				</div>
				<span>Keep your tasks, lists and reminders in one place, always in-sync across all your devices
				</span>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 td-list-1">
				<h2 class="td-list-text">Calendar
				</h2>
				<div class="td-img-center">
					<img src="images/clock.png" class="img-responsive">
				</div>
				<span>Plan your day, week, month, and life. Beautifully designed to help you rock your day, everyday
				</span>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 td-list-1">
				<h2 class="td-list-text">Assistant
				</h2>
				<div class="td-img-center">
					<img src="images/social-care.png" class="img-responsive">
				</div>
				<span>Our Assistant takes care of your tasks, so you can spend time on the things that matter.
				</span>
			</div>
		</div>
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