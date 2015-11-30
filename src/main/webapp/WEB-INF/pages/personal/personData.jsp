<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table>

    <c:forEach items="${fields}" var="field">

        <c:choose>
            <c:when test="${field.fieldName=='rank'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <select class="form-control" name="${field.fieldName}">
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
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>
            <c:when test="${field.fieldName=='rovd'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <select class="form-control" name="${field.fieldName}">
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
                        </select>
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td><form:textarea class="form-control" rows="${field.row}" cols="70" path="${field.fieldName}"
                                       placeholder="${field.value}"/></td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</table>
