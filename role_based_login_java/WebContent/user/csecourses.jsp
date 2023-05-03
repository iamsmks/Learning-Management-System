<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Courses with Assignments and Quizzes</title>
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<style>
.column {
  opacity: 1;
  float: left;
  width: 33%;
  padding: 3px;
}

.row::after {
	opacity: 10;
  content: "";
  clear: both;
  display: table;
}
img {
  border-radius: 25px;
}
.cont {
			width: 100%;
			max-width: 1200px;
			margin: 0 auto;
			padding: 100px;
			background-color: black;
			text-align:  center;
			opacity: 0.9;
            box-shadow: 10px 10px;
            color: white;
		}
	
.box {
			width: 100%;
			max-width: 300px;
			margin: 0 auto;
			padding: 50px;
			background-color: cyan;
			text-align: left;
			opacity: 0.9;
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
<body background="c1.jpeg">

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
	<div class="cont">
	
	<h1>Courses with Assignments and Quizzes</h1>
	
		<br>
		<div class="row">
              <div class="column">
		<div class="box">
		 
			<h2>HTML/CSS</h2>
			<p>In this course, you will learn the fundamentals of computer science, including programming, algorithms, and data structures.</p>
			
			<h3>Assignments</h3>
			<br>
				<a href="assignments/introcs/assignment1.jsp">Assignment 1</a> 
				<br>
				<a href="assignments/introcs/assignment2.jsp">Assignment 2</a>
				<br>
				<a href="assignments/introcs/assignment3.jsp">Assignment 3</a>
				<br>
				
			<h3>Quizzes</h3>
			<br>
				<a href=" ">Quiz 1</a>
				<br>
				<a href="quizzes/introcs/quiz2.jsp">Quiz 2</a>
				<br>
				<a href="quizzes/introcs/quiz3.jsp">Quiz 3</a>
			</div>
			</div>
			
			
			
			<div class="column">
		    <div class="box"> 
			<h2>java Script</h2>
			<p>In this course, you will learn advanced programming techniques and data structures, including recursion, sorting, and searching.</p>
			<h3>Assignments</h3>
			
				<a href="assignments/dsa/assignment1.jsp">Assignment 1</a><br>
				<a href="assignments/dsa/assignment2.jsp">Assignment 2</a><br>
				<a href="assignments/dsa/assignment3.jsp">Assignment 3</a><br>
			
			<h3>Quizzes</h3>
			
				<a href="https://examradar.com/data-structure-algorithms-mcq-based-online-tests-1/">Quiz 1</a><br>
				<a href="https://examradar.com/data-structure-recursion-mcq-based-online-test-1/">Quiz 2</a><br>
				<a href="https://examradar.com/linked-lists-single-array-based-double-circular-mcq-based-online-test-1/">Quiz 3</a><br>
			</div>
			</div>
				
			<div class="column">
		    <div class="box"> 
			<h2>C Programming</h2>
			<p>In this course, you will learn about meachine learning algorithms, training models, classification of models.</p>
			<h3>Assignments</h3>
			
				<a href="assignments/dsa/assignment1.jsp">Assignment 1</a><br>
				<a href="assignments/dsa/assignment2.jsp">Assignment 2</a><br>
				<a href="assignments/dsa/assignment3.jsp">Assignment 3</a><br>
			
			<h3>Quizzes</h3>
			
				<a href="https://examradar.com/data-structure-algorithms-mcq-based-online-tests-1/">Quiz 1</a><br>
				<a href="https://examradar.com/data-structure-recursion-mcq-based-online-test-1/">Quiz 2</a><br>
				<a href="https://examradar.com/linked-lists-single-array-based-double-circular-mcq-based-online-test-1/">Quiz 3</a><br>
			</div>
			</div>
			</div>
			</div>
</body>
</html>
