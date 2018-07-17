<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%--
  Created by IntelliJ IDEA.
  User: marbl
  Date: 16.07.2018
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%= request.getParameterMap() %>
<%= request.getMethod() %>

<%= request.getParameter("username")%>
<%= request.getParameter("password")%>

<%--<%
String username = request.getParameter("username");
    Object users = application.getAttribute("users");
    (application.getAttribute("users")).get(username);
if(password == null){

} else {
    out.print("Succesfully logged in as user " + username);
}
%>--%>
<jsp:forward page="main.jsp"/>
<c:set var="username" value='<%= request.getParameter("username")%>'/>
<c:set var="password" value='<%= request.getParameter("password")%>'/>

<c:set var="existingPassword" value='${applicationScope.users["username"]}'/>
<c:if test="${existingPassword} != null">
    <c:if test="${existingPassword == password}">
        <c:set var="currentUser" value="${username}" scope="session"/>
        <jsp:forward page="main.jsp"/>
    </c:if>
</c:if>
<c:out value="${existingPassword}"/>