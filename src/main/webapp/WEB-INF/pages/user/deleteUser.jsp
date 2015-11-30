<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>

<%--modal delete--%>
<div class="modal fade" id="delete_${user.id}">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button class="close" type="button" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Подтверждение удаления</h4>
      </div>
      <div class="modal-body">
        <p class="text-center">Удаление записи пользователя
          <strong>${user.lastName}</strong>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary"
                onclick="location.href='<%=request.getContextPath()%>/deleteUser/${user.id}'">
          Да
        </button>
        <button type="button" class="btn btn-default" data-dismiss="modal">
          Отмена
        </button>
      </div>
    </div>
  </div>
</div>