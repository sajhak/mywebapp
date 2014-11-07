<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	if (request.getParameter("logout") == null
			&& session.getAttribute("logged-in") != null) {
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div id="logout" align="justify"
			style="float: left; font-size: 12px; top: 15%; font-family: Verdana, Arial, Sans-Serif">
			<strong>Signed in as: </strong>&nbsp;
			<%=session.getAttribute("username")%>&nbsp; |&nbsp; <a
				href="./logout.jsp"> Log Out</a>&nbsp;
		</div>
<br>
<h1>HELLO WORLD!!!!</h1>
</body>
</html>
<%
	} else {
		String redirectURL = "./login.jsp";
		response.sendRedirect(redirectURL);
	}
%>