<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glycemia Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<h1>Glycemia Chart</h1>
<form method="get" action="chart">
    <label for="view">Select view type:</label>
    <select id="view" name="view">
        <option value="weekly" ${viewType == 'weekly' ? 'selected' : ''}>Weekly</option>
        <option value="yearly" ${viewType == 'yearly' ? 'selected' : ''}>Yearly</option>
    </select>
    <button type="submit">Apply</button>
</form>
<canvas id="glycemiaChart" width="400" height="200"></canvas>
<script>
    const glycemiaData = [];
    const labels = [];
    <c:forEach var="reading" items="${glycemiaReadings}">
    labels.push('${reading.date}');
    glycemiaData.push(${reading.glycemia});
    </c:forEach>

    const ctx = document.getElementById('glycemiaChart').getContext('2d');
    const glycemiaChart = new Chart(ctx, {
        type: 'bar', // or 'bar', 'pie', etc.
        data: {
            labels: labels,
            datasets: [{
                label: 'Glycemia',
                data: glycemiaData,
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1,
                fill: false
            }]
        },
        options: {
            scales: {
                x: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Date'
                    }
                },
                y: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Glycemia'
                    }
                }
            }
        }
    });
</script>
</body>
</html>

