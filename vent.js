


fetch('extractionVent.php')
  .then((response) => response.json())
  .then((data) => {
    var vent = data.vent;
    console.log(vent);
    
    document.getElementById("vent").innerHTML = vent+" Km/h";

  })
  .catch((error) => {
    console.error("ERR:", error);
});