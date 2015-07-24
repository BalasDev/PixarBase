<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="webres/css/input.css"  rel="stylesheet">
    <link href="webres/css/button.css"  rel="stylesheet">
</head>
<body>

<h2>Добавить мента</h2>
<form:form method="post" action="add" commandName="personal">

    <table>
        <tr>
            <td >Фамилия </td>
            <td><form:input path="lastName" /> <form:errors path="lastName"  cssClass="error"  /></td>
        </tr>
        <tr>
            <td>Имя</td>
            <td><form:input path="firstName"/> <form:errors path="firstName" cssClass="error"/></td>
        </tr>
        <tr>
            <td>Отчество</td>
            <td><form:input path="secondName"/> <form:errors path="secondName" cssClass="error"/></td>
        </tr>
        <tr>
            <td>Звание</td>
            <td><form:input type="text" list="zvanie" path="rank"/> <form:errors path="rank" cssClass="error"/>
                <datalist id="zvanie">
                    <option>шестерка</option>
                    <option>подстилка</option>
                    <option>жопализ</option>
                    <option>Пихарь</option>
                    <!-- и остальные -->
                </datalist>

            </td>
        </tr>
        <tr>
            <td>День рождения</td>
            <td><form:input type="date" path="birthday"/> <form:errors  path="birthday" cssClass="error"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Родить мента"/></td>
        </tr>
    </table>
</form:form>

</body>
</html>