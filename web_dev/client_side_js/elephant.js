var photo = document.getElementsByTagName("img");
var pic = photo[0];
//pic.sizes = 20%;
function hide(event){
  event.target.hidden = true;
}
pic.addEventListener("click", hide);

function shrink(){
  var photo = document.getElementsByTagName("img");
  var pic = photo[0];
  pic.height = 500;
  //pic.width = 500;
}
shrink();

var frame = document.getElementsByTagName("h1");

function border_blue(event){
  event.target.style.border = "5px solid blue";
}
frame[0].addEventListener("mouseover", border_blue)
