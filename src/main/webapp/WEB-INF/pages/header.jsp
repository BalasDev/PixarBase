<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Bootstrap -->
  <link href="webres/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
  <link href="webres/bootstrap/dist/css/font-awesome.css" rel="stylesheet">
  <link href="webres/css/style.css" rel="stylesheet">
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="webres/jquery/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="webres/bootstrap/dist/js/bootstrap.min.js"></script>
  <%--<link href="webres/css/input.css" rel="stylesheet">--%>
  <%--<link href="webres/css/errors.css" rel="stylesheet">--%>
  <%--<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->--%>
  <%--<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->--%>
  <%--<!--[if lt IE 9]>--%>
  <%--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--%>
  <%--<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>--%>
  <![endif]-->
  <script type="text/javascript">
    /*Hide popup message after 3 seconds*/
    $(function() {
      $("#message").show().delay(3000).fadeOut();


    });
    /*Open modal */
    $('document').ready(function(){
      $("#modalButton").click(function(){
        $("#mModal").modal('show');
        $.ajax({
          url: "getGlobalMessage",
          type: 'GET',
          contentType: 'application/json',
          mimeType: 'application/json',
          success: function(data) {
            //   alert(data.mes);
            /* if (data.mes=''){
             $('#glm').hide();
             }  else*/
            $('#area').val(data.mes);
          }
        });
      });

      /*show global message*/
      $.ajax({
        url: "getGlobalMessage",
        type: 'GET',
        contentType: 'application/json',
        mimeType: 'application/json',
        success: function(data) {
       //   alert(data.mes);
         /* if (data.mes=''){
            $('#glm').hide();
          }  else*/
          $('#glm').text(data.mes);
        }
      });




    });



  </script>
</head>

<body>

<div class="container">
  <div class="row2">
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#responsive-menu">
            <span class="sr-only">Открыть навигацию</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="/" class="navbar-brand"><i class="fa fa-home pull-left fa-border"></i></a>
        </div>
        <div class="collapse navbar-collapse" id="responsive-menu">
          <ul class="nav navbar-nav">
            <li><a href="/adds">Добавить</a></li>
           <%-- <security:authorize url="/searchs">--%>
            <li><a href="/searchs">Поиск</a></li>
          <%--  </security:authorize>--%>
            <security:authorize url="/adminPanel">
             <li><a href="/adminPanel">Панель администратора</a></li>
            </security:authorize>
          </ul>
          <form action="" class="navbar-form navbar-right">
            <a href="/logoutUser" class="btn btn-danger form-control">Выйти</a>
          </form>
        </div>
      </div>
    </div>
  </div>
<div id="glm" class="alert alert-info"><%--${applicationScope['globMes']}--%><%--${globalMes}--%></div>
  <c:if test="${not empty msg }">
    <div id =message class="alert alert-${type}">${msg}</div>
  </c:if>