<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="../webres/css/input.css" rel="stylesheet">
<link href="../webres/css/errors.css" rel="stylesheet">
<jsp:include page="../header.jsp"/>

    <form:form method="post" action="add" commandName="personal">
        <jsp:include page="personData.jsp"/>
        <br>
        <button class="btn btn-primary" type="submit">Добавить</button>
    </form:form>

<jsp:include page="../footer.jsp"/>
