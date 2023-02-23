




var act = document.getElementById("panne");
var prob = Math.floor(Math.random() * 3) + 1;

if(prob == 3){
    act.className ="number-en-panne";
    act.innerHTML = "En panne";

    alert("Votre module est déconnecté \n Veuiller rafraîchir la page");

    var btn = document.getElementById("generer");

    btn.parentNode.removeChild(btn);
   
}else{
    act.className ="actif"
}




