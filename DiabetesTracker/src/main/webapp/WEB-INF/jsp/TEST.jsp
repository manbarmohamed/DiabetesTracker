<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glycemia Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        canvas {
            background-color: white;
            border-radius: 8px;
            width: 100%;
            height: 200px;
        }
    </style>
</head>
<body>
<h1>Glycemia Chart</h1>
<form method="get" action="chart">
    <label for="view">Select view type:</label>
    <select id="view" name="view">
        <option value="weekly" ${viewType == 'weekly' ? 'selected' : ''}>Weekly</option>
        <option value="monthly" ${viewType == 'monthly' ? 'selected' : ''}>Monthly</option>
        <option value="yearly" ${viewType == 'yearly' ? 'selected' : ''}>Yearly</option>
    </select>
    <label for="year">Year:</label>
    <input type="number" id="year" name="year" value="${selectedYear}">
    <label for="month">Month:</label>
    <input type="number" id="month" name="month" value="${selectedMonth}">
    <label for="week">Week:</label>
    <input type="number" id="week" name="week" value="${selectedWeek}">
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
        type: 'doughnut',
        data: {
            labels: labels,
            datasets: [{
                label: 'Glycemia',
                data: glycemiaData,
                backgroundColor: [
                    'rgba(86, 209, 86, 0.2)',
                    'rgba(209, 86, 86, 0.2)',
                    'rgba(86, 86, 209, 0.2)',
                    'rgba(209, 209, 86, 0.2)'
                ],
                borderColor: [
                    'rgba(86, 209, 86, 1)',
                    'rgba(209, 86, 86, 1)',
                    'rgba(86, 86, 209, 1)',
                    'rgba(209, 209, 86, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            /*scales: {
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
            }*/

                responsive: true
        }
    });
</script>
</body>
</html>
