<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="../webres/css/input.css" rel="stylesheet">
<link href="../webres/css/errors.css" rel="stylesheet">
<link href="../webres/css/style.css" rel="stylesheet">
<jsp:include page="../header.jsp"/>
<security:authorize url="/forUser">

    <h1>${stringTitle}</h1>

<div class="table-responsive">
    <table class="table table-condensed table-hover table-striped table-bordered">

        <tr>
            <th></th>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Отчество</th>
            <th>Личный номер</th>
            <th>Звание</th>
            <th>Дата присвоения звания</th>
            <th>Дата аттестации</th>
            <th>Дата окончания контракта</th>
            <%--<security:authorize url="/hide">--%>
                <th></th>
            <%--</security:authorize>--%>
        </tr>
        <c:set var="count" value="0" scope="page"/>



        <c:forEach items="${personalList}" var="personality">
            <c:set var="count" value="${count + 1}" scope="page"/>
            <tr>
                <td>${count}</td>
                <td>
                    <div style="cursor: pointer" data-toggle="modal"
                         data-target="#info_${personality.id}">${personality.lastName}</div>
                </td>
                <td>${personality.firstName}</td>
                <td>${personality.secondName}</td>
                <td>${personality.personalNumber}</td>
                <td>${personality.rank}</td>
                <td><fmt:formatDate value="${personality.dateOfGotRank}" pattern="dd MM yyyy"/></td>
                <td><fmt:formatDate value="${personality.dateOfCertification}" pattern="dd MM yyyy"/></td>
                <td><fmt:formatDate value="${personality.contract}" pattern="dd MM yyyy"/></td>
                <td>
                        <div class="btn-group">
                            <a style="cursor: pointer" data-toggle="modal" data-target="#edit_${personality.id}" onclick="rovdEdit(${personality.id})"><i
                                    class="fa fa-edit" style="color: #28a4c9"></i> </a>
                <security:authorize url="/hide">
                            <a style="cursor: pointer" data-toggle="modal" data-target="#delete_${personality.id}"><i
                                    class="fa fa-remove"
                                    style="color: red"></i>
                            </a>
                </security:authorize>
                        </div>
                    </td>
                    <%--modal--%>
                <%@include file="deletePersonal.jsp" %>
                <%@include file="viewPersonal.jsp" %>
                <%@include file="editPersonal.jsp" %>
            </tr>


        </c:forEach>
    </table>

</div>
</security:authorize>

<security:authorize url="/forAdmin">
    <div class="col-sm-3 col-md-2 sidebar">
        <ul class="nav nav-sidebar">
            <c:forEach items="${rovd}" var="rovds">
                <li><a href="/mans/${rovds.id}" onclick="GET_ROVD_FOR_ADMIN()">${rovds.name}</a> </li>
            </c:forEach>
        </ul>
     <%--   <c:forEach items="${rovd}" var="rovds">
            <option value="${rovds.id}">${rovds.name}</option>
        </c:forEach>--%>
    </div>
    <div class="col-sm-9 col-md-10 main">
        <h1>${stringTitle}</h1>

        <div class="table-responsive">
            <table class="table table-condensed table-hover table-striped table-bordered">

                <tr>
                    <th></th>
                    <th>Фамилия</th>
                    <th>Имя</th>
                    <th>Отчество</th>
                    <th>Личный номер</th>
                    <th>Звание</th>
                    <th>Дата присвоения звания</th>
                    <th>Дата аттестации</th>
                    <th>Дата окончания контракта</th>
                        <%--<security:authorize url="/hide">--%>
                    <th></th>
                        <%--</security:authorize>--%>
                </tr>
                <c:set var="count" value="0" scope="page"/>



                <c:forEach items="${personalList}" var="personality">
                    <c:set var="count" value="${count + 1}" scope="page"/>
                    <tr>
                        <td>${count}</td>
                        <td>
                            <div style="cursor: pointer" data-toggle="modal"
                                 data-target="#info_${personality.id}">${personality.lastName}</div>
                        </td>
                        <td>${personality.firstName}</td>
                        <td>${personality.secondName}</td>
                        <td>${personality.personalNumber}</td>
                        <td>${personality.rank}</td>
                        <td><fmt:formatDate value="${personality.dateOfGotRank}" pattern="dd MM yyyy"/></td>
                        <td><fmt:formatDate value="${personality.dateOfCertification}" pattern="dd MM yyyy"/></td>
                        <td><fmt:formatDate value="${personality.contract}" pattern="dd MM yyyy"/></td>
                        <td>
                            <div class="btn-group">
                                <a style="cursor: pointer" data-toggle="modal" data-target="#edit_${personality.id}" onclick="rovdEdit(${personality.id})"><i
                                        class="fa fa-edit" style="color: #28a4c9"></i> </a>
                                <security:authorize url="/hide">
                                    <a style="cursor: pointer" data-toggle="modal" data-target="#delete_${personality.id}"><i
                                            class="fa fa-remove"
                                            style="color: red"></i>
                                    </a>
                                </security:authorize>
                            </div>
                        </td>
                            <%--modal--%>
                        <%@include file="deletePersonal.jsp" %>
                        <%@include file="viewPersonal.jsp" %>
                        <%@include file="editPersonal.jsp" %>
                    </tr>


                </c:forEach>
            </table>

        </div>

    </div>
</security:authorize>
<jsp:include page="../footer.jsp"/>
