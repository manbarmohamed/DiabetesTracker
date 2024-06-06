<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Detail du Consiel</title>
</head>
<body>
<h1>Detail du Consiel</h1>
<c:if test="${not empty consiel}">
    <c:forEach var="c" items="${consiel}">
        <p>ID: ${c[0]}</p>
        <p>Description: ${c[1]}</p>
        <p>Glycémie Minimum: ${c[3]}</p>
        <p>Glycémie Maximum: ${c[2]}</p>
        <p>Nom du Patient: ${c[4]}</p>
    </c:forEach>
</c:if>
<c:if test="${empty consiel}">
    <p>Aucun consiel trouvé pour cette valeur de glycémie.</p>
</c:if>
</body>
</html>
