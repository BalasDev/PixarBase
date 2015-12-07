<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Авторизация</title>
    <link href="webres/css/singIn.css" rel="stylesheet">
    <link href="webres/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link href="webres/bootstrap/dist/css/font-awesome.css" rel="stylesheet">

</head>
<body>
<%--<div id=message class="alert alert-danger">${msg}</div>--%>
<form id="slick-login" name="f" action="/j_spring_security_check" method="POST">

    <label>Логин:</label><input type="text" name="j_username" value="" class="placeholder" placeholder="Логин">
    <label>Пароль:</label><input type="password" name="j_password" class="placeholder" placeholder="Пароль...">
    <input name="submit" type="submit" value="ВОЙТИ">
</form>
</body>
</html>