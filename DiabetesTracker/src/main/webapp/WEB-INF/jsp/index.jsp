<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<h2>HTML Table</h2>

<table>
    <tr>
        <th>ID</th>
        <th>DATE</th>
        <th>PATIENT NAME</th>
        <th>GLYCEMIE</th>
        <th>HEART BEAT</th>
    </tr>
    <c:forEach items="${shows}" var="pr">
        <tr>
            <td>${pr.getId()}</td>
            <td>${pr.getDate()}</td>
            <td>${pr.getNamePatient()}</td>

            <td>${pr.getGlycemia()}</td>
            <td>${pr.getHeartBeat()}</td>
        </tr>
    </c:forEach>


</table>

</body>
</html>

