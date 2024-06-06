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
    <c:forEach var="consiel" items="${consielList}">
        <tr>
            <td>${consiel.idConsiel}</td>
            <td>${consiel.description}</td>
            <td>${consiel.maxGlycemia}</td>
            <td>${consiel.minGlycemia}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
