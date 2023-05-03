<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scam University Faculty</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<style>
img {
  border-radius: 25px;
}
.column {
  opacity: 1;
  float: left;
  width: 30%;
  padding: 3px;
}

.row::after {
	opacity: 10;
  content: "";
  clear: both;
  display: table;
}
.cont {
			width: 100%;
			max-width: 1000px;
			margin: 0 auto;
			padding: 50px;
			background-color: black;
			text-align: center;
			opacity: 0.8;
      box-shadow: 10px 10px;
		}

		body {
      
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
      background-color: #fff;
    }
	
</style>
<body  background="images/c1.jpeg">
	<nav class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="">Home</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="../logout.jsp">Logout</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	
		<h1>Welcome Faculty</h1>

		

		<%
      	//setHeader no-cache because employee logut successfully go "index.jsp" page but employee click on back button than not show "employee_home.jsp" page
        response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
        
      	//check if condition get employee session is null than employee not access "employee_home.jsp" page
		if(session.getAttribute("employee_login")==null || session.getAttribute("employee_login")=="") 
		{
            response.sendRedirect("../index.jsp"); 
		}
		%>

		<h2>
			<%=session.getAttribute("employee_login")%></h2>
		<br>
			<br>
				<br>
	


<center>
 <div class="cont">
  <div class="row">
    <div class="column">
      <img src="images/courses.png" width="200" height="150">
      <br>
     <a style="color: white" href="courses.jsp"><b>courses</b></a>
    </div>

   <div class="column">
   <img src= "images/att.png" width="200" height="150">
   <br>
   <a style="color: white" href="att.jsp"><b>Attendence</b></a>
   </div>

    <div class="column">
    <img src= "images/exam.png" width="200" height="150">
    <br>
     <a style="color:white" href="exam.jsp"><b>Exam</b></a>
    </div>
    
    <div class="column">
    <img src= "images/fee.png" width="200" height="150">
    <br>
     <a style="color:white" href="feeinsert.html"><b>Fees</b></a>
    </div>
    <br>
 </div>
 </div>
</center>
</body>
</html>