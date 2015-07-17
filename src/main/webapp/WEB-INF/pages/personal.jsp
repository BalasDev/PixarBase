<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8">

</head>
<body>



<h1>Ментозавры</h1>

  <table class="data">
    <tr>
      <th>Фамилия</th>
      <th>Имя</th>
      <th>Отчество</th>

    </tr>
    <c:forEach items="${personalList}" var="personality">
      <tr>
        <td>${personality.lastName}</td>
        <td>${personality.firstName}</td>
        <td>${personality.secondName}</td>

      </tr>
    </c:forEach>
  </table>


</body>
</html>