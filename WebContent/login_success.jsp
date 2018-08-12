<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logged in </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="images/checklist.png" sizes="16x16" type="image/png"> 
  <!-- css -->
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <!-- bootstrap css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <script>
//Create a new list item when clicking on the "Add" button
  function newElement() {
    var li = document.createElement("li");
    var inputValue = document.getElementById("myInput").value;
    var t = document.createTextNode(inputValue);
    li.appendChild(t);
    if (inputValue === '') {
      alert("You must write something!");
    } else {
      document.getElementById("myUL").appendChild(li);
    }
    document.getElementById("myInput").value = "";

    var span = document.createElement("SPAN");
    var txt = document.createTextNode("\u00D7");
    span.className = "close";
    span.appendChild(txt);
    li.appendChild(span);

    for (i = 0; i < close.length; i++) {
      close[i].onclick = function() {
        var div = this.parentElement;
        div.style.display = "none";
      }
    }
  }
//Create a "close" button and append it to each list item
  var myNodelist = document.getElementsByTagName("LI");
  var i;
  for (i = 0; i < myNodelist.length; i++) {
    var span = document.createElement("SPAN");
    var txt = document.createTextNode("\u00D7");
    span.className = "close";
    span.appendChild(txt);
    myNodelist[i].appendChild(span);
  }
//Click on a close button to hide the current list item
  var close = document.getElementsByClassName("close");
  var i;
  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
//Add a "checked" symbol when clicking on a list item
  var list = document.querySelector('ul');
  list.addEventListener('click', function(ev) {
    if (ev.target.tagName === 'LI') {
      ev.target.classList.toggle('checked');
    }
  }, false);
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
	<div class="container td-success">
	<h4 class="h4-heading">Welcome </h4>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%
	String userid=request.getParameter("userid");
	session.putValue("userid",userid);
	String password=request.getParameter("password");
	session.putValue("password",password);
	Class.forName("org.postgresql.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5433/worklist"); 
	Statement st= con.createStatement(); 
	ResultSet rs=st.executeQuery("select userid,password from userdata where userid='"+userid+"'"); 
	if(rs.next()) 
	{ 
	if(rs.getString(2).equals(password)) 
	{ 
	out.println("User : "+ userid); 
	} 
	else 
	{ 
	out.println("Invalid password try again : "+userid); 
	} 
	}
%>
</div>

<div class="td-activity container" id="myDIV">
			<input type="text" placeholder="Enter an Activity..." id="myInput">
			<button id="add" onclick="newElement()">+</button>
</div>
<div class="container ul-div-create">
<ul id="myUL" class="createli">
</ul>
</div>
			<!-- <div class="container">
			<ul class="todo" id="todo">
				 <li>
					<div class="buttons">
						<button class="remove"><img alt="trash" src="images/trash-can.svg" class="img-responsive"></button>
						<button class="complete"><img alt="succes" src="images/success.svg" class="img-responsive"></button>
					</div>
				</li>
			</ul>
			<ul class="todo" id="completed">
			</ul>
		</div>-->
		
<br>
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
</body>
</html>