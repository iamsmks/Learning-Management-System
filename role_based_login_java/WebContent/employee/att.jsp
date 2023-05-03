<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Attendance System</title>
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
  width: 50%;
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
			max-width: 800px;
			margin: 0 auto;
			padding: 100px;
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
<body background="images/c1.jpeg">

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
		

	<h1>Attendance System</h1>
<div class="cont">
  <div class="row">
	<div class="column">
     <img src= "images/take.jpg" width="200" height="150">
      <br>
     <a style="color: white" href="attendance.jsp"><b>Take Attendance</b></a>
      </div>
     <br>
     <div class="column">
     <img src= "images/view.jpg" width="200" height="150">
     <br>
     <a style="color: white" href="view.jsp"><b>View Attendence</b></a>
     </div>
  </div>   
</div>

</body>
</html>
