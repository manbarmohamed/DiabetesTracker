<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Glycemia Reading</title>
</head>
<body>
<h2>Add Glycemia Reading</h2>
<form action="add" method="post">
    <label for="fname">date</label><br>
    <input type="date" id="fname" name="date" ><br>
    <label for="lname">Name Patient</label><br>
    <input type="text" id="lname" name="namePatient"><br><br>

    <label for="glycemia">glycemia</label><br>
    <input type="number" id="glycemia" name="glycemia" ><br><br>
    <label for="HeartBeat">Heart Beat</label><br>
    <input type="number" id="HeartBeat" name="HeartBeat" ><br><br>
    <label for="id">Consiel Id</label><br>
    <select class="form-control" id="id" name="consiel.idConsiel" required>
            <c:forEach var="con" items="${consiels}">
                <option value="${con.getIdConsiel()}">ID: ${con.getIdConsiel()}</option>
            </c:forEach>
    </select>

    <input type="submit" value="Submit">
</form>
</body>
</html>
