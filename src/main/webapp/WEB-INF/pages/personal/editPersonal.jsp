<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--modal Edit Person--%>
<div class="modal fade" id="edit_${personality.id}">
    <div class="modal-dialog" style="width: 60%;">
        <div class="modal-content">
            <form:form action="/edit" method="POST" modelAttribute="personal" id="formPerson">
                <div class="modal-header">
                    <button class="close" type="button" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Редактирование информация</h4>
                </div>

                <div class="modal-body scroll">
                    <fieldset>
                            <form:hidden path="id" value="${personality.id}"/>

                            <form:hidden path="users.id" value="${personality.users.id}"/>


                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Фамилия</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="lastName">${personality.lastName}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Имя</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="firstName">${personality.firstName}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Отчество</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="secondName">${personality.secondName}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Личный номер</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="personalNumber">${personality.personalNumber}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Звание</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <select class="form-control" name="rank">
                                    <option value="${personality.rank}">${personality.rank}</option>
                                    <option value="рядовой милиции">рядовой милиции</option>
                                    <option value="младший сержант милиции">младший сержант милиции</option>
                                    <option value="сержант милиции">сержант милиции</option>
                                    <option value="старший сержант милиции">старший сержант милиции</option>
                                    <option value="старшина милиции">старшина милиции</option>
                                    <option value="прапорщик милиции">прапорщик милиции</option>
                                    <option value="старший прапорщик милиции">старший прапорщик милиции</option>
                                    <option value="младший лейтенант милиции">младший лейтенант милиции</option>
                                    <option value="лейтенант милиции">лейтенант милиции</option>
                                    <option value="старший лейтенант милиции">старший лейтенант милиции</option>
                                    <option value="капитан милиции">капитан милиции</option>
                                    <option value="майор милиции">майор милиции</option>
                                    <option value="подполковник милиции">подполковник милиции</option>
                                    <option value="полковник милиции">полковник милиции</option>
                                    <option value="генерал-майор милиции">генерал-майор милиции</option>
                                    <option value="генерал-лейтенант милиции">генерал-лейтенант милиции</option>
                                    <option value="генерал-полковник милиции">генерал-полковник милиции</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left control-label">Дата присвоения звания</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="dateOfGotRank"><fmt:formatDate value="${personality.dateOfGotRank}"
                                                                               pattern="dd MM yyyy"/></textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Категория сотрудника</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <select class="form-control" name="category" id="category2">
                                    <option value="${personality.category}">${personality.category}</option>
                                    <option value="в/н">в/н</option>
                                    <option value="младший нач. состав">младший нач. состав</option>
                                    <option value="средний нач. состав">средний нач. состав</option>
                                    <option value="высший нач. состав">высший нач. состав</option>

                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">РОВД</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <select class="form-control" name="rovd.id">
                                    <option value="${personality.rovd.id}">${personality.rovd.name}</option>
                                    <c:choose>
                                        <c:when test="${userSingIn.getRole().getName()=='ADMIN'}">
                                            <c:forEach items="${rovd}" var="rovd">
                                                <option value="${rovd.id}">${rovd.name}</option>
                                            </c:forEach>
                                        </c:when>
                                    </c:choose>


                                </select>


                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Служба в армии</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="2"
                                          name="callOfDuty">${personality.callOfDuty}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Место работы</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="6"
                                          name="workPlace">${personality.workPlace}</textarea>
                            </div>
                        </div>
                            <%--**********************************--%>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Службы ОВД</label>
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-3">
                                <select id="sel_first" onclick="funSelect()" class="form-control" name="${personality.serviceOfOVD}">
                                    <option value="${personality.serviceOfOVD}">${personality.serviceOfOVD}</option>
                                </select>
                            </div>

                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <select id="sel_second" class="form-control" name="${personality.underServiceOfOVD}">
                                    <option value="${personality.underServiceOfOVD}">${personality.underServiceOfOVD}</option>
                                </select>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left control-label">Служба в ОВД</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                                       <textarea class="form-control" rows="1"
                                                                 name="callOfOVD"><fmt:formatDate
                                                               value="${personality.callOfOVD}"
                                                               pattern="dd MM yyyy"/></textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left control-label">Дата рождения</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="birthday"><fmt:formatDate value="${personality.birthday}"
                                                                          pattern="dd MM yyyy"/></textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Место рождения</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="placeOfBorn">${personality.placeOfBorn}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Образование</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="3"
                                          name="education">${personality.education}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Окончил</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="graduated">${personality.graduated}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Специальность</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="speciality">${personality.speciality}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Учёная степень</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1" name="degree">${personality.degree}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Иностранные языки</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="foreigLang">${personality.foreigLang}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Бывал ли за границей</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1" name="abroad">${personality.abroad}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Взыскания</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="foreclosure">${personality.foreclosure}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Участие в выб-ых органах</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="election">${personality.election}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Имеет ли госнаграды</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="stateAwards">${personality.stateAwards}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Пункт увольнения</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1" name="fired">${personality.fired}</textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Дата окончания контракта</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1" name="contract"><fmt:formatDate
                                        value="${personality.contract}" pattern="dd MM yyyy"/></textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Дата аттестации</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1" name="dateOfCertification"><fmt:formatDate
                                        value="${personality.dateOfCertification}" pattern="dd MM yyyy"/></textarea>
                            </div>
                        </div>

                </div>

                <div class="modal-footer">

                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-3">
                        Создан: ${personality.created} пользователем ${personality.users.login}
                        <div>
                            <c:if test="${not empty personality.editedBy}">
                                Редактирован:${personality.edited}  пользователем ${personality.editedBy}
                            </c:if>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                        <button type="submit" class="btn btn-primary"
                                onclick="location.href='<%=request.getContextPath()%>/edit/${personality.id}'">
                            Да
                        </button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Отмена
                        </button>
                    </div>


                </div>
            </form:form>
        </div>
    </div>
</div>