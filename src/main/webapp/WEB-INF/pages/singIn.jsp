<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Авторизация</title>
    <link href="webres/css/singIn.css" rel="stylesheet">
    <%--<link href="webres/bootstrap/dist/css/bootstrap.css" rel="stylesheet">--%>
    <%--<link href="webres/bootstrap/dist/css/font-awesome.css" rel="stylesheet">--%>
    <!--[if lt IE 9]>
    <script src="webres/html5shiv.js"></script>
    <script src="webres/respond/respond.js"></script>
    <h1>Roma</h1>
    <![endif]-->

</head>
<body>
<%--<div id=message class="alert alert-danger">${msg}</div>--%>
    <form id="login" name="f" action="/j_spring_security_check" method="POST">
    <h1>Форма входа</h1>
    <fieldset id="inputs">
        <input type="text" name="j_username" value="" class="placeholder" placeholder="Логин">
        <input type="password" name="j_password" class="placeholder" placeholder="Пароль...">
    </fieldset>
    <fieldset id="actions">
        <input type="submit" id="submit" value="ВОЙТИ">
    </fieldset>
</form>

<%--<form id="slick-login" name="f" action="/j_spring_security_check" method="POST">--%>

   <%--<input type="text" name="j_username" value="" class="placeholder" placeholder="Логин">--%>
   <%--<input type="password" name="j_password" class="placeholder" placeholder="Пароль...">--%>
   <%--<input name="submit" type="submit" value="ВОЙТИ">--%>
<%--</form>--%>
</body>
</html>