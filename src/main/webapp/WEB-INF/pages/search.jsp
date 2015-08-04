<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <c:set var="personal" value="${personal}"/>
                            <select class="form-control" name="categoryId" id="categoryId">
                                <option value="lastName"> ${lastName} </option>
                                <option value="firstName"> ${firstName} </option>
                                <option value="secondName"> ${secondName} </option>
                                <option value="personalNumber"> ${personalNumber} </option>
                                <option value="rank"> ${rank} </option>
                                <option value="placeOfBorn"> ${placeOfBorn} </option>
                                <option value="education"> ${education} </option>
                                <option value="graduated"> ${graduated} </option>
                                <option value="speciality"> ${speciality} </option>
                                <option value="degree"> ${degree} </option>
                                <option value="foreigLang"> ${foreigLang} </option>
                                <option value="foreclosure"> ${foreclosure} </option>
                                <option value="election"> ${election} </option>
                                <option value="stateAwards"> ${stateAwards} </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="col-lg-6 col-md-6 form-group">
                            <input class="form-control" type="text" name="searching" id="searching" title="" value="">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 ">
                        <label class="col-lg-6 col-md-6 control-label" for="categoryId">Интервал даты</label>


                        <div class="col-lg-6 col-md-6 form-group">
                            <input class="form-control" type="text" name="stdate" id="stdate" title="" value="">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="col-lg-6 col-md-6 form-group">
                            <input class="form-control" type="text" name="fndate" id="fndate" title="" value="">
                        </div>
                    </div>
                    <button id='search' type="submit" class="btn btn-outline btn-block btn-success">Найти </button>
                </fieldset>
            </form>

        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>