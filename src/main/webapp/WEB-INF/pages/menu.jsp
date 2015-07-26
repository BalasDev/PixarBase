<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <!-- Bootstrap -->
    <link href="webres/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link href="webres/bootstrap/dist/css/font-awesome.css" rel="stylesheet">
    <link href="webres/css/style.css" rel="stylesheet">
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
                        <li><a href="#">Поиск</a></li>
                    </ul>
                    <form action="" class="navbar-form navbar-right">
                        <a href="<c:url value="/logout" />" class="btn btn-danger form-control">Выйти</a>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <h1>Ментозавры</h1>
    <table class="table">
        <thead>
        <tr>
            <%--  <th></th>--%>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Отчество</th>
            <th></th>
        </tr>
        </thead>

        <c:forEach items="${personalList}" var="personality">
            <tr>
                <td>${personality.lastName}</td>
                <td>${personality.firstName}</td>
                <td>${personality.secondName}</td>
                <security:authorize url="/delete/">
                    <td>
                        <div class="btn-group">
                            <a href="#"><i class="fa fa-edit" style="color: #28a4c9"></i> </a>
                            <a href="delete/${personality.id}"><i class="fa fa-remove" style="color: red"></i> </a>
                        </div>
                    </td>
                </security:authorize>
            </tr>
        </c:forEach>
    </table>

</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="webres/jquery/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="webres/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>