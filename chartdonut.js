var ctx = document.getElementById("doughnut").getContext("2d");
fetch("extraction2.php")
    .then((response) => response.json())
    .then((data) => {
        var carbonD = data.carbon;
        console.log(carbonD);

        var myChart2 = new Chart(ctx, {
            type: "doughnut",
            data: {
                labels: ["Carbon", "Air"],

                datasets: [
                    {
                        label: "Taux",
                        data: [carbonD, 100 - carbonD],
                        backgroundColor: [
                            "rgba(0, 0, 0, 1)",
                            "rgba(0, 142, 255, 1)",
                        ],
                        borderColor: [
                            "rgba(0, 0, 0, 1)",
                            "rgba(0, 142, 255, 1)",
                        ],
                        borderWidth: 1,
                    },
                ],
            },
            options: {
                responsive: true,
            },
        });
    })
    .catch((error) => {
        console.error("ERR:", error);
    });
