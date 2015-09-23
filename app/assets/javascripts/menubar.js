function display(number){
  document.getElementById("nav"+number).style.visibility = "visible";
  document.getElementById("dot"+number).style.backgroundColor = "#a8e";
}

function hide(number){
  document.getElementById("nav"+number).style.visibility = "hidden";
  document.getElementById("dot"+number).style.backgroundColor = "#549";
}