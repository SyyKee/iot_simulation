function sender(){
const data = {
    temperature: getTemperatureData(),
    carbon: getCarbonData(),
    vent: getVentData(),
    pression: getPressionData()
  };
 
  const xhr = new XMLHttpRequest();
  const url = "conn.php"; 
  xhr.open("POST", url, true);
  xhr.setRequestHeader("Content-Type", "application/json");
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      console.log(xhr.responseText); 
    }
  };
  xhr.send(JSON.stringify(data)); 
  
}
  function getTemperatureData() {
    const temperatures = [9, 10, 11, 11, 11, 12, 14, 15, 17, 16, 16];
    const temperature =temperatures[Math.floor(Math.random() * temperatures.length)];

    return temperature;
}

function getCarbonData() {
    const carbones = [38.0, 38.1, 38.2, 38.3, 38.4, 38.5, 38.6, 38.7, 38.8, 38.9, 39.0, 39.1, 39.2, 39.3, 39.4, 39.5, 39.6, 39.7, 39.8, 39.9, 40.0, 40.1, 40.2, 40.3, 40.4, 40.5, 40.6, 40.7, 40.8, 40.9, 41.0];
    const carbon = carbones[Math.floor(Math.random() * carbones.length)];

    return carbon;
}


function getVentData() {
    const vents = [38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69];
    const vent = vents[Math.floor(Math.random() * vents.length)];

    return vent;
}

function getPressionData() {
    const pressions = [1013, 1014, 1015, 1016, 1017];
    const pression = pressions[Math.floor(Math.random() * pressions.length)];

    return pression;
}