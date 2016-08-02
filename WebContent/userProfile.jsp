<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
input[type=text], input[type=textarea] {
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

	<h2>Step I : Educational Details</h2>

	<br>
	<form id="frm" action="userProfile2.jsp" method="post">
		<fieldset>
			<legend><font size="5" color="red">Graduation</font></legend>
			<font size="5">Degree</font>
			<input type="textarea" name="degree" placeholder="Degree" pattern="[a-zA-Z\\s']+" title="Enter degree in letters"  required><br> <br>
			<font size="5">College/University</font>
			<input type="textarea" name="college" placeholder="Your College/University" pattern="[a-zA-Z\\s']+" title="Enter your college name in letters" required><br><br>
			<font size="5">City</font>
			<input type="text" name="city" placeholder="City" pattern="[a-zA-Z\\s']+" title="Enter your city name in letters" required><br> <br> 
			<font size="5">Year</font>
		    <select name="year" id="year">
				<option>2013</option>
				<option>2014</option>
				<option>2015</option>
				<option>2016</option>
			</select><br> <br>
			<font size="5">Percentage</font>
			<input type="text" name="percentage" placeholder="Overall Percenetage" pattern="[0-9]{1,3}" title="Enter your percentage in numbers only" required><br>
		</fieldset>
		
		<fieldset>
		  <legend><font size="5" color="red">10+2(Senior Secondary)</font></legend>
		     <font size="5">Board</font>
		     <input type="textarea" name="board12" placeholder="Board of Exam(for eg. CBSE)" pattern="[a-zA-Z\\s']+" title="Enter your board as( CBSE)" required><br> <br>
		     <font size="5">Name of College/School</font>
		     <input type="textarea" name="school12" placeholder="Name Of College/School" pattern="[a-zA-Z\\s']+" title="Enter your college name in letters only" required><br> <br>
		     <font size="5">City</font>
		     <input type="text" name="city12" placeholder="City(For eg. Pune)" pattern="[a-zA-Z\\s']+" title="Enter your city in letters only .. Dont use any other character" required><br> <br>
		     <font size="5">Year of passing</font>
		     <select name="year12" id="year12">
				<option>2013</option>
				<option>2014</option>
				<option>2015</option>
				<option>2016</option>
			 </select><br> <br>
		     <font size="5">10+2 Percentage</font>
		     <input type="text" name="percentage12" placeholder="10+2 Percentage(For eg. 87)"  pattern="[0-9]{1,3}" title="Enter your percentage in numbers only" required><br> <br>
		</fieldset>
		
		<fieldset>
		  <legend><font size="5" color="red">10(High School)</font></legend>
		     <font size="5">Board</font>
		     <input type="textarea" name="board10" placeholder="Board of Exam(for eg. C.B.S.E)" pattern="[a-zA-Z\\s']+" title="Enter your board as( CBSE)" required><br> <br>
		     <font size="5">Name of College/School</font>
		     <input type="textarea" name="school10" placeholder="Name Of College/School" pattern="[a-zA-Z\\s']+" title="Enter your college name in letters only" required><br> <br>
		     <font size="5">City</font>
		     <input type="text" name="city10" placeholder="City(For eg. Pune)" pattern="[a-zA-Z\\s']+" title="Enter your city in letters only .. Dont use any other character" required><br> <br>
		     <font size="5">Year of passing</font>
		     <select name="year10" id="year10">
				<option>2013</option>
				<option>2014</option>
				<option>2015</option>
				<option>2016</option>
			 </select><br> <br>
		     <font size="5">10 Percentage</font>
		     <input type="text" name="percentage10" placeholder="10 Percentage(For eg. 87)" pattern="[0-9]{1,3}" title="Enter your percentage in numbers only" required><br> <br>
		</fieldset>
		<br> <font size="5"></font> <br> <input type="submit" value="Step II ->">
	</form>
</body>
</html>