<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To do list -about us</title>
<!-- favicon -->
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
  function redirect()
  {
  window.location="signup_page.jsp";
  }
  </script>
</head>
<body>
<!-- space should be leaves for top bar -->
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
	</div>
	<!-- carosuel -->
	<div class="container">
	  <br>
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	      <li data-target="#myCarousel" data-slide-to="3"></li>
	    </ol>
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">
	
	      <div class="item active">
	        <img src="images/cruises1.jpg" alt="Chania" width="400" height="200">
	        <div class="carousel-caption">
	          <h3>Our Story Begins Here.</h3>
	          <p>How To Start Organise MY work According To My Time</p>
	        </div>
	      </div>
	
	      <div class="item">
	        <img src="images/cruises2.jpg" alt="Chania" width="400" height="200">
	        <div class="carousel-caption">
	          <h3>Now Organise for Anything</h3>
	          <p>No matter whether your lists are work related or just for fun, <br>you will never miss a deadline again</p>
	        </div>
	      </div>
	    
	      <div class="item">
	        <img src="images/mountain-tour.jpg" alt="Flower" width="400" height="200">
	        <div class="carousel-caption">
	          <h3>Designed for Easy living</h3>
	          <p>Set Due Dates and Reminders and Assign to-do's.</p>
	        </div>
	      </div>
	
	      <div class="item">
	        <img src="images/ttd-gcoast.jpg" alt="Flower" width="460" height="345">
	        <div class="carousel-caption">
	          <h3>Now Plannig For Anything</h3>
	          <p>Plan your day, week, month, and life.</p>
	        </div>
	      </div>
	  
	    </div>
	
	    <!-- Left and right controls -->
	    <a class="left carousel-control td-slider" href="#myCarousel" role="button" data-slide="prev">
	    	<div class="td-slider">
	    	  <img src="images/arrow-left-direction.png">
			</div>      
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control td-slider" href="#myCarousel" role="button" data-slide="next">
	    	<div class="td-slider">
	      		<img src="images/right-black-arrow.png">
	      	</div>
	      	<span class="sr-only">Next</span> </a>
	      	
	</div>
	<div class="container td-why-do">
		<h4 class="h4-heading">Why Use a To-Do List?</h4>
		<p class="para-aboutus">We all have those days when there are a million things to do, and we don't know how we're going to get it all done. It's easy to become overwhelmed by the vast quantity of tasks that we must do from day to day. Sometimes we have so many balls in the air, that we may even lose track of some loose ends and forget to do important things. When we get too busy, we end up feeling like we are barely able to keep our heads above water.
		</p>
		<br><br>
		<div class="img-center">
			<img src="images/why-to-do.png">
		</div>
	</div>
	<div class="container td-why-do">
		<h4 class="h4-heading">Be more Productive with a To-Do List</h4>
		<p class="para-aboutus">When you have a to-do list hat you ac follow you can keep your priorities straight, avoid unimportant distractions, and improve your productivity!
		One study, conducted by the Harvard Business Review, showed that 90% of managers wasted valuable time through poor time management. Your to-do list will help you focus your attention on the most important task of the moment.
	 <br><br>
		<div class="img-center">
			<img src="images/be-more-focused.png">
		</div>
	</div>
	<div class="container td-sync-about">
		<span>The To Do List provides you way to get stuff Done.<br>Whether you planning a holiday,sharing a shopping list with a partner or managing multiple work project.
						<br>TO DO LIST is here to help you tick off all your personal and professionals to-do's. </span>
			<div class="td-Subscribe"><button value="create a free account" onclick=redirect() class="create-td">Create a free Account</button>
						</div>			
	</div>
	<div class="tc-copyright">
			<ul>
				<li><a href="About-us.jsp" class="tc-black">About us</a></li>
				<li><a href="terms.jsp" class="tc-black">website terms &amp; conditions</a></li>
				<li><a href="#policy" target="top" class="tc-black">privacy policy</a></li>
				<li><a href="contact.jsp" class="tc-black">Contact Us</a></li>
				<li><a href="login_page.jsp" class="tc-black">Login</a></li>
			</ul>
			<div id="policy">© 2018 To do list Ptd Ltd All Rights Reserved</div>
		</div>
		
</div>
</body>
</html>