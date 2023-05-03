<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Books</title>
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
			max-width: 1100px;
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
	

<h2 style="color: black;">E-BOOKS</h2>

<div class="cont">
  <div class="row">
    <div class="column">
      <img src= "images/py.png" width="150" height="150"> 
      <br>
     <a style="color: white;" href="https://bugs.python.org/file47781/Tutorial_EDIT.pdf"><b>Python</b></a>
    </div>

   <div class="column">
   <img src= "images/java.png" width="150" height="150">
   <br>
   <a style="color: white;" href="https://www.tutorialspoint.com/java/java_tutorial.pdf"><b>Java</b></a>
   </div>

    <div class="column">
    <img src= "images/mdb.gif" width="150" height="150">
    <br>
     <a style="color: Black;" href="https://www.tutorialspoint.com/mongodb/mongodb_tutorial.pdf"><b>MongoDb</b></a>
    </div>
    
     <div class="column">
    <img src= "images/ml.jpg" width="150" height="150">
    <br>
     <a style="color: white;" href="https://www.tutorialspoint.com/machine_learning/machine_learning_tutorial.pdf"><b>Machine Learning</b></a>
    </div>
    
     <div class="column">
    <img src= "images/aws.png" width="150" height="150">
    <br>
    <a style="color: white;" href="https://douran.academy/wp-content/uploads/ebooks/aws-for-beginners.pdf"><b>AmazonWebServices</b></a>
    </div>
    <br>
 </div>
 </div>

</body>
</html>