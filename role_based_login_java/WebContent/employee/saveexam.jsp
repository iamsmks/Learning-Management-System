<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
  <title>Exam Details Saved</title>
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
<br>
<br>
<div class="cont">
  <h1>Exam Details Saved</h1>
  <p>The exam details have been saved successfully.</p>
  <a href="exam.jsp">Back to Exam List</a>
  <br>
  <a href="insertexam.jsp">Insert More Exam Data</a>
  </div>
</body>
</html>
<%
// get the form data
int id = Integer.parseInt(request.getParameter("id"));
String ExamName = request.getParameter("ExamName");
String ExamDate = request.getParameter("ExamDate");
int ExamDuration = Integer.parseInt(request.getParameter("ExamDuration"));

// insert the data into the database
String insertQuery = "INSERT INTO exam (id, ExamName, ExamDate, ExamDuration) VALUES (?, ?, ?, ?)";

try {
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/multiuser", "root", "");
PreparedStatement ps = conn.prepareStatement(insertQuery);
ps.setInt(1, id);
ps.setString(2, ExamName);
ps.setString(3, ExamDate);
ps.setInt(4, ExamDuration);
ps.executeUpdate();
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
