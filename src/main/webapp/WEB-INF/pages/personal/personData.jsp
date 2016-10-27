<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table>


    <c:forEach items="${fields}" var="field">

        <c:choose>

            <%--<c:when test="${field.fieldName=='callOfOVD'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <input type="date" class="form-control" name="${field.fieldName}">
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>

            <c:when test="${field.fieldName=='birthday'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <input type="date" class="form-control" name="${field.fieldName}">
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>

            <c:when test="${field.fieldName=='contract'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <input type="date" class="form-control" name="${field.fieldName}">
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>

            <c:when test="${field.fieldName=='dateOfCertification'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <input type="date" class="form-control" name="${field.fieldName}">
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>


            <c:when test="${field.fieldName=='dateOfGotRank'}">
                <tr>
                    <td>${field.rusFieldName}</td>

                    <td>
                        <input type="date" class="form-control" name="${field.fieldName}">
                        <input type="date" class="form-control" name="">
                    </td>

                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>--%>

            <c:when test="${field.fieldName=='rank'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <select class="form-control" name="${field.fieldName}">
                            <option value="рядовой милиции">рядовой милиции</option>
                            <option value="младший сержант милиции">младший сержант милиции</option>
                            <option value="сержант милиции">сержант милиции</option>
                            <option value="старший сержант милиции">старший сержант милиции</option>
                            <option value="старшина милиции">старшина милиции</option>
                            <option value="прапорщик милиции">прапорщик милиции</option>
                            <option value="старший прапорщик милиции">старший прапорщик милиции</option>
                            <option value="младший лейтенант милиции">младший лейтенант милиции</option>
                            <option value="лейтенант милиции">лейтенант милиции</option>
                            <option value="старший лейтенант милиции">старший лейтенант милиции</option>
                            <option value="капитан милиции">капитан милиции</option>
                            <option value="майор милиции">майор милиции</option>
                            <option value="подполковник милиции">подполковник милиции</option>
                            <option value="полковник милиции">полковник милиции</option>
                            <option value="генерал-майор милиции">генерал-майор милиции</option>
                            <option value="генерал-лейтенант милиции">генерал-лейтенант милиции</option>
                            <option value="генерал-полковник милиции">генерал-полковник милиции</option>
                            <option value="вольнонаемный">вольнонаемный</option>
                            <option value="1 класс госслужащего">1 класс госслужащего</option>
                            <option value="2 класс госслужащего">2 класс госслужащего</option>
                            <option value="3 класс госслужащего">3 класс госслужащего</option>
                            <option value="4 класс госслужащего">4 класс госслужащего</option>
                            <option value="5 класс госслужащего">5 класс госслужащего</option>
                            <option value="6 класс госслужащего">6 класс госслужащего</option>
                            <option value="7 класс госслужащего">7 класс госслужащего</option>
                            <option value="8 класс госслужащего">8 класс госслужащего</option>
                            <option value="9 класс госслужащего">9 класс госслужащего</option>
                            <option value="10 класс госслужащего">10 класс госслужащего</option>
                            <option value="11 класс госслужащего">11 класс госслужащего</option>
                            <option value="12 класс госслужащего">12 класс госслужащего</option>
                        </select>
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>


            <c:when test="${field.fieldName=='serviceOfOVD'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <select id="sel_first" class="form-control" onclick="funSelect()" name="${field.fieldName}"/>
                    </td>

                    <td>
                        <select id="sel_second" class="form-control" name="underServiceOfOVD"/>
                    </td>

                </tr>
            </c:when>

            <c:when test="${field.fieldName=='rovd'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <c:choose>


                            <c:when test="${userSingIn.getRole().getName()=='ADMIN'}">
                                <select class="form-control" name=rovd.id>
                                    <c:forEach items="${rovd}" var="rovds">
                                        <option value="${rovds.id}">${rovds.name}</option>
                                    </c:forEach>
                                </select>
                            </c:when>
                            <c:otherwise>
                                <%--<textarea class="form-control" rows="${field.row}" cols="70" name="${field.fieldName}"></textarea>--%>
                                <select class="form-control" name=rovd.id>
                                    <option value="${userSingIn.getRovd().getId()}">${userSingIn.getRovd().getName()}</option>
                                    <option value="30">Архив</option>
                                </select>
                            </c:otherwise>
                        </c:choose>


                            <%--<option value="Железнодорожный">Железнодорожный</option>
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
                            <option value="Гомельский ОВДТ">Гомельский ОВДТ</option>--%>

                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>

            <c:when test="${field.fieldName=='category'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <select class="form-control error" name="${field.fieldName}" id="category1">
                        </select>
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>

            <c:when test="${field.fieldName=='classLevel'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td>
                        <select class="form-control" name="${field.fieldName}">
                            <option value="1 класс">1 класс</option>
                            <option value="2 класс">2 класс</option>
                            <option value="3 класс">3 класс</option>
                        </select>
                    </td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:when>

            <%--<c:when test="${field.fieldName=='birthday'}">
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td><form:textarea class="form-control" rows="${field.row}" cols="70" path="${field.fieldName}"
                                       placeholder="${field.value}"/></td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>

            </c:when>--%>

            <c:otherwise>
                <tr>
                    <td>${field.rusFieldName}</td>
                    <td><form:textarea class="form-control" rows="${field.row}" cols="70" id="${field.fieldName}"
                                       path="${field.fieldName}"
                                       placeholder="${field.value}" required="true"/></td>
                    <td><form:errors path="${field.fieldName}" cssClass="error"/></td>
                </tr>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</table>
