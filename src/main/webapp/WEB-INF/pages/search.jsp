<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>

<jsp:include page="header.jsp"/>
<div class="panel panel-warning">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Фильтры</a>
        </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
        <div class="form-horizontal">
            <form action="searchUser" method="post">
                <fieldset style="padding-top: 10px" id="filterForm">
                    <div class="col-lg-6 col-md-6 ">

                        <label class="col-lg-6 col-md-6 control-label" for="categoryId">Категория</label>

                        <div class="col-lg-6 col-md-6 form-group">
                        <select class="form-control" name="categoryId" id="categoryId" onchange="update();">
                        <%--<c:forEach items="${fields}" var="field">
                            <option value="${field.fieldName}"> ${field.rusFieldName} </option>
                        </c:forEach>--%>
                            <%--<c:set var="personal" value="${personal}"/>
                            <select class="form-control" name="categoryId" id="categoryId">
                                <option value="lastName"> ${lastName} </option>
                                <option value="firstName"> ${firstName} </option>
                                <option value="secondName"> ${secondName} </option>
                                <option value="personalNumber"> ${personalNumber} </option>
                                <option value="rank"> ${rank} </option>
                                <option value="rovd"> ${rovd} </option>
                                <option value="callOfDuty"> ${callOfDuty} </option>
                                <option value="workPlace"> ${workPlace} </option>
                                <option value="placeOfBorn"> ${placeOfBorn} </option>
                                <option value="education"> ${education} </option>
                                <option value="graduated"> ${graduated} </option>
                                <option value="speciality"> ${speciality} </option>
                                <option value="degree"> ${degree} </option>
                                <option value="foreigLang"> ${foreigLang} </option>
                                <option value="foreclosure"> ${foreclosure} </option>
                                <option value="election"> ${election} </option>
                                <option value="stateAwards"> ${stateAwards} </option>
                                <option value="fired"> ${fired} </option>
                            </select>--%>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="col-lg-6 col-md-6 form-group">
                            <select class="form-control" name="searching" id="searchingSelect">
                                <option value="lastName"> ${lastName} </option>
                            </select>
                            <input class="form-control" type="text" name="searching" id="searchingInput" title="" value="">

                        </div>
                    </div>

                    <div class="col-lg-12 col-md-12">
                    <%--<div class="input-group">--%>
                    <table align="center" class="table-condensed">
                        <tr>
                            <td><input type="radio" class="radio-inline" name="dateSearching" value="1">День рождения
                            </td>
                            <td></td>

                            <td><input type="radio" class="radio-inline" name="dateSearching" value="2">Служба в ОВД
                            </td>

                            <td><input type="radio" class="radio-inline" name="dateSearching" value="3">Дата окончания контракта
                            </td>

                            <td><input type="radio" class="radio-inline" name="dateSearching" value="4">Дата аттестации
                            </td>

                            <td><input type="radio" class="radio-inline" name="dateSearching" value="5">Дата присвоения звания, класс госслужбы
                            </td>

                            <td><input type="radio" class="radio-inline" name="dateSearching" value="6">Дата присвоения классности
                            </td>
                        </tr>
                    </table>
                    <%--</div>--%>
                    </div>

                    <div class="col-lg-6 col-md-6 ">

                        <label class="col-lg-6 col-md-6 control-label" for="categoryId">Интервал даты</label>


                        <div class="col-lg-6 col-md-6 form-group">
                            <input class="form-control" type="text" name="stdate" id="stdate" title="" value="" placeholder="01 02 2017">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="col-lg-6 col-md-6 form-group">
                            <input class="form-control" type="text" name="fndate" id="fndate" title="" value="" placeholder="01 02 2018">
                        </div>
                    </div>
                    <button id='search' type="submit" class="btn btn-outline btn-block btn-success">Найти</button>
                </fieldset>
            </form>

        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>