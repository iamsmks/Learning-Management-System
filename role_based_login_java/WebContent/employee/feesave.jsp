<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Insert Fee Details</title>
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
			max-width: 1000px;
			margin: 0 auto;
			padding: 50px;
			background-color: white;
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
 <br><br><br><br><br><br>
<div class="cont">
	<h1>Insert Fee Details</h1>
	<%
		Connection conn = null;
		PreparedStatement ps = null;
		String url = "jdbc:mysql://localhost:3306/multiuser";
		String user = "root";
		String password = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			String feeType = request.getParameter("feeType");
			double amount = Double.parseDouble(request.getParameter("amount"));
			String paymentStatus = request.getParameter("paymentStatus");
			int studentId = Integer.parseInt(request.getParameter("studentId"));
			String sql = "INSERT INTO fee_details (fee_type, amount, payment_status, student_id) VALUES (?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, feeType);
			ps.setDouble(2, amount);
			ps.setString(3, paymentStatus);
			ps.setInt(4, studentId);
			int rowsAffected = ps.executeUpdate();
			if(rowsAffected > 0) {
				%>
				<p>Fee details successfully inserted.</p>
				<%
			} else {
				%>
				<p>Failed to insert fee details.</p>
				<%
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null) {
					ps.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	%>
	<p><a href="feeinsert.html">Insert Another Fee Details</a></p>
	</div>
</body>
</html>
