<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Medicament</title>
</head>
<body>
<h2>Medicament</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Label</th>
        <th>Dose</th>
        <th>Max Glycemia</th>
        <th>Min Glycemia</th>
    </tr>
    <c:forEach var="medicament" items="${medicamentList}">
        <tr>
            <td>${medicament.idMedicament}</td>
            <td>${medicament.label}</td>
            <td>${medicament.dose}</td>
            <td>${medicament.maxGlycemia}</td>
            <td>${medicament.minGlycemia}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
