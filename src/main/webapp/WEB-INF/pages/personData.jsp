<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


    <label class="text-right">Фамилия</label>
    <form:input path="lastName"  class="col-lg-7"/> <form:errors path="lastName" class="col-lg-2" cssStyle="font-weight: 500; color: red" />


    <label class="text-right">Имя</label>
    <form:input path="firstName"  class="col-lg-7"/> <form:errors path="firstName" class="col-lg-2" cssStyle="color: red" />

   <label class="text-right">Отчество</label>
   <form:input path="secondName"  class="col-lg-10"/> <form:errors path="secondName" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Личный номер</label>
   <form:input path="personalNumber"  class="col-lg-10"/> <form:errors path="personalNumber" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Звание</label>
   <form:input path="rank"  class="col-lg-10"/> <form:errors path="rank" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Место службы</label>
   <form:input path="callOfDuty"  class="col-lg-10"/> <form:errors path="callOfDuty" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Дата рождения</label>
   <form:input path="strBirthday"  class="col-lg-10" placeholder="10 10 2014"/> <form:errors path="strBirthday" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Место рождения</label>
   <form:input path="placeOfBorn"  class="col-lg-10"/> <form:errors path="placeOfBorn" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Место работы</label>
   <form:input path="workPlace"  class="col-lg-10"/> <form:errors path="workPlace" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Образование</label>
   <form:input path="education"  class="col-lg-10"/> <form:errors path="education" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Окончил</label>
   <form:input path="graduated"  class="col-lg-10"/> <form:errors path="graduated" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Специальность</label>
   <form:input path="speciality"  class="col-lg-10"/> <form:errors path="speciality" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Учёная степень</label>
   <form:input path="degree"  class="col-lg-10"/> <form:errors path="degree" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Иностранные языки</label>
   <form:input path="foreigLang"  class="col-lg-10"/> <form:errors path="foreigLang" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Был ли за границей</label>
   <form:input path="abroad"  class="col-lg-10"/> <form:errors path="abroad" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Взыскания</label>
   <form:input path="foreclosure"  class="col-lg-10"/> <form:errors path="foreclosure" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Участие в выборочных органах</label>
   <form:input path="election"  class="col-lg-10"/> <form:errors path="election" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Имеет ли госнаграды</label>
   <form:input path="stateAwards"  class="col-lg-10"/> <form:errors path="stateAwards" class="col-lg-12" cssClass="error"/>

   <label class="text-right">Пункт увольнения</label>
   <form:input path="fired"  class="col-lg-10"/> <form:errors path="fired" class="col-lg-12" cssClass="error"/>


