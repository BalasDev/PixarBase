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
                                    <option value="рядовой">рядовой</option>
                                    <option value="младший сержант">младший сержант</option>
                                    <option value="сержант">сержант</option>
                                    <option value="старший сержант">старший сержант</option>
                                    <option value="старшина">старшина</option>
                                    <option value="прапорщик">прапорщик</option>
                                    <option value="старший прапорщик">старший прапорщик</option>
                                    <option value="младший лейтенант">младший лейтенант</option>
                                    <option value="лейтенант">лейтенант</option>
                                    <option value="старший лейтенант">старший лейтенант</option>
                                    <option value="капитан">капитан</option>
                                    <option value="майор">майор</option>
                                    <option value="подполковник">подполковник</option>
                                    <option value="полковник">полковник</option>
                                    <option value="генерал-майор">генерал-майор</option>
                                    <option value="генерал-лейтенант">генерал-лейтенант</option>
                                    <option value="генерал-полковник">генерал-полковник</option>
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

                                   <%-- <c:forEach items="${rovd}" var="rovd">
                                        <option value="${rovd.id}">${rovd.name}</option>
                                    </c:forEach>--%>
                                </select>
                                    <%-- <select class="form-control" name="rovd">
                                         <option value="${personality.rovd}">${personality.rovd}</option>
                                         <option value="Железнодорожный">Железнодорожный</option>
                                         <option value="Новобелецкий">Новобелецкий</option>
                                         <option value="Центральный">Центральный</option>
                                         <option value="Советский">Советский</option>
                                         <option value="Гомельский">Гомельский</option>
                                         <option value="Брагинский">Брагинский</option>
                                         <option value="Буда-Кошелевский">Буда-Кошелевский</option>
                                         <option value="Ветковский">Ветковский</option>
                                         <option value="Добрушский">Добрушский</option>
                                         <option value="Ельский">Ельский</option>
                                         <option value="Житковичский">Житковичский</option>
                                         <option value="Жлобинский">Жлобинский</option>
                                         <option value="Калинковичский">Калинковичский</option>
                                         <option value="Кормянский">Кормянский</option>
                                         <option value="Лельчицкий">Лельчицкий</option>
                                         <option value="Лоевский">Лоевский</option>
                                         <option value="Мозырьский">Мозырьский</option>
                                         <option value="Наровлянский">Наровлянский</option>
                                         <option value="Октябрьский">Октябрьский</option>
                                         <option value="Петриковский">Петриковский</option>
                                         <option value="Речицкий">Речицкий</option>
                                         <option value="Рогачевский">Рогачевский</option>
                                         <option value="Светлогорский">Светлогорский</option>
                                         <option value="Хойникский">Хойникский</option>
                                         <option value="Чечерский">Чечерский</option>
                                         <option value="Полк ППСМ">Полк ППСМ</option>
                                         <option value="БДПС">БДПС</option>
                                         <option value="Гомельский ОВДТ">Гомельский ОВДТ</option>
                                     </select>--%>


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

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left control-label">Дата рождения</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <textarea class="form-control" rows="1"
                                          name="strBirthday">${personality.strBirthday}</textarea>
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