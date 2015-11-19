<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="webres/css/input.css" rel="stylesheet">
<link href="webres/css/errors.css" rel="stylesheet">
<link href="webres/css/style.css" rel="stylesheet">
<jsp:include page="header.jsp"/>

<a href="/addUsers" class="btn btn-primary" role="button">Добавить пользователя</a>
<br>

  <div class="table-responsive">
  <table class="table table-condensed table-hover table-striped table-bordered">

  <tr>
  <%--  <th></th>--%>
  <th>ID</th>
  <th>Фамилия</th>
  <th>Имя</th>
  <th>Отчество</th>
  <th>Логин</th>
  <th>Пароль</th>
  <th>IP</th>
  <th>Роль</th>
  <th></th>
  </tr>

    <c:forEach items="${users}" var="user">
    <tr>
      <td>${user.id}</td>
      <td>
        <div style="cursor: pointer" data-toggle="modal"
             data-target="#info_${user.id}">${user.lastName}</div>
      </td>
      <td>${user.firstName}</td>
      <td>${user.secondName}</td>
      <td>${user.login}</td>
      <td>${user.password}</td>
      <td>${user.ip}</td>
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
        <%--modal--%>
      <div class="modal fade" id="delete_${user.id}">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button class="close" type="button" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Подтверждение удаления</h4>
            </div>
            <div class="modal-body">
              <p class="text-center">Удаление записи пользователя
                <strong>${user.lastName}</strong>
              </p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary"
                      onclick="location.href='<%=request.getContextPath()%>/deleteUser/${user.id}'">
                Да
              </button>
              <button type="button" class="btn btn-default" data-dismiss="modal">
                Отмена
              </button>
            </div>
          </div>
        </div>
      </div>

      </c:forEach>


  </table>

  </div>

<%--edit--%>

<div class="modal fade" id="edit_${user.id}">
  <div class="modal-dialog" style="width: 60%;">
    <div class="modal-content">
      <form:form action="/editUser" method="POST" modelAttribute="user" id="formUser">
        <div class="modal-header">
          <button class="close" type="button" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Редактирование информация</h4>
        </div>

        <div class="modal-body scroll">
          <fieldset>
              <form:hidden path="id" value="${user.id}"/>
            <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <label class="text-left">Фамилия</label>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="lastName">${user.lastName}</textarea>
              </div>
            </div>

            <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <label class="text-left">Имя</label>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="firstName">${user.firstName}</textarea>
              </div>
            </div>

            <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <label class="text-left">Отчество</label>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="secondName">${user.secondName}</textarea>
              </div>
            </div>

            <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <label class="text-left">Логин</label>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="login">${user.login}</textarea>
              </div>
            </div>

            <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <label class="text-left">Пароль</label>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                <textarea class="form-control" rows="1" name="password">${user.password}</textarea>
              </div>
            </div>


            <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <label class="text-left">IP</label>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                <textarea class="form-control" rows="1" name="ip">${user.ip}</textarea>
              </div>
            </div>

            <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <label class="text-left">Роль</label>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="2"
                                          name="role.name">${user.role.name}</textarea>
              </div>
            </div>



        </div>

        <div class="modal-footer">
          <button type="submit" class="btn btn-primary"
                  onclick="location.href='<%=request.getContextPath()%>/editUser/${user.id}'">
            Да
          </button>
          <button type="button" class="btn btn-default" data-dismiss="modal">
            Отмена
          </button>
        </div>
      </form:form>
    </div>
  </div>
</div>
<%--sss--%>



<jsp:include page="footer.jsp"/>
