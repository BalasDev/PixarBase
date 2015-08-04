<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table>
  <tr>
    <td>Фамилия</td>
    <td><form:input path="lastName"/> <form:errors path="lastName" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Имя</td>
    <td><form:input path="firstName"/> <form:errors path="firstName" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Отчество</td>
    <td><form:input path="secondName"/> <form:errors path="secondName" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Личный номер</td>
    <td><form:input path="personalNumber"/> <form:errors path="personalNumber" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Звание</td>
    <td><form:input path="rank"/> <form:errors path="rank" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Место службы</td>
    <td><form:input path="callOfDuty"/> <form:errors path="callOfDuty" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Дата рождения</td>
    <td><form:input path="strBirthday" placeholder="10 10 2014" /> <form:errors path="strBirthday" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Место рождения</td>
    <td><form:input path="placeOfBorn" /> <form:errors path="placeOfBorn" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Образование</td>
    <td><form:input path="education"/> <form:errors path="education" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Окончил</td>
    <td><form:input path="graduated"/> <form:errors path="graduated" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Специальность</td>
    <td><form:input path="speciality"/> <form:errors path="speciality" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Учёная степень</td>
    <td><form:input path="degree"/> <form:errors path="degree" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Иностранные языки</td>
    <td><form:input path="foreigLang"/> <form:errors path="foreigLang" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Был ли за границей</td>
    <td><form:input path="abroad"/> <form:errors path="abroad" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Взыскания</td>
    <td><form:input path="foreclosure"/> <form:errors path="foreclosure" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Участие в выборочных органах</td>
    <td><form:input path="election"/> <form:errors path="election" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Имеет ли госнаграды</td>
    <td><form:input path="stateAwards"/> <form:errors path="stateAwards" cssClass="error"/></td>
  </tr>
  <tr>
    <td>Пункт увольнения</td>
    <td><form:input path="fired"/> <form:errors path="fired" cssClass="error"/></td>
  </tr>
</table>
