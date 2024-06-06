<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Consiel</title>
</head>
<body>
<h2>Consiel</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Description</th>
        <th>Max Glycemia</th>
        <th>Min Glycemia</th>


    </tr>
    <c:forEach var="consiel" items="${conseils}">
        <tr>
            <td>${consiel.getIdConsiel()}</td>
            <td>${consiel.getDescription()}</td>
            <td>${consiel.getMaxGlycemia()}</td>
            <td>${consiel.getMinGlycemia()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
