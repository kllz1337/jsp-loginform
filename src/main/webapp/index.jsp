<%--
  Created by IntelliJ IDEA.
  User: marbl
  Date: 12.07.2018
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp" %>
<%--<jsp:include page="header.jsp"/>  - to nie działa - KOD ZOTANIE WYKONANY PO WSZYSTKICH PROCENTACH !!! --%>
<%@ page pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%--<%@ page session="false" %>   - dyrektywa mówiąca, że nie ustanawiamy sesji - nie zadziałają żadne skrypty--%>
<%--<%@ page trimDirectiveWhitespaces="true" %> - dyraktywa mówiąca, że wewnątrz KODU HTML chcemy lub nie chcemy białych znaków (nie są widoczne dla użytkownika)--%>


<%--TWORZE OBIEKT JAVABEAN Calculator o id calc--%>
<jsp:useBean id="calc" class="pl.sda.Calculator" scope="application"/>
<jsp:setProperty name="calc" property="multiplier" value="200"/>
<%--JAK BEDE PRZECHODZIL GDZIES DALEJ TO GO PRZEKAZE NAJPIERW Z TAKA WARTOSCIA!!!--%>

<html>
<link rel="stylesheet" href="bootstrap.css"/>
<body>
<h2>Hello World!</h2>
<p>------------------------- APPLICATION -------------------------</p>
<jsp:include page="application.jsp"/>
<p>------------------------- EL -------------------------</p>
<a href="expressionlanguage.jsp">Expression Laguage page</a>
<%--<jsp:include page="expressionlanguage.jsp"/>--%>
<p>------------------------- FOREACH -------------------------</p>
<a href="foreach.jsp">Foreach page</a>
<%--<jsp:include page="foreach.jsp"/>--%>
<p>------------------------- FORWARD -------------------------</p>
<a href="forward.jsp">Forward page</a>
<%--<jsp:include page="forward.jsp"/>--%>
<p>------------------------- REQUEST -------------------------</p>
<a href="request.jsp">Request page</a>
<%--<jsp:include page="request.jsp"/>--%>
<p>------------------------- RESPONSE -------------------------</p>
<a href="response.jsp">Response page</a>
<%--<jsp:include page="response.jsp"/>--%>
<p>------------------------- SESSION -------------------------</p>
<a href="session.jsp">Session page</a>
<%--<jsp:include page="session.jsp"/>--%>
<p>------------------------- VARIABLE DECLARATION -------------------------</p>
<a href="variabledeclaration.jsp">Variable declaration page</a>
<%--<jsp:include page="variabledeclaration.jsp"/>--%>
<p>------------------------- FIRST <b>JAVA BEAN</b> -------------------------</p>
<a href="javaBean.jsp">Java Bean: <b>Calculator</b></a>
<p>------------------------- CORE TAGS -------------------------</p>
<a href="coreTags.jsp">CoreTags</a>
<p>------------------------- FORMATOWANIE -------------------------</p>
<a href="tags.jsp">Fmt</a>
<p>------------------------- LOGIN FORM -------------------------</p>
<a href="application/loginform.jsp">LoginForm</a>

</body>
</html>