
<html>
<head>
<body onload="document.loginFrm.username.focus()">

	
	 <div id="header"></div>
    	

	<%
		Object failed = request.getParameter("failed");
		if (failed != null) {
	%>
	
	<div id = loginErrorDiv>
		
	<table class="loginErrorTable"  align="center" style="  left: 40%">
				<tr>
					<td style="width: 109px; "></td>
					<td  style="font-size: 13px; color: red;">
						Sorry, your username and password are incorrect - please try again. 
					</td>
				</tr>
				</table>
	</div>
	
	<%
		}
	%>
	<%
		if (request.getParameter("logout") == null
				&& session.getAttribute("logged-in") != null) {

			String redirectURL = "./index.jsp";
			response.sendRedirect(redirectURL);
	%>
	<%
		return;
		} else {
			if (request.getParameter("logout") != null) {
				session.invalidate();
			}
	%>
	<div id=formDiv >
		<p style="height: 16px;"></p>
		<form id="loginForm" action="loginProcess.jsp" name="loginFrm" method="POST">

			<table class="loginHeader" align="center">
				<tr>
					<td colspan="2" style="font-size: 14px; width: 334px"><h2>Welcome
							to the Test Web App</h2></td>
				</tr>

				<tr>
					<td colspan="2" style="font-size: 13px; width: 361px">You need
						to login using your LDAP credentials in order to access to the system.</td>
				</tr>
				<tr>
					<td colspan="2" style="height: 13px;"></td>
				</tr>
			</table>
			<table class="loginInputs" align="center" style="width: 357px;">

				<tr>
					<td style="font-size: 13px"><u>U</u>sername</td>
					<td style="padding: 0">&nbsp;&nbsp;<input type="text" name="username" id="userName"  style="width: 230px;" 
						 /></td>
				</tr>
				
				<tr>
					<td colspan="2" style="height: 8px; "></td>
				</tr>
				<tr>
					<td style="font-size: 13px"><u>P</u>assword</td>
					<td>&nbsp;&nbsp;<input type="password" name="password"  id="password"
						style="width: 230px;" />
					</td>
				</tr>
				<tr>
					<td colspan="2" style="height: 13px;"></td>
				</tr>
				
				<tr>
					<td colspan="2" style="height: 13px;">
					</td>
				</tr>
				
				<tr>
					<td></td>
					<td style="font-size: 12px"> Not a member? Contact an
						Administrator to request an account.</td>
				</tr>

			</table>
			<table align="center" style="width: 350px;">
				<tr>
					<td colspan="2"
						style="height: 13px; border-bottom-width: thin; border-bottom-style: solid; border-bottom-color: #A8A8A8"></td>
				</tr>
				
				<tr>
					<td style="width: 56px;">&nbsp;</td>
					<td><input type="submit" value="Login" style="font-size: 13px"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="height: 13px;"></td>
				</tr>
			</table>

		</form>
	</div>

	<%
		}
	%>
</body>
</head>
</html>