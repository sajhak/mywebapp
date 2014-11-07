<%@ page import="org.wso2.carbon.context.CarbonContext" %>
<%@ page import="org.wso2.carbon.user.api.UserRealm" %>
<%@ page import="org.wso2.carbon.user.api.UserStoreException" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    boolean status = false;

    if (username != null && username.trim().length() > 0) {
        try {
            CarbonContext context = CarbonContext.getCurrentContext();
            UserRealm realm = context.getUserRealm();
            status = realm.getUserStoreManager().authenticate(username, password);
        } catch (UserStoreException e) {
            e.printStackTrace();
        }
    }
    if (status) {
        session.setAttribute("logged-in", "true");
        session.setAttribute("username", username);
        response.sendRedirect("login.jsp");
    } else {
        session.invalidate();
        response.sendRedirect("login.jsp?failed=true");
    }
%>