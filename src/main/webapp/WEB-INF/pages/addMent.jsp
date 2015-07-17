<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8">

</head>
<body>
<h2>Добавить мента</h2>
<form:form method="post" action="add" commandName="personal">

    <table>
        <tr>
            <td>Фамилия</td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td>Имя</td>
            <td><form:input path="firstName"/></td>
        </tr>
        <tr>
            <td>Отчество</td>
            <td><form:input path="secondName"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>







</body>
</html>