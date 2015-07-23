<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<html>
<head>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>

    <body>
<a href="<c:url value="/logout" />">
     Выйти
</a>



<security:authorize url="/adds">
<spring:url value="/adds" var="adds"/>
<div align="center"> <h1><font style="color: dodgerblue">Добавь мента!</font></h1></div>
<div align="center"><h1><a href="${adds}"><img src="webres/uvd1.jpg"></a></h1></div>
</security:authorize>


    <%--<img  src="webres/uvd1.jpg">--%>
<div align="center"><h1>  <a STYLE="font-style: normal" href="/personal">Узнай кто тут мент</a></h1></div>
</body>
</html>