<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Show Fee Details</title>
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
<br><br><br><br><br><br><br>
<div class="cont">
	<h1>Fee Details</h1>
	<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:mysql://localhost:3306/multiuser";
		String user = "root";
		String password = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			String sql = "SELECT * FROM fee_details";
			rs = stmt.executeQuery(sql);
			%>
			<center>
			<table border='1'>
				<tr>
					<th>Fee Type</th>
					<th>Amount</th>
					<td> paymentStatus </td>
					<th>Student ID</th>
				</tr>
				<%
				while(rs.next()) {
					String feeType = rs.getString("fee_type");
					double amount = rs.getDouble("amount");
					String paymentStatus = rs.getString("payment_status");
					int studentId = rs.getInt("student_id");
					%>
					<tr>
						<td><%= feeType %></td>
						<td><%= amount %></td>
						<td><%= paymentStatus %></td>
						<td><%= studentId %></td>
					</tr>
					<%
				}
				%>
			</table>
			</center>
			<%
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(stmt != null) {
					stmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	%>
	</div>
</body>
</html>
