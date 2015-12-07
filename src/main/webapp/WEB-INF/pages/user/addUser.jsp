<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="../webres/css/input.css" rel="stylesheet">
<link href="../webres/css/errors.css" rel="stylesheet">
<jsp:include page="../header.jsp"/>

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
    <td>РОВД</td>
    <td>
      <select class="form-control" name="rovdId">

        <c:forEach items="${rovd}" var="rovd">
          <option value="${rovd.id}">${rovd.name}</option>
        </c:forEach>

      </select>
     <%-- <select class="form-control" name="rovd.id">

        <c:forEach items="${rovd}" var="rovd">
        <option value="${rovd.id}">${rovd.name}</option>
        </c:forEach>

      </select>--%>
    </td>
    <%--<td><form:textarea class="form-control" rows="1" path="role.id"/></td>--%>
    <td> <form:errors path="rovd.name" cssClass="error"/></td>
  </tr>
    <tr>
      <td>Роль</td>
      <td>
        <select class="form-control" name="roleId">
          <option value="2">USER</option>
          <option value="1">ADMIN</option>
        </select>
      </td>
        <%--<td><form:textarea class="form-control" rows="1" path="role.id"/></td>--%>
      <td> <form:errors path="role.name" cssClass="error"/></td>
    </tr>
  </table>
  <br>
  <button class="btn btn-primary" type="submit">Добавить</button>
</form:form>

<jsp:include page="../footer.jsp"/>