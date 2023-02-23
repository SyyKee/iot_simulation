fetch("extractionTempPress.php")
    .then((response) => response.json())
    .then((data) => {
        const temperatureData = data.map((row) => row.temperature);
        const pressionData = data.map((row) => row.pression);

        const ctx = document.getElementById("lineChart").getContext("2d");
        const chart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: [
                    "00h",
                    "01h",
                    "02h",
                    "03h",
                    "04h",
                    "05h",
                    "06h",
                    "07h",
                    "08h",
                    "09h",
                    "10h",
                    "11h",
                    "12h",
                    "13h",
                    "14h",
                    "15h",
                    "16h",
                    "17h",
                    "18h",
                    "19h",
                    "20h",
                    "21h",
                    "22h",
                    "23h",
                ],
                datasets: [
                    {
                        label: "Pression",
                        yAxisID: "pression",
                        type: "line",
                        data: pressionData,
                        borderColor: "rgba(243, 225, 107, 1)",
                        backgroundColor: "rgba(243, 225, 107, 1)",
                        fill: false,
                        tension: 0.3,
                    },
                    {
                        label: "Temperature",
                        yAxisID: "temperature",
                        data: temperatureData,
                        borderColor: "rgba(255, 26, 16, 0.2)",
                        backgroundColor: "rgba(255, 26, 16, 0.2)",
                        fill: false,
                    },
                ],
            },
            options: chartOptions,
        });
    })
    .catch((error) => console.error(error));

var chartOptions = {
    scales: {
        pression: {
            id: "Pression",
            type: "linear",
            position: "left",
            max: 1100,
            min: 800,
            scaleLabel: {
                display: true,
                labelString: "Pression (hPa)",
            },
        },
        temperature: {
            id: "Temperature",
            type: "linear",
            position: "right",
            scaleLabel: {
                display: true,
                labelString: "Temperature (°C)",
            },
        },
    },
};

/*
var ctx = document.getElementById('linChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets: [{
            label: 'Earnings in $',
            data: [2050, 1900, 2100, 2800, 1800, 2000, 2500, 2600, 2450, 1950, 2300, 2900],
            backgroundColor: [
                'rgba(85,85,85, 1)'

            ],
            borderColor: 'rgb(41, 155, 99)',

            borderWidth: 1
        }]
    },
    options: {
        responsive: true
    }
});

*/
