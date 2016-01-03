<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="../webres/css/input.css" rel="stylesheet">
<link href="../webres/css/errors.css" rel="stylesheet">
<link href="../webres/css/style.css" rel="stylesheet">
<jsp:include page="../header.jsp"/>


<a href="/addUsers" class="btn btn-primary" role="button"><i
        class="fa fa-user-plus fa-lg"></i> Добавить пользователя</a>

<a href="/download/log_file" class="btn btn-primary" role="button"><i
        class="fa fa-download fa-lg"></i> Скачать логи</a>

<button id="modalButton" class="btn btn-primary"> Добавить сообщение </button>



<br><br>
<div class="table-responsive">
    <table class="table table-condensed table-hover table-striped table-bordered">

        <tr>
            <%--  <th></th>--%>
           <%-- <th>ID</th>--%>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Отчество</th>
            <th>Логин</th>
            <th>Пароль</th>
            <th>IP</th>
            <th>РОВД</th>
            <th>Роль</th>
            <th></th>
        </tr>

        <c:forEach items="${users}" var="user">
        <tr>
          <%--  <td>${user.id}</td>--%>
            <td>${user.lastName}</td>
            <td>${user.firstName}</td>
            <td>${user.secondName}</td>
            <td>${user.login}</td>
            <td>${user.password}</td>
            <td>${user.ip}</td>
            <td>${user.rovd.name}</td>
            <td>${user.role.name}</td>

            <security:authorize url="/delete/">
            <td>
                <div class="btn-group">
                    <a style="cursor: pointer" data-toggle="modal" data-target="#edit_${user.id}"><i
                            class="fa fa-edit" style="color: #28a4c9"></i> </a>
                    <a style="cursor: pointer" data-toggle="modal" data-target="#delete_${user.id}"><i
                            class="fa fa-remove"
                            style="color: red"></i>
                    </a>
                </div>
            </td>
            </security:authorize>
                <%--modal edit--%>
                <%@include file="editUser.jsp"%>
                <%--modal delete--%>
              <%@include file="deleteUser.jsp"%>
                  <%--modal add message--%>
              <%@include file="addMessage.jsp"%>
            </c:forEach>
    </table>

</div>


<jsp:include page="../footer.jsp"/>
