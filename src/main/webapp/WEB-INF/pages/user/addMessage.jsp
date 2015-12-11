<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript">
  var myForm = document.forms['form'];
  var formSubmit = document.getElementById('formSubmit');
  formSubmit.onclick = function(){
    myForm.submit();
  }
</script>
<%--modal add message--%>
<div id="mModal" class="modal fade" >
  <div class="modal-dialog" style="width: 60%;">
    <div class="modal-content">

        <div class="modal-header">
          <button class="close" type="button" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Добавить сообщение для всех</h4>
        </div>

        <div class="modal-body scroll">
          <fieldset>
            <form id='form' action='addMessage' method="post">
              <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                  <label class="text-left">Текст сообщения</label>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-3">
                  <textarea id="area" class="form-control" rows="5" name="text"></textarea>
                </div>
              </div>

              </form>


          </fieldset>
        </div>
        <div class="modal-footer">
          <button id="formSubmit"  class="btn btn-primary">Да
          </button>
          <button type="button" class="btn btn-default" data-dismiss="modal">
            Отмена
          </button>
        </div>

    </div>
  </div>
</div>