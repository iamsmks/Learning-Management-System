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
.cont {
			width: 100%;
			max-width: 1000px;
			margin: 0 auto;
			padding: 50px;
			background-color: black;
			text-align: center;
			opacity: 0.8;
      box-shadow: 10px 10px;
      color: white;
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
			<a class="navbar-brand" href="att.jsp">Home</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="../logout.jsp">Logout</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<div class="cont">
	<h1>Attendance System</h1>
    <form action="save.jsp" method="post">
          <br><label>ID:</label> <input type="number" name="id"><br>
		<br><label>Name:</label> <input type="text" name="name"><br>
		<br> <label>Status:</label> <input type="radio" name="status"
			value="Present">Present <input type="radio" name="status"
			value="Absent">Absent<br>
		<br> <input type="submit" value="Submit">
	</form>
	</div>
</body>
</html>
