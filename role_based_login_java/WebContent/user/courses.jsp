<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Courses</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</head>
<body background="images/c1.jpeg">
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
			max-width: 600px;
			margin: 0 auto;
			padding: 50px;
			background-color: black;
			text-align: center;
			opacity: 0.9;
      box-shadow: 10px 10px;
		}

		body {
      
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
      background-color: #fff;
    }
	
</style>
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
				<a class="navbar-brand" href="user_home.jsp">Home</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="../logout.jsp">Logout</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

<h2 style="color: black;">Courses</h2>
<br>
<br>
<br>
<br>
<br>
<div class="cont">
  <div class="row">
    <div class="column">
      <img src= "images/aids.jpg" width="150" height="150"> 
      <br>
     <a style="color: white;" href="aidscourses.jsp"><b>AI & DS</b></a>
    </div>

   <div class="column">
   <img src= "images/cse.webp" width="150" height="150">
   <br>
   <a style="color: white;" href="csecourses.jsp"><b>CSE</b></a>
   </div>

    <div class="column">
    <img src= "images/ece.webp" width="150" height="150">
    <br>
     <a style="color: white;" href="ececourses.jsp"><b>ECE</b></a>
    </div>
    
 </div>
 </div>
</body>
</html>