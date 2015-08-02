<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8">
  <!-- Bootstrap -->
  <link href="webres/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
  <link href="webres/bootstrap/dist/css/font-awesome.css" rel="stylesheet">
  <link href="webres/css/style.css" rel="stylesheet">
  <%--<link href="webres/css/input.css" rel="stylesheet">--%>
  <%--<link href="webres/css/errors.css" rel="stylesheet">--%>
  <%--<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->--%>
  <%--<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->--%>
  <%--<!--[if lt IE 9]>--%>
  <%--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--%>
  <%--<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>--%>
  <![endif]-->
</head>

<body>
<div class="container">
  <div class="row">
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#responsive-menu">
            <span class="sr-only">Открыть навигацию</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="/" class="navbar-brand"><i class="fa fa-home pull-left fa-border"></i></a>
        </div>
        <div class="collapse navbar-collapse" id="responsive-menu">
          <ul class="nav navbar-nav">
            <li><a href="/adds">Добавить</a></li>
            <security:authorize url="/delete/">
            <li><a href="/searchs">Поиск</a></li>
            </security:authorize>
          </ul>
          <form action="" class="navbar-form navbar-right">
            <a href="<c:url value="/logout" />" class="btn btn-danger form-control">Выйти</a>
          </form>
        </div>
      </div>
    </div>
  </div>
