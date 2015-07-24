<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Меню</title>

  <link rel="stylesheet" href="webres/css/menu.css" media="screen" type="text/css" />
  <link rel="stylesheet" href="webres/css/button.css" media="screen" type="text/css" />
</head>
<body>

<a href="<c:url value="/logout" />" class="error">
  Выйти
</a>


<div class="container">


  <nav>
    <ul class="mcd-menu">
      <security:authorize url="/adds">
        <spring:url value="/adds" var="adds"/>
     <li>
        <a href="${adds}">
          <strong>Добавить</strong>
          <small>добавить новую запись</small>
        </a>
      </li>
      <li>
        <a href="">
          <strong>Редактировать</strong>
          <small>редактировать запись</small>
        </a>
      </li>
      <li>
        <a href="">
          <strong>Удалить</strong>
          <small>удалить запись</small>
        </a>
      </li>
      </security:authorize>
      <li>
        <a href="/personal">
          <strong>Просмотр</strong>
          <small>просмотреть записи</small>
        </a>
      </li>

      <li>
        <a href="">
          <strong>Поиск</strong>
          <small>поиск по записям</small>
        </a>
      </li>


    </ul>
  </nav>
</div>
</body>
</html>
