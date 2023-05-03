<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
  <title>Attendence Details</title>
  <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>

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
<%
int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String status = request.getParameter("status");
    Date date = new Date(System.currentTimeMillis());
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/multiuser", "root", "");
        PreparedStatement ps = con.prepareStatement("insert into attendance (id, name, status, date) values (?, ?, ?, ?)");
        ps.setInt(1, id);
        ps.setString(2, name);
        ps.setString(3, status);
        ps.setDate(4, date);
        int i = ps.executeUpdate();
        if(i > 0) {
            out.print("<p>Attendance added successfully!</p>");
            out.print("<br>");
            out.print("<p><a href='attendance/attendance.jsp'>Take Attendance</a></p>");
            out.print("<p><a href='attendance/view.jsp'>View Attendance</a></p>");
        }
        else {
            out.print("<p>Attendance not added.</p>");
        }
    }
    catch(Exception e) {
        out.print("<p>Error: " + e.getMessage() + "</p>");
    }
%>
