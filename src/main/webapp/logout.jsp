<%
	if(session.getAttribute("logged-in") ==null){
		session.setAttribute("logged-in","false");
	}
	session.invalidate();
	String redirectURL = "./login.jsp";
	response.sendRedirect(redirectURL);
%>