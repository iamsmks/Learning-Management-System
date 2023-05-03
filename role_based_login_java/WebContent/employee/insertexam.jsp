<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Insert Exam Details</title>
  <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<style>
.cont {
			width: 100%;
			max-width: 800px;
			margin: 0 auto;
			padding: 50px;
			background-color:black;
			text-align: center;
			opacity: 0.9;
      box-shadow: 10px 10px;
      color:white;
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
			<a class="navbar-brand" href="employee_home.jsp">Home</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="../logout.jsp">Logout</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>
</head>
<body>
<br>
<br>
<br>
<br>
<div class="cont">
  <h1>Insert Exam Details</h1>
  <form action="saveexam.jsp" method="POST">
   <label for="id">Exam ID:</label>
    <input type="number" name="id" style="background-color:black;">
    <br><br>
    <label for="ExamName">Exam Name:</label>
    <input type="text" name="ExamName" style="background-color:black;">
    <br><br>
    <label for="ExamDate">Exam Date:</label>
    <input type="date" name="ExamDate" style="background-color:black;">
    <br><br>
    <label for="ExamDuration">Exam Duration:</label>
    <input type="number" name="ExamDuration" style="background-color:black;">
    <br><br>
    <input type="submit" value="Save Exam Details"  style="background-color:cyan;">
  </form>
  </div>
<a href="exam.jsp">Cancel</a>

</body>
</html>





