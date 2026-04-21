<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<body>

<h2>Session Value Page</h2>

<%
    String name = (String) session.getAttribute("user");

    if (name == null) {
        out.println("Sorry, the session has ended (expired after 1 minute)");
    } else {
        out.println("Hello " + name);
    }
%>

</body>
</html>