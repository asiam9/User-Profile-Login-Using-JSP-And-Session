<jsp:useBean id="profile" class="com.bitwise.userLogin.Profile" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="profile" />

<%
	if (request.getSession().getAttribute("name") == null) {
		out.println("<font color='red'>Please Login First</font>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
	} else {
		
		String degree = request.getParameter("degree");
		String college = request.getParameter("college");
		String city = request.getParameter("city");
		String percentage =request.getParameter("percentage");
		String board12 = request.getParameter("board12");
		String city12 = request.getParameter("city12");
		String school12 = request.getParameter("school12");
		String percentage12 = request.getParameter("percentage12");
		String board10 = request.getParameter("board10");
		String city10 = request.getParameter("city10");
		String school10 = request.getParameter("school10");
		String percentage10 = request.getParameter("percentage10");
		
		if(!degree.matches("[a-zA-Z\\s']+")||!college.matches("[a-zA-Z\\s']+")||!city.matches("[a-zA-Z\\s']+")||!percentage.matches("\\d+(?:\\.\\d+)?")||!board12.matches("[a-zA-Z\\s']+")||!school12.matches("[a-zA-Z\\s']+")||!city12.matches("[a-zA-Z\\s']+")||!percentage12.matches("\\d+(?:\\.\\d+)?")||!board10.matches("[a-zA-Z\\s']+")||!school10.matches("[a-zA-Z\\s']+")||!city10.matches("[a-zA-Z\\s']+")||!percentage10.matches("\\d+(?:\\.\\d+)?")){
		%>	
			<font color="red">Fill The Values correct</font>
			<jsp:include page="userProfile.jsp"></jsp:include>
		<% 
		}
		else{
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
input[type=text], input[type=textarea], input[type=Number],input[type=date] {
	width: 70%;
	float: right;
	padding: 12px 20px;
	box-sizing: border-box;
}

select {
	width: 70%;
	padding: 16px 20px;
	border: none;
	float: right;
	border-radius: 4px;
	background-color: #f1f1f1;
}
</style>
</head>
<body>
	<h2>Step II : Occupational Details</h2>
	<br>
	<form id="frm" action="userProfile3.jsp" method="post">
		<fieldset>
			<legend><font color="red" size="5">Job Details</font></legend>
			<font size="5">Employee Id</font> <input type="text" name="empid"
				placeholder="Employee Id" required><br><br> <font size="5">Name</font><br><br>
			<input type="text" name="name" placeholder="Your name(For eg. Peter)"
				required><br><br> <font size="5">Designation</font> <input
				type="text" name="job"
				placeholder="Your Designation(For eg. Trainee Programmer)" required><br><br>
			<font size="5">Company Name</font> <input type="text" name="cname"
				placeholder="Your Company(For eg. Bitwise Global)" required><br><br>
			<font size="5">Date Of Joining</font> <input type="date" name="doj"
				placeholder="Select Date of your joining(dd/mm/yyyy)" min="2000-01-01"
				max="2016-01-01" required><br><br>
			 <font size="5">Experience</font>
			<input type="Number" name="exp" placeholder="Your Experience" min="0"
				max="20" required><br><br>
		</fieldset>
		<font size="5"></font> <br> <input type="submit"
			value="Step III ->">
	</form>

</body>
</html>
<%
		}
	}
%>