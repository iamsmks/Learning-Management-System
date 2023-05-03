<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Edit Exam Details</title>
  <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>

<body>
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
			<a class="navbar-brand" href="exam.jsp">Home</a>
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
  <h1>Edit Exam Details</h1>
  <form action="saveexam.jsp" method="POST">
    <input type="hidden" name="id" value="${exam.id}">
    <label for="ExamName">Exam Name:</label>
    <input type="text" name="ExamName" value="${exam.ExamName}">
    <br><br>
    <label for="ExamDate">Exam Date:</label>
    <input type="date" name="ExamDate" value="${exam.ExamDate}">
    <br><br>
    <label for="ExamDuration">Exam Duration:</label>
    <input type="number" name="ExamDuration" value="${exam.ExamDuration}">
    <br><br>
    <input type="submit" value="Update Exam Details">
  </form>
<a href="examdetails.jsp?id=${exam.id}">Cancel</a>

</body>
</html> 
