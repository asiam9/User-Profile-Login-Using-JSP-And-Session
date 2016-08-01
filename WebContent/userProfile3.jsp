
<jsp:useBean id="occupation" class="com.bitwise.userLogin.OccupationalProfile" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="occupation"/>

<%
	if (request.getSession().getAttribute("name") == null) {
		out.println("<font color='red'>Please Login First</font>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
	} else {
		
		String empid = request.getParameter("empid");
		String name = request.getParameter("name");
		String job = request.getParameter("job");
		String cname =request.getParameter("cname");
		String doj = request.getParameter("doj");
		String exp = request.getParameter("exp");
				
		if(!empid.matches("[0-9]+")||!name.matches("[a-zA-Z\\s']+")||!job.matches("[a-zA-Z\\s']+")||!cname.matches("[a-zA-Z\\s']+")||!doj.matches("^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/[0-9]{4}$")||!exp.matches("[0-9]")){
		%>	
			<font color="red">Fill The correct Values</font>
			<jsp:include page="userProfile2.jsp"></jsp:include>
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
input[type=text], input[type=textarea],input[type=number] {
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

<h2>Step II : Residential Details</h2>
    <br>
	<form id="frm" action="showProfile.jsp" method="post">
		<fieldset>
			<legend>Residential Details</legend>
			<font size="5">Permanent Address</font>
			<input type="textarea" name="permanentAddr" placeholder="Permanent Address" required>
			<font size="5">City</font>
			<input type="text" name="city" placeholder="City(For eg. Pune)" required>
			<font size="5">state</font>
			<input type="text" name="state" placeholder="State(For eg. Maharastra)" required>
			<font size="5">Country</font>
			<input type="text" name="country" placeholder="Country(For eg. India)" required>
			<font size="5">Pincode</font>
			<input type="number" name="pincode" placeholder="Pincode" required>
			<font size="5">Mobile Number</font>
			<input type="text" name="mob" placeholder="Mobile Number(For Eg. 9807960796)" required>
		 </fieldset>
		 <font size="5">
		 </font> <br> <input type="submit" value="Step III ->">
	</form>

</body>
</html>
<%
		}
	}
%>