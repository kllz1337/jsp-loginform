<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: marbl
  Date: 16.07.2018
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Map<String, String> users = new HashMap<>();
    users.put("admin", "password");
    users.put("user", "1234");
    application.setAttribute("users", users);
%>
<link rel="stylesheet" href="../bootstrap.css"/>

<form action="login.jsp" method="post">
    <div class="form-group">
        <label for="username">Username</label>
        <input class="form-control" type="text" name="username">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input class="form-control" type="password" name="password"/>
    </div>
    <input class="btn btn-primary" type="submit" value="Log in"/>
</form>