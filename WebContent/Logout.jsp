

<%

if(request.getSession(false)!=null){
	session.removeAttribute("name");
	session.invalidate();
	response.sendRedirect("index.jsp");
}
%>