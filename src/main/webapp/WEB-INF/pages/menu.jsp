<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Меню</title>

  <link rel="stylesheet" href="webres/css/menu.css" media="screen" type="text/css" />
</head>
<body>

<a href="<c:url value="/logout" />">
  Выйти
</a>

<%--<security:authorize url="/adds">--%>
  <%--<spring:url value="/adds" var="adds"/>--%>

<div class="container">
  <nav>
    <ul class="mcd-menu">
      <li>
        <a href="/adds">
          <i class="fa fa-home"></i>
          <strong>Добавить</strong>
          <small>добавить новую запись</small>
        </a>
      </li>
      <li>
        <a href="" class="active">
          <i class="fa fa-edit"></i>
          <strong>Редактировать</strong>
          <small>редактировать запись</small>
        </a>
      </li>
      <li>
        <a href="">
          <i class="fa fa-gift"></i>
          <strong>Удалить</strong>
          <small>удалить запись</small>
        </a>
      </li>
      <li>
        <a href="">
          <i class="fa fa-globe"></i>
          <strong>Поиск</strong>
          <small>поиск по записям</small>
        </a>
      </li>


    </ul>
  </nav>
</div>
</body>
</html>
