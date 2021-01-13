<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!Doctype html>
<html>
<body>

<h2>Dear Employee, please inter your details!!!</h2>
<br>
<br>

<form:form action="showEmpDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    SurName <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
<%--    Department<form:select path="department">--%>
<%--    <form:option value="Information technologies" label="IT"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
<%--    <form:option value="Human Resourses" label="HR"/>--%>
<%--    </form:select>--%>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>
    Which car do you want?
    <br>
<%--    MB <form:radiobutton path="car" value="MB"/>--%>
<%--    Audi <form:radiobutton path="car" value="Audi"/>--%>
<%--    BMV <form:radiobutton path="car" value="BMV"/>--%>
    <form:radiobuttons path="car" items="${employee.cars}"/>
    <br><br>
    Foreign language(s)
<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>

    <form:checkboxes path="languages" items="${employee.languagesList}"/>
    <br><br>
    PhoneNumber <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Email  <form:input path="email"/>
    <form:errors path="email"/>

    <br><br>
    <input type="submit" value="Ok!">

</form:form>

</body>

</html>