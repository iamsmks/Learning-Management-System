<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam Details</title>
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
			background-color:white;
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
	
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/multiuser", "root", "");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from exam order by ExamDate asc");
        out.print("<br>");
        out.print("<br>");
        out.print("<br>");
        out.print("<br>");
        out.print("<br>");
        out.print("<div class='cont'>");
        out.print("<a href='insertexam.jsp'>INSERT EXAM</a></li>");
        out.print("<br>");
        out.print("<br>");
        out.print("<a href='editexam.jsp'>EDIT EXAM</a></li>");
        out.print("<center>");
        out.print("<br>");
        out.print("<br>");
        out.print("<h1>EXAM DETAILS</h1>");
        out.print("<table border='1'>");
        out.print("<tr><th>ID</th><th>Name</th><th>Exam Date</th><th>Exam Duration</th></tr>");
        while(rs.next()) {
            out.print("<tr><td>" + rs.getInt("id") + "</td><td>" + rs.getString("ExamName") + "</td><td>" + rs.getDate("ExamDate") + "</td><td>" + rs.getInt("ExamDuration") + "</td></tr>");
        }
        out.print("</table>");
        out.print("</center>");
        out.print("</div>");
    }
    catch(Exception e) {
        out.print("<p>Error: " + e.getMessage() + "</p>");
    }
%>
