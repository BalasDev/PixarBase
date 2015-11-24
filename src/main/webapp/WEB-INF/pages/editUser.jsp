<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--modal Edit Person--%>
<div class="modal fade" id="edit_${user.id}">
    <div class="modal-dialog" style="width: 60%;">
        <div class="modal-content">
            <form:form action="/editUser" method="POST" modelAttribute="user" id="formUser">
                <div class="modal-header">
                    <button class="close" type="button" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Редактирование пользователя</h4>
                </div>

                <div class="modal-body scroll">
                    <fieldset>
                            <%--<form:hidden path="id" value="${user.id}"/>--%>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">ID</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="id" disabled>${user.id}</textarea>
                            </div>
                        </div>

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
                                <textarea class="form-control" rows="1"
                                          name="password">${user.password}</textarea>
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
                                <select class="form-control" name="role.id">
                                    <option value="2">USER</option>
                                    <option value="1">ADMIN</option>
                                </select>

                                <%--<textarea class="form-control" rows="1" name="role.name">${user.role.name}</textarea>--%>
                            </div>
                        </div>

                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary"
                        <%--onclick="location.href='<%=request.getContextPath()%>/edit/${personality.id}'">--%>
                            onclick="location.href='<%=request.getContextPath()%>/editUser'">
                            <%--onclick="location.href='#'">--%>
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