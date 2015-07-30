<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="webres/css/input.css" rel="stylesheet">
<link href="webres/css/errors.css" rel="stylesheet">
<jsp:include page="header.jsp"/>

<h1>Ментозавры</h1>

<div class="table-responsive">
    <table class="table table-condensed table-hover table-striped table-bordered">

        <tr>
            <%--  <th></th>--%>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Отчество</th>
            <th>Звание</th>
            <th>Место рождения</th>
            <%--<th>Образование</th>
            <th>Окончил</th>
            <th>Специальность</th>
            <th>Учёная степень</th>
            <th>Иностранные языки</th>
            <th>Был ли за границей</th>
            <th>Взыскания</th>
            <th>Участие в выборочных органах</th>
            <th>Имеет ли госнаграды</th>--%>
        </tr>

        <c:forEach items="${personalList}" var="personality">
            <tr>
                <td>
                    <div style="cursor: pointer" data-toggle="modal"
                         data-target="#info_${personality.id}">${personality.lastName}</div>
                </td>
                <td>${personality.firstName}</td>
                <td>${personality.secondName}</td>
                <td>${personality.rank}</td>
                <td>${personality.placeOfBorn}</td>
                    <%--<td>${personality.education}</td>
                    <td>${personality.graduated}</td>
                    <td>${personality.speciality}</td>
                    <td>${personality.degree}</td>
                    <td>${personality.foreigLang}</td>
                    <td>${personality.abroad}</td>
                    <td>${personality.foreclosure}</td>
                    <td>${personality.election}</td>
                    <td>${personality.stateAwards}</td>--%>
                <security:authorize url="/delete/">
                    <td>
                        <div class="btn-group">
                            <a style="cursor: pointer" data-toggle="modal" data-target="#edit_${personality.id}"><i
                                    class="fa fa-edit" style="color: #28a4c9"></i> </a>
                            <a style="cursor: pointer" data-toggle="modal" data-target="#delete_${personality.id}"><i
                                    class="fa fa-remove"
                                    style="color: red"></i>
                            </a>
                        </div>
                    </td>
                </security:authorize>
                    <%--modal--%>
                <div class="modal fade" id="delete_${personality.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button class="close" type="button" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Подтверждение удаления</h4>
                            </div>
                            <div class="modal-body">
                                <p class="text-center">Удаление записи пользователя
                                    <strong>${personality.lastName}</strong>
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary"
                                        onclick="location.href='<%=request.getContextPath()%>/delete/${personality.id}'">
                                    Да
                                </button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Отмена
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                    <%--modal Person--%>
                <div class="modal fade" id="info_${personality.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header">
                                <button class="close" type="button" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Подробная информация</h4>
                            </div>

                            <div class="modal-body">
                                <fieldset>

                                    <label class="col-lg-4 text-right">Фамилия</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.lastName}">

                                    <label class="col-lg-4 text-right">Имя</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.firstName}">

                                    <label class="col-lg-4 text-right">Отчество</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.secondName}">

                                    <label class="col-lg-4 text-right">Звание</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.rank}">

                                    <label class="col-lg-4 text-right">Место рождения</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.placeOfBorn}">

                                    <label class="col-lg-4 text-right">Образование</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.education}">

                                    <label class="col-lg-4 text-right">Окончил</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.graduated}">

                                    <label class="col-lg-4 text-right">Специальность</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.speciality}">

                                    <label class="col-lg-4 text-right">Учёная степень</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.degree}">

                                    <label class="col-lg-4 text-right">Иностранные языки</label>
                                    <input type="text" class="col-lg-8" disabled value="${personality.foreigLang}">

                                </fieldset>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Закрыть
                                </button>
                            </div>

                        </div>
                    </div>
                </div>


                    <%--modal Edit Person--%>
                <div class="modal fade" id="edit_${personality.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form:form action="/edit" method="POST" modelAttribute="personal">
                                <div class="modal-header">
                                    <button class="close" type="button" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Редактирование информация</h4>
                                </div>

                                <div class="modal-body">
                                    <fieldset>

                                        <label class="col-lg-4 text-right control-label">Фамилия</label>
                                        <form:input class="col-lg-8" type="text"
                                                    path="lastName"
                                                    value="${personality.lastName}"/>

                                        <label class="col-lg-4 text-right  control-label">Имя</label>
                                        <form:input class="col-lg-8" type="text" path="firstName"
                                                    value="${personality.firstName}"/>

                                        <label class="col-lg-4 text-right control-label">Отчество</label>
                                        <form:input class="col-lg-8" type="text" path="secondName"
                                                    value="${personality.secondName}"/>

                                        <label class="col-lg-4 text-right control-label">Звание</label>
                                        <form:input class="col-lg-8" type="text" path="rank"
                                                    value="${personality.rank}"/>

                                        <label class="col-lg-4 text-right control-label">Место рождения</label>
                                        <form:input class="col-lg-8" type="text" path="placeOfBorn"
                                                    value="${personality.placeOfBorn}"/>

                                        <label class="col-lg-4 text-right control-label">Образование</label>
                                        <form:input class="col-lg-8" type="text" path="education"
                                                    value="${personality.education}"/>

                                        <label class="col-lg-4 text-right control-label">Окончил</label>
                                        <form:input class="col-lg-8" type="text" path="graduated"
                                                    value="${personality.graduated}"/>

                                        <label class="col-lg-4 text-right control-label">Специальность</label>
                                        <form:input class="col-lg-8" type="text" path="speciality"
                                                    value="${personality.speciality}"/>

                                        <label class="col-lg-4 text-right control-label">Учёная степень</label>
                                        <form:input class="col-lg-8" type="text" path="degree"
                                                    value="${personality.degree}"/>

                                        <label class="col-lg-4 text-right control-label">Иностранные языки</label>
                                        <form:input class="col-lg-8" type="text" path="foreigLang"
                                                    value="${personality.foreigLang}"/>

                                    </fieldset>
                                </div>

                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary"
                                            onclick="location.href='<%=request.getContextPath()%>/edit/${personality.id}'">
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
            </tr>


        </c:forEach>
    </table>
</div>


<jsp:include page="footer.jsp"/>
