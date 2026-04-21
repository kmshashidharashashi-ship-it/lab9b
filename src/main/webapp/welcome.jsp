<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<body>

<%
    String name = request.getParameter("uname");

    out.println("Welcome! " + name + "<br>");
    out.println("Session has started... <br>");

    // Store value in session
    session.setAttribute("user", name);

    out.println("Your name has been stored in session object<br>");

    // Set session expiry = 60 seconds (1 minute)
    session.setMaxInactiveInterval(60);

    out.println("Session expiry time is set to 1 minute<br>");
    out.println("Click below link or wait for expiry<br>");
%>

<a href="second.jsp">Display Session Value</a>

</body>
</html>