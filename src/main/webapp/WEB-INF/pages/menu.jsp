<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
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
                <td>${personality.lastName}</td>
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
                            <a href="#"><i class="fa fa-edit" style="color: #28a4c9"></i> </a>
                            <a style="cursor: pointer" data-toggle="modal" data-target="#delete"><i class="fa fa-remove" style="color: red" ></i> </a>
                        </div>
                    </td>
                </security:authorize>
            </tr>

            <%--modal--%>
            <div class="modal fade" id="delete">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button class="close" type="button" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Подтверждение удаления</h4>
                        </div>
                        <div class="media-body">
                            <p class="text-center">Удаление записи пользователя <strong>${personality.lastName}</strong></p>
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

        </c:forEach>
    </table>
</div>




<jsp:include page="footer.jsp"/>
