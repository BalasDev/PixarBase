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
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Фамилия</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea ng-init='foo="Some default value"' ng-model='foo' class="form-control" rows="1" path="lastName"  />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Имя</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1" path="firstName" placeholder="${personality.firstName}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Отчество</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1" path="secondName" placeholder="${personality.secondName}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Личный номер</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="personalNumber" placeholder="${personality.personalNumber}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Звание</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="rank" placeholder="${personality.rank}"/>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">РОВД</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="rovd" placeholder="${personality.rovd}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Служба в армии</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="2" path="callOfDuty" placeholder="${personality.callOfDuty}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Место работы</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="6"  path="workPlace" placeholder="${personality.workPlace}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left control-label">Дата рождения</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="strBirthday" placeholder="${personality.strBirthday}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Место рождения</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="placeOfBorn" placeholder="${personality.placeOfBorn}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Образование</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="3"  path="education" placeholder="${personality.education}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Окончил</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="graduated" placeholder="${personality.graduated}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Специальность</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="speciality" placeholder="${personality.speciality}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Учёная степень</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="degree" placeholder="${personality.degree}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Иностранные языки</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="foreigLang" placeholder="${personality.foreigLang}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Бывал ли за границей</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="abroad" placeholder="${personality.abroad}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Взыскания</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="foreclosure" placeholder="${personality.foreclosure}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Участие в выб-ых органах</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="election" placeholder="${personality.election}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Имеет ли госнаграды</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="stateAwards" placeholder="${personality.stateAwards}"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label class="text-left">Пункт увольнения</label>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                <form:textarea class="form-control" rows="1"  path="fired" placeholder="${personality.fired}"/>
                            </div>
                        </div>

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