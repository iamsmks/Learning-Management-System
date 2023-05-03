<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scam University Student</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
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
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
          </button>
            <a class="navbar-brand" href="">Home</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	
	<h1 style="color:black;"><b>Welcome to Scam University</b></h1>
	<center>
	<h2 style="color:black;"> <%=session.getAttribute("user_login")%></h2>
    	
    	
    	
    	
        <%
      	//setHeader no-cache because user logut successfully go "index.jsp" page but user click on back button than not show "user_home.jsp" page
        response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate"); 
        
      	//check if condition get user session is null than user not access "user_home.jsp" page
		if(session.getAttribute("user_login")==null || session.getAttribute("user_login")=="") 
		{
            response.sendRedirect("../index.jsp"); 
		}
		%>
		
        
      
        
  	</center>
<br>
<br>
<center>
 <div class="cont">
  <div class="row">
    <div class="column">
      <img src= "images/courses.png" width="200" height="150"> 
      <br>
      <a style="color:white" href="courses.jsp"><b>Courses</b></a>
      </div>

     <div class="column">
     <img src= "images/l.png" width="200" height="150">
     <br>
     <a style="color:white" href="library.jsp"><b>Library</b></a>
     </div>

    <div class="column">
    <img src= "images/att.png" width="200" height="150">
    <br>
    <a style="color:white" href="view.jsp"><b>Attendence</b></a> 
    </div>
    <br>
     <div class="column">
    <img src= "images/exam.png" width="200" height="150">
    <br>
     <a style="color:white" href="exam.jsp"><b>exam</b></a>
    </div>
    
     <div class="column">
    <img src= "images/fee.png" width="200" height="150">
    <br>
     <a style="color:white" href="showfee.jsp"><b>fee details</b></a>
    </div>
    
    <br>
    
    <div class="column">
    <img src= "images/lab.png" width="200" height="150">
    <br>
    <a style="color:white" href="lab.jsp"><b>lab</b></a>
    </div>
    
    <div class="column">
    <img src= "images/staff.png" width="200" height="150">
    <br>
     <a style="color:white" href="staff.jsp"><b>Staff</b></a>
     
    </div>
   
 </div>
 </div>
 </div>
</center>
<br>
  
</body>
</html>
	