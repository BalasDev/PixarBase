<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<link href="../webres/css/input.css" rel="stylesheet">
<link href="../webres/css/errors.css" rel="stylesheet">
<link href="../webres/css/style.css" rel="stylesheet">
<jsp:include page="../header.jsp"/>
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
            <security:authorize url="/hide">
                <th></th>
            </security:authorize>
        </tr>


        <c:choose>
            <c:when test="${userSingIn.getRole().getName()=='ADMIN'}">
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

                            <%--<security:authorize url="/hide">--%>
                        <td>
                            <div class="btn-group">
                                <a style="cursor: pointer" data-toggle="modal" data-target="#edit_${personality.id}"><i
                                        class="fa fa-edit" style="color: #28a4c9"></i> </a>
                                <a style="cursor: pointer" data-toggle="modal"
                                   data-target="#delete_${personality.id}"><i
                                        class="fa fa-remove"
                                        style="color: red"></i>
                                </a>
                            </div>
                        </td>
                            <%--</security:authorize>--%>
                            <%--modal--%>
                        <%@include file="deletePersonal.jsp" %>
                        <%@include file="viewPersonal.jsp" %>
                        <%@include file="editPersonal.jsp" %>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <c:forEach items="${personalList}" var="personality">
                    <c:choose>
                        <c:when test="${personality.rovd.name==userSingIn.getRovd().getName()}">
                            <tr>
                                <td>
                                    <div style="cursor: pointer" data-toggle="modal"
                                         data-target="#info_${personality.id}">${personality.lastName}</div>
                                </td>
                                <td>${personality.firstName}</td>
                                <td>${personality.secondName}</td>
                                <td>${personality.personalNumber}</td>
                                <td>${personality.rank}</td>

                                    <%--<security:authorize url="/hide">--%>
                                <td>
                                    <div class="btn-group">
                                        <a style="cursor: pointer" data-toggle="modal" data-target="#edit_${personality.id}"><i
                                                class="fa fa-edit" style="color: #28a4c9"></i> </a>
                                    </div>
                                </td>
                                    <%--</security:authorize>--%>
                                    <%--modal--%>
                                <%@include file="deletePersonal.jsp" %>
                                <%@include file="viewPersonal.jsp" %>
                                <%@include file="editPersonal.jsp" %>
                            </tr>
                        </c:when>
                    </c:choose>

                </c:forEach>
            </c:otherwise>
        </c:choose>


    </table>

</div>

<jsp:include page="../footer.jsp"/>
