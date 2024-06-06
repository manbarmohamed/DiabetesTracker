<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Ropat</title>
</head>
<body>
<h2>Ropat</h2>
<table border="1">
  <tr>
    <th>ID</th>
    <th>Ingredient</th>
    <th>Max Glycemia</th>
    <th>Min Glycemia</th>
  </tr>
  <c:forEach var="ropat" items="${ropatList}">
    <tr>
      <td>${ropat.idRopat}</td>
      <td>${ropat.ingredient}</td>
      <td>${ropat.maxGlycemia}</td>
      <td>${ropat.minGlycemia}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
