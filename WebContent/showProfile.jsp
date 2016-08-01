<jsp:useBean id="profile" class="com.bitwise.userLogin.Profile" scope="session"></jsp:useBean>
<jsp:useBean id="occupation" class="com.bitwise.userLogin.OccupationalProfile" scope="session"></jsp:useBean>
<jsp:useBean id="resident" class="com.bitwise.userLogin.ResidentialProfile" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="resident"/>
 
<%
	if (request.getSession().getAttribute("name") == null) {
		out.println("<font color='red'>Please Login First</font>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
	} else {
		
		String permanentAddr = request.getParameter("permanentAddr");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String pincode =request.getParameter("pincode");
		String city = request.getParameter("city");
		String mob = request.getParameter("mob");
				
		if(!permanentAddr.matches("^[a-zA-Z0-9_.-]*$")||!state.matches("[a-zA-Z\\s']+")||!country.matches("[a-zA-Z\\s']+")||!pincode.matches("[0-9]+")||!city.matches("[a-zA-Z\\s']+")||!mob.matches("^[789]\\d{9}$")){
		%>	
			<font color="red">Fill The correct Values</font>
			<jsp:include page="userProfile3.jsp"></jsp:include>
		<% 
		}
		else{
%>
<font color="red">Educational Details</font><br>
<jsp:getProperty property="degree" name="profile" /><br>
<jsp:getProperty property="college" name="profile" /><br>
<jsp:getProperty property="city" name="profile" /><br>
<jsp:getProperty property="year" name="profile" /><br>
<jsp:getProperty property="percentage" name="profile" /><br>

<jsp:getProperty property="board12" name="profile" /><br>
<jsp:getProperty property="school12" name="profile" /><br>
<jsp:getProperty property="city12" name="profile" /><br>
<jsp:getProperty property="year12" name="profile" /><br>
<jsp:getProperty property="percentage12" name="profile" /><br>

<jsp:getProperty property="board10" name="profile" /><br>
<jsp:getProperty property="school10" name="profile" /><br>
<jsp:getProperty property="city10" name="profile" /><br>
<jsp:getProperty property="year10" name="profile" /><br>
<jsp:getProperty property="percentage10" name="profile" /><br>

<font color="green">Occupational Details</font><br>
<jsp:getProperty property="empid" name="occupation" /><br>
<jsp:getProperty property="name" name="occupation" /><br>
<jsp:getProperty property="job" name="occupation" /><br>
<jsp:getProperty property="cname" name="occupation" /><br>
<jsp:getProperty property="doj" name="occupation" /><br>
<jsp:getProperty property="exp" name="occupation" /><br>

<font color="blue">Residential Details</font><br>
<jsp:getProperty property="permanentAddr" name="resident" /><br>
<jsp:getProperty property="city" name="resident" /><br>
<jsp:getProperty property="state" name="resident" /><br>
<jsp:getProperty property="country" name="resident" /><br>
<jsp:getProperty property="pincode" name="resident" /><br>
<jsp:getProperty property="mob" name="resident" /><br>

<form action="Logout.jsp">
	<input type="submit" value="Logout">
</form>


<%
		}
	}
%>