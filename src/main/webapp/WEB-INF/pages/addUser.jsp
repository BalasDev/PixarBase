<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="webres/css/input.css" rel="stylesheet">
<link href="webres/css/errors.css" rel="stylesheet">
<jsp:include page="header.jsp"/>

<form:form method="post" action="addNewUser" commandName="users">
  <table >
  <tr>
    <td>Фамилия</td>
    <td><form:textarea class="form-control" rows="1" cols="70" path="lastName"/></td>
    <td><form:errors path="lastName" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Имя</td>
    <td><form:textarea class="form-control" rows="1" path="firstName"/></td>
    <td> <form:errors path="firstName" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Отчество</td>
    <td><form:textarea class="form-control" rows="1" path="secondName"/></td>
    <td> <form:errors path="secondName" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Логин</td>
    <td><form:textarea class="form-control" rows="1"  path="login"/></td>
    <td> <form:errors path="login" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Пароль</td>
    <td><form:textarea class="form-control" rows="1"  path="password"/></td>
    <td> <form:errors path="password" cssClass="error"/></td>
  </tr>
  <tr>
    <td>IP</td>
    <td><form:textarea class="form-control" rows="1"  path="ip"/></td>
    <td> <form:errors path="ip" cssClass="error"/></td>
  </tr>
  <tr>
   <td>Роль</td>
  <td>
    <form:select path="role.id" class="form-control">
       <form:option value="1">Admin</form:option>
       <form:option value="2">User</form:option>
    </form:select>
  </td>
  </tr>
  </table>
  <br>
  <button class="btn btn-primary" type="submit">Добавить</button>
</form:form>

<jsp:include page="footer.jsp"/>