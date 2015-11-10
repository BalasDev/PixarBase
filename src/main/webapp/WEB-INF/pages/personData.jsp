<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table>
   <tr>
      <td>Фамилия</td>
      <td><form:textarea class="form-control" rows="1" cols="70" path="lastName"/></td>
      <td><form:errors path="lastName" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Имя</td>
      <td><form:textarea class="form-control" rows="1" path="firstName"/></td>
      <td> <form:errors path="firstName" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Отчество</td>
      <td><form:textarea class="form-control" rows="1" path="secondName"/></td>
      <td> <form:errors path="secondName" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Личный номер</td>
      <td><form:textarea class="form-control" rows="1"  path="personalNumber"/></td>
      <td> <form:errors path="personalNumber" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Звание</td>
      <td><form:textarea class="form-control" rows="1"  path="rank"/></td>
      <td> <form:errors path="rank" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Место службы</td>
      <td><form:textarea class="form-control" rows="6" path="callOfDuty"/></td>
      <td> <form:errors path="callOfDuty" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Дата рождения</td>
      <td><form:textarea class="form-control" rows="1"  path="strBirthday" placeholder="10 10 2014" /></td>
      <td> <form:errors path="strBirthday" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Место рождения</td>
      <td><form:textarea class="form-control" rows="1"  path="placeOfBorn" /></td>
      <td> <form:errors path="placeOfBorn" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Образование</td>
      <td><form:textarea class="form-control" rows="1"  path="education"/></td>
      <td> <form:errors path="education" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Окончил</td>
      <td><form:textarea class="form-control" rows="1"  path="graduated"/></td>
      <td> <form:errors path="graduated" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Специальность</td>
      <td><form:textarea class="form-control" rows="1"  path="speciality"/></td>
      <td> <form:errors path="speciality" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Учёная степень</td>
      <td><form:textarea class="form-control" rows="1"  path="degree"/></td>
      <td> <form:errors path="degree" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Иностранные языки</td>
      <td><form:textarea class="form-control" rows="1"  path="foreigLang"/></td>
      <td> <form:errors path="foreigLang" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Был ли за границей</td>
      <td><form:textarea class="form-control" rows="1"  path="abroad"/></td>
      <td> <form:errors path="abroad" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Взыскания</td>
      <td><form:textarea class="form-control" rows="1"  path="foreclosure"/></td>
      <td> <form:errors path="foreclosure" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Участие в выборочных органах</td>
      <td><form:textarea class="form-control" rows="1"  path="election"/> </td>
      <td><form:errors path="election" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Имеет ли госнаграды</td>
      <td><form:textarea class="form-control" rows="1"  path="stateAwards"/></td>
      <td> <form:errors path="stateAwards" cssClass="error"/></td>
   </tr>
   <tr>
      <td>Пункт увольнения</td>
      <td><form:textarea class="form-control" rows="1"  path="fired"/></td>
      <td> <form:errors path="fired" cssClass="error"/></td>
   </tr>
</table>
