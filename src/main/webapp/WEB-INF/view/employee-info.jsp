<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: sahak
  Date: 2/7/2023
  Time: 6:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style><%@include file="../css/employee-info.css"%></style>
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form:form action="saveEmployee" modelAttribute="employee">
        <form:hidden path="id"/>
        <h3>Enter Changes</h3>

        <label for="username">Name</label>
        <form:input path="name" placeholder="Email or Phone" id="username"/>

        <label for="surname">Surname</label>
        <form:input path="surname" placeholder="Surnmae" id="surname"/>

        <label for="department">Department</label>
        <form:input path="department" placeholder="Department" id="department"/>

        <label for="salary">Salary</label>
        <form:input path="salary" placeholder="Salary" id="salary"/>

        <input class="input__type__submit" type="submit" value="OK">

    </form:form>
</body>
</html>
