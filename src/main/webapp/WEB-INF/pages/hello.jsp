<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf8"
		 pageEncoding="utf8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">

</head>
<body>
<a href="<c:url value="/logout" />"> 	Выйти </a>
<h1><a href="/personal">Кто тут мент‚?</a></h1>
<security:authorize  url="/adds">
	<spring:url value="/adds" var="add"/>
	<h1><a href="${add}">Добавить мента</a></h1>
</security:authorize>

<security>
</body>
</html>