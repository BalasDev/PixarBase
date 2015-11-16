<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="webres/css/input.css" rel="stylesheet">
<link href="webres/css/errors.css" rel="stylesheet">
<link href="webres/css/style.css" rel="stylesheet">
<jsp:include page="header.jsp"/>
<%--<security:authorize url="/delete/">--%>
<h1>${stringTitle}</h1>

<div class="table-responsive">
    <table class="table table-condensed table-hover table-striped table-bordered">

        <tr>
            <%--  <th></th>--%>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Отчество</th>
            <th>Личный номер</th>
            <th>Звание</th>
<security:authorize url="/hide">      <th></th>  </security:authorize>
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
                <td>${personality.personalNumber}</td>
                <td>${personality.rank}</td>

                <security:authorize url="/hide">
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

                <%--    &lt;%&ndash;modal Person&ndash;%&gt;
                <div class="modal fade" id="info_${personality.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header">
                                <button class="close" type="button" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Подробная информация</h4>
                            </div>

                            <div class="modal-body scroll">
                               &lt;%&ndash; <fieldset>&ndash;%&gt;
                               <row>
                                    <label class="col-lg-2 text-right">Фамилия</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.lastName}">

                                    <label class="col-lg-2 text-right">Имя</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.firstName}">

                                    <label class="col-lg-2 text-right">Отчество</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.personalNumber}">

                                    <label class="col-lg-2 text-right">Личный номер</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.secondName}">

                                    <label class="col-lg-2 text-right">Звание</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.rank}">

                                    <label class="col-lg-2 text-right">РОВД</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.rovd}">

                                    <label class="col-lg-2 text-right">Место службы</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.callOfDuty}">

                                    <label class="col-lg-2 text-right">Место работы</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.workPlace}">

                                    <label class="col-lg-2 text-right control-label">Дата рождения</label>
                                    <input class="col-lg-10" type="text" disabled value="${personality.strBirthday}"/>

                                    <label class="col-lg-2 text-right">Место рождения</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.placeOfBorn}">

                                    <label class="col-lg-2 text-right">Образование</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.education}">

                                    <label class="col-lg-2 text-right">Окончил</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.graduated}">

                                    <label class="col-lg-2 text-right">Специальность</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.speciality}">

                                    <label class="col-lg-2 text-right">Учёная степень</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.degree}">

                                    <label class="col-lg-2 text-right">Иностранные языки</label>
                                    <input type="text" class="col-lg-10" disabled value="${personality.foreigLang}">

                                    <label class="col-lg-2 text-right">Бывал ли за границей</label>
                                    <input class="col-lg-10" type="text" disabled value="${personality.abroad}"/>

                                    <label class="col-lg-2 text-right control-label">Взыскания</label>
                                    <input class="col-lg-10" type="text" disabled value="${personality.foreclosure}"/>

                                    <label class="col-lg-2 text-right control-label">Участие в выборочных органах</label>
                                    <input class="col-lg-10" type="text" disabled value="${personality.election}"/>

                                    <label class="col-lg-2 text-right control-label">Имеет ли госнаграды</label>
                                    <input class="col-lg-10" type="text" disabled value="${personality.stateAwards}"/>

                                    <label class="col-lg-2 text-right control-label">Пункт увольнения</label>
                                    <input class="col-lg-10" type="text" disabled value="${personality.fired}"/>
                               &lt;%&ndash; </fieldset>&ndash;%&gt;
                               </row>

                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Закрыть
                                </button>
                            </div>

                        </div>
                    </div>
                </div>--%>
                <%@include file="viewPersonal.jsp"%>

                <%--    &lt;%&ndash;modal Edit Person&ndash;%&gt;
                <div class="modal fade" id="edit_${personality.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form:form action="/edit" method="POST" modelAttribute="personal">
                                <div class="modal-header">
                                    <button class="close" type="button" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Редактирование информации</h4>
                                </div>

                                <div class="modal-body scroll">
                                   <fieldset>
                                         <form:hidden path="id" value="${personality.id}"/>
                                        <label class="col-lg-2 text-right control-label">Фамилия</label>
                                        <form:input class="col-lg-10" type="text"  path="lastName"
                                                    value="${personality.lastName}"/>

                                        <label class="col-lg-2 text-right  control-label">Имя</label>
                                        <form:input class="col-lg-10" type="text" path="firstName"
                                                    value="${personality.firstName}"/>

                                        <label class="col-lg-2 text-right control-label">Отчество</label>
                                        <form:input class="col-lg-10" type="text" path="secondName"
                                                    value="${personality.secondName}"/>

                                        <label class="col-lg-2 text-right control-label">Личный номер</label>
                                        <form:input class="col-lg-10" type="text" path="personalNumber"
                                                    value="${personality.personalNumber}"/>

                                        <label class="col-lg-2 text-right control-label">Звание</label>
                                        <form:input class="col-lg-10" type="text" path="rank"
                                                    value="${personality.rank}"/>

                                        <label class="col-lg-2 text-right control-label">РОВД</label>
                                        <form:input class="col-lg-10" type="text" path="rank"
                                                    value="${personality.rovd}"/>

                                        <label class="col-lg-2 text-right control-label">Место службы</label>
                                        <form:input class="col-lg-10" type="text" path="callOfDuty"
                                                    value="${personality.callOfDuty}"/>

                                        <label class="col-lg-2 text-right control-label">Место работы</label>
                                        <form:input class="col-lg-10" type="text" path="workPlace"
                                                    value="${personality.workPlace}"/>

                                        <label class="col-lg-2 text-right control-label">Дата рождения</label>
                                        <form:input class="col-lg-10" type="text" path="strBirthday"
                                                    value="${personality.strBirthday}"/>

                                        <label class="col-lg-2 text-right control-label">Место рождения</label>
                                        <form:input class="col-lg-10" type="text" path="placeOfBorn"
                                                    value="${personality.placeOfBorn}"/>

                                        <label class="col-lg-2 text-right control-label">Образование</label>
                                        <form:input class="col-lg-10" type="text" path="education"
                                                    value="${personality.education}"/>

                                        <label class="col-lg-2 text-right control-label">Окончил</label>
                                        <form:input class="col-lg-10" type="text" path="graduated"
                                                    value="${personality.graduated}"/>

                                        <label class="col-lg-2 text-right control-label">Специальность</label>
                                        <form:input class="col-lg-10" type="text" path="speciality"
                                                    value="${personality.speciality}"/>

                                        <label class="col-lg-2 text-right control-label">Учёная степень</label>
                                        <form:input class="col-lg-10" type="text" path="degree"
                                                    value="${personality.degree}"/>

                                        <label class="col-lg-2 text-right control-label">Иностранные языки</label>
                                        <form:input class="col-lg-10" type="text" path="foreigLang"
                                                    value="${personality.foreigLang}"/>

                                        <label class="col-lg-2 text-right control-label">Бывал ли за границей</label>
                                        <form:input class="col-lg-10" type="text" path="abroad"
                                                    value="${personality.abroad}"/>

                                        <label class="col-lg-2 text-right control-label">Взыскания</label>
                                        <form:input class="col-lg-10" type="text" path="foreclosure"
                                                    value="${personality.foreclosure}"/>

                                        <label class="col-lg-2 text-right control-label">Участие в выборочных органах</label>
                                        <form:input class="col-lg-10" type="text" path="election"
                                                    value="${personality.election}"/>

                                        <label class="col-lg-2 text-right control-label">Имеет ли госнаграды</label>
                                        <form:input class="col-lg-10" type="text" path="stateAwards"
                                                    value="${personality.stateAwards}"/>

                                        <label class="col-lg-2 text-right control-label">Пункт увольнения</label>
                                        <form:input class="col-lg-10" type="text" path="fired"
                                                    value="${personality.fired}"/>

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
                </div>--%>
                <%@include file="editPersonal.jsp"%>
            </tr>


        </c:forEach>
    </table>

</div>
<%--</security:authorize>--%>


<jsp:include page="footer.jsp"/>
