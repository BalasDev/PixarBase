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
    <script src="webres/jquery/jquery.validate.min.js"></script>
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
        $(function () {
            $("#message").show().delay(3000).fadeOut()
            $("#message2").show().delay(3000).fadeOut()


        });
        /*Open modal */
        $('document').ready(function () {

            var mob = [
                {val: 'ОПиП', text: 'ОПиП'},
                {val: 'ОДС', text: 'ОДС'},
                {val: 'НиД', text: 'НиД'},
                {val: 'ГАИ', text: 'ГАИ'},
                {val: 'ГиМ', text: 'ГиМ'},
                {val: 'ИДН', text: 'ИДН'},
                {val: 'Другие службы МОБ', text: 'Другие службы МОБ'}
            ];

            var ovd = [
                {val: 'МОБ', text: 'МОБ'},
                {val: 'КМ', text: 'КМ'},
                {val: 'Штаб', text: 'Штаб'},
                {val: 'ИРиКО', text: 'ИРиКО'},
                {val: 'ФиТ', text: 'ФиТ'},
                {val: 'Другие службы', text: 'Другие службы'},
                {val: 'Подразделения РСД', text: 'Подразделения РСД'}
            ];

            var s = $(".sel_first :selected").text();

            $.each(ovd, function (index, item) {
                $("#sel_first").append(new Option(this.val, this.text));
            });

            $.each(mob, function (index, item) {
                $("#sel_second").append(new Option(this.val, this.text));
            });

            $.each(ovd, function (index, item) {
                $(".sel_first").append(new Option(this.val, this.text));
            });


            $("#modalButton").click(function () {
                $("#mModal").modal('show');
                $.ajax({
                    url: "getGlobalMessage",
                    type: 'GET',
                    contentType: 'application/json',
                    mimeType: 'application/json',
                    success: function (data) {
                        //   alert(data.mes);
                        /* if (data.mes=''){
                         $('#glm').hide();
                         }  else*/
                        $('#area').val(data.mes);
                    }
                });
            });
            /*hide select element with rovd on search.jsp*/
            $('#searchingSelect').hide();
            $('#searchingSelect').empty();

            /*show global message*/
            $.ajax({
                url: "getGlobalMessage",
                type: 'GET',
                contentType: 'application/json',
                mimeType: 'application/json',
                success: function (data) {
                    //   alert(data.mes);
                    var el = data.mes;
                    if (el != "") {
                        /* $('#glm').css("visibility", "visible");*/
                        $('#glm').css('visibility', 'visible').hide().fadeIn().removeClass('hidden');
                        $('#glm').text(data.mes);
                    }
                }
            });

            /* create search select*/

            $.ajax({
                url: "getSearchParam",
                type: 'GET',
                contentType: 'application/json',
                mimeType: 'application/json',
                success: function (data) {
                    var obj = data;
                    $('#categoryId').empty();
                    $.each(obj, function (key, value) {

                        $('#categoryId').append($("<option></option>")
                                .
                                attr("value", value.fieldName)
                                .text(value.rusFieldName));

                    });
                }
            });

            // Create select for category
            var sost = [
                {val: 'в/н', text: 'в/н'},
                {val: 'младший нач. состав', text: 'младший нач. состав'},
                {val: 'средний нач. состав', text: 'средний нач. состав'},
                {val: 'старший нач. состав', text: 'старший нач. состав'},
                {val: 'высший нач. состав', text: 'высший нач. состав'}
            ];

            var selsost1 = $('#category1');

            $.each(sost, function (index, item) {
                selsost1.append(new Option(this.val, this.text));

            });


            //Validate add person form


            $("#personal").validate({

                errorPlacement: function () {
                    return false;  // suppresses error message text
                },
                invalidHandler: function (event, validator) {
                    // 'this' refers to the form
                    var errors = validator.numberOfInvalids();
                    if (errors) {
                        $('#message2').css('visibility', 'visible').hide().fadeIn().removeClass('hidden');


                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        });

        /*change on selected rovd,rank,category input to select with list*/
        function update() {
            var s = $("#categoryId option:selected").text();
            var list = $("#searchingSelect");

            var povd = [
                {val: 'ОПиП', text: 'ОПиП'},
                {val: 'ОДС', text: 'ОДС'},
                {val: 'НиД', text: 'НиД'},
                {val: 'ГАИ', text: 'ГАИ'},
                {val: 'ГиМ', text: 'ГиМ'},
                {val: 'Другие службы МОБ', text: 'Другие службы МОБ'},
                {val: 'УР', text: 'УР'},
                {val: 'БЭП', text: 'БЭП'},
                {val: 'НиПГЛ', text: 'НиПГЛ'},
                {val: 'ИДН', text: 'ИДН'},
                {val: 'Другие службы КМ', text: 'Другие службы КМ'}
            ];

            var ovd = [
                {val: 'МОБ', text: 'МОБ'},
                {val: 'КМ', text: 'КМ'},
                {val: 'Штаб', text: 'Штаб'},
                {val: 'ИРиКО', text: 'ИРиКО'},
                {val: 'ФиТ', text: 'ФиТ'},
                {val: 'Другие службы', text: 'Другие службы'},
                {val: 'Подразделения РСД', text: 'Подразделения РСД'}
            ];


            if (s == 'РОВД' || s == 'Звание' || s == 'Категория сотрудника' || s == 'Службы ОВД' || s == 'Подслужбы ОВД') {
                list.empty();
                if (s == 'РОВД') {
                    $.ajax({
                        url: "getRovdForSearch",
                        type: 'GET',
                        contentType: 'application/json',
                        mimeType: 'application/json',
                        success: function (data) {
                            var obj = data;
                            var list = $("#searchingSelect");
                            $.each(obj, function (index, item) {
                                list.append(new Option(item.name, item.name));
                            });
                        }
                    });
                } else if (s == 'Службы ОВД') {
                    $.each(ovd, function (index, item) {
                        list.append(new Option(this.val, this.text));
                    });
                } else if (s == 'Подслужбы ОВД') {
                    $.each(povd, function (index, item) {
                        list.append(new Option(this.val, this.text));
                    });
                }

                else if (s == 'Категория сотрудника') {

                    var sost = [
                        {val: 'в/н', text: 'в/н'},
                        {val: 'младший нач. состав', text: 'младший нач. состав'},
                        {val: 'средний нач. состав', text: 'средний нач. состав'},
                        {val: 'старший нач. состав', text: 'старший нач. состав'},
                        {val: 'высший нач. состав', text: 'высший нач. состав'}
                    ];

                    $.each(sost, function (index, item) {
                        list.append(new Option(this.val, this.text));
                    });
                } else if (s == 'Звание') {
                    var rank = [
                        {val: 'рядовой милиции', text: 'рядовой милиции'},
                        {val: 'младший сержант милиции', text: 'младший сержант милиции'},
                        {val: 'сержант милиции', text: 'сержант милиции'},
                        {val: 'старший сержант милиции', text: 'старший сержант милиции'},
                        {val: 'старшина милиции', text: 'старшина милиции'},
                        {val: 'прапорщик милиции', text: 'прапорщик милиции'},
                        {val: 'старший прапорщик милиции', text: 'старший прапорщик милиции'},
                        {val: 'младший лейтенант милиции', text: 'младший лейтенант милиции'},
                        {val: 'лейтенант милиции', text: 'лейтенант милиции'},
                        {val: 'старший лейтенант милиции', text: 'старший лейтенант милиции'},
                        {val: 'капитан милиции', text: 'капитан милиции'},
                        {val: 'майор милиции', text: 'майор милиции'},
                        {val: 'подполковник милиции', text: 'подполковник милиции'},
                        {val: 'полковник милиции', text: 'полковник милиции'},
                        {val: 'генерал-майор милиции', text: 'генерал-майор милиции'},
                        {val: 'генерал-лейтенант милиции', text: 'генерал-лейтенант милиции'},
                        {val: 'генерал-полковник милиции', text: 'генерал-полковник милиции'}
                    ];

                    $.each(rank, function (index, item) {
                        list.append(new Option(this.val, this.text));
                    });


                }
                $('#searchingInput').hide();
                $('#searchingInput').empty();
                $('#searchingSelect').show();
            }
            else {
                $('#searchingSelect').hide();
                $('#searchingInput').show();
                $('#searchingSelect').empty();

            }


        }


        function funSelect() {
            var s = $("#sel_first :selected").text();
            var mob = [
                {val: 'ОПиП', text: 'ОПиП'},
                {val: 'ОДС', text: 'ОДС'},
                {val: 'НиД', text: 'НиД'},
                {val: 'ГАИ', text: 'ГАИ'},
                {val: 'ГиМ', text: 'ГиМ'},
                {val: 'ИДН', text: 'ИДН'},
                {val: 'Другие службы МОБ', text: 'Другие службы МОБ'}
            ];
            var km = [
                {val: 'УР', text: 'УР'},
                {val: 'БЭП', text: 'БЭП'},
                {val: 'НиПГЛ', text: 'НиПГЛ'},
                {val: 'Другие службы КМ', text: 'Другие службы КМ'},
            ];
            if (s == 'МОБ') {
                $("#sel_second").show();
                $("#sel_second").empty();
                $.each(mob, function (index, item) {
                    $("#sel_second").append(new Option(this.val, this.text));
                });
            }
            else if (s == 'КМ') {
                $("#sel_second").show();
                $("#sel_second").empty();
                $.each(km, function (index, item) {
                    $("#sel_second").append(new Option(this.val, this.text));
                });

            }
            else {
                $("#sel_second").hide();
                $("#sel_second").empty();

            }
        }
        ;

        function funSelectForClass(i) {

            var s = $("#sel_first"+i+" :selected").text();

            var mob = [
                {val: 'ОПиП', text: 'ОПиП'},
                {val: 'ОДС', text: 'ОДС'},
                {val: 'НиД', text: 'НиД'},
                {val: 'ГАИ', text: 'ГАИ'},
                {val: 'ГиМ', text: 'ГиМ'},
                {val: 'ИДН', text: 'ИДН'},
                {val: 'Другие службы МОБ', text: 'Другие службы МОБ'}
            ];
            var km = [
                {val: 'УР', text: 'УР'},
                {val: 'БЭП', text: 'БЭП'},
                {val: 'НиПГЛ', text: 'НиПГЛ'},
                {val: 'Другие службы КМ', text: 'Другие службы КМ'},
            ];
            if (s == 'МОБ') {
                $("#sel_second"+i).show();
                $("#sel_second"+i).empty();
                $.each(mob, function (index, item) {
                    $("#sel_second"+i).append(new Option(this.val, this.text));
                });
            }
            else if (s == 'КМ') {
                $("#sel_second"+i).show();
                $("#sel_second"+i).empty();
                $.each(km, function (index, item) {
                    $("#sel_second"+i).append(new Option(this.val, this.text));
                });
            }
            else {
                $("#sel_second"+i).empty();
                $("#sel_second"+i).hide();

            }
        }
        ;


        function editPersonal(){

            var ovd = [
                {val: 'МОБ', text: 'МОБ'},
                {val: 'КМ', text: 'КМ'},
                {val: 'Штаб', text: 'Штаб'},
                {val: 'ИРиКО', text: 'ИРиКО'},
                {val: 'ФиТ', text: 'ФиТ'},
                {val: 'Другие службы', text: 'Другие службы'},
                {val: 'Подразделения РСД', text: 'Подразделения РСД'}
            ];

        };

        function rovdEdit(i){
            $.ajax({
                url: "getRovdForSearch",
                type: 'GET',
                contentType: 'application/json',
                mimeType: 'application/json',
                success: function (data) {
                    var obj = data;
                    var list = $("#rovdEdit"+i);
                    $.each(obj, function (index, item) {
                        list.append(new Option(item.name, item.id));
                    });
                }
            });
        };

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
    <div id="glm" class="alert alert-info hidden"><%--${applicationScope['globMes']}--%><%--${globalMes}--%></div>
    <c:if test="${not empty msg }">
    <div id=message class="alert alert-${type}">${msg}</div>

    </c:if>
    <div id=message2 class="alert alert-danger hidden">Не все поля введены!</div>