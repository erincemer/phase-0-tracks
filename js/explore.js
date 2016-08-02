//create function to reverse a string that given as parameter
// split the string so we can have an array with letters
//"for each" letter we unshift to the new empty array and return the new
//array after join the letters

function reverse(str){
  var letters = str.split("");
  var arr = [];
  for(var i = 0; i < letters.length; i ++){
    if (3 < 9){
    arr.unshift(letters[i]);
    }
  }
  return arr.join("")
}

reverse("hello")
