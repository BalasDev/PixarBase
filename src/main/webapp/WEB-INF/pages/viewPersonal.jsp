<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%--modal Person--%>
<div class="modal fade" id="info_${personality.id}">
  <div class="modal-dialog" style="width: 60%;">
    <div class="modal-content">

      <div class="modal-header">
        <button class="close" type="button" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Подробная информация</h4>
      </div>

      <div class="modal-body scroll">
        <fieldset>
          <div class="row">

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Фамилия</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                                <textarea class="form-control" rows="1"
                                                          disabled>${personality.lastName}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Имя</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                                <textarea class="form-control" rows="1"
                                                          disabled>${personality.firstName}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Отчество</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                              <textarea class="form-control" rows="1"
                                                        disabled>${personality.personalNumber}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Личный номер</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                              <textarea class="form-control" rows="1"
                                                        disabled>${personality.secondName}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Звание</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.rank}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">РОВД</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.rovd}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Служба в армии</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="2"
                                                      disabled>${personality.callOfDuty}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Место работы</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="6"
                                                      disabled>${personality.workPlace}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left control-label">Дата рождения</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.strBirthday}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Место рождения</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.placeOfBorn}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Образование</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                             <textarea class="form-control" rows="3"
                                                       disabled>${personality.education}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Окончил</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.graduated}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Специальность</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.speciality}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Учёная степень</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.degree}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Иностранные языки</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.foreigLang}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Бывал ли за границей</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control col-lg-6" rows="1"
                                                      disabled>${personality.abroad}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Взыскания</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.foreclosure}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Участие в выб-ых органах</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.election}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Имеет ли госнаграды</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.stateAwards}</textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <label class="text-left">Пункт увольнения</label>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                                            <textarea class="form-control" rows="1"
                                                      disabled>${personality.fired}</textarea>
            </div>
          </div>
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