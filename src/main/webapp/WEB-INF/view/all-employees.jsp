<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sahak
  Date: 3/2/2023
  Time: 7:30 PM
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
    <h2>All Employees</h2>

    <div class="table100 ver6 m-b-110">
        <table data-vertable="ver6">
            <thead>
                <tr class="row100 head">
                    <th class="column100 column1">Name</th>
                    <th class="column100 column1">Surname</th>
                    <th class="column100 column1">Department</th>
                    <th class="column100 column1">Salary</th>
                    <th class="column100 column1">Operations</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emp" items="${allEmps}">

                    <c:url var="updateButton" value="/updateInfo">
                        <c:param name="empId" value="${emp.id}"/>
                    </c:url>

                    <tr class="row100">
                        <td class="column100 column1">${emp.name}</td>
                        <td class="column100 column1">${emp.surname}</td>
                        <td class="column100 column1">${emp.department}</td>
                        <td class="column100 column1">${emp.salary}</td>
                        <td>
                            <input class="buttons" type="button" value="Update" onclick="window.location.href = '${updateButton}'">
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <br>
    <input class="buttons button_add" type="button" value="Add" onclick="window.location.href = 'addNewEmployee'">
</body>
</html>