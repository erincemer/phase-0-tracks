//RELEASE 0
//create an empty string variable so we can call assign to the longest word
//as we iterate the array.Compare the lengths of each item in the array.

function longest(arr){
	var longestWord = "";
	for(var i = 0; i < arr.length; i++){
		if (arr[i].length > longestWord.length){
			longestWord = arr[i];
		}
	}
	return longestWord;
}

//RELEASE 1
//Object.keys method to assign the keys of the objects so it would be easy to read.
//iterate each objects to check if their keys or values match
function comparePairs(obj1, obj2){
	var keys1 = Object.keys(obj1);
	var keys2 = Object.keys(obj2);
	for(var i = 0; i < keys1.length; i ++){
		if (keys1[i] === keys2[i] || obj1[keys1[i]] === obj2[keys2[i]]){
			return true
		}
		return false
	}
}

//RELEASE 2
//One loop that creates random letters using Math.random() and alphabet
//string then add(+) letters together to create a word(string). Another
//loop that creates n amount of strings into array.
function make_string(n){
	var arr = [];
	for(var j=0; j < n; j++) {
    	var text = "";
    	var letters = "abcdefghijklmnopqrstuvwxyz";

    	for( var i=0; i < Math.floor(Math.random() * 10) +2; i++ ){
    	    text += letters.charAt(Math.floor(Math.random() * letters.length));

			 }
			 arr.push(text);
	}
    return arr;
}

// DRIVER CODES

for(var i = 0; i < 11; i ++){
	var arr = make_string(3);
	console.log(arr)
	console.log(longest(arr))
}

make_string(3);


comparePairs({name: "Steven", age: 54}, {name: "Tamir", age: 44})
comparePairs({location: "Napa", age: 54}, {currency: "euro", continent: "Europe"})

longest(["long phrase","longest phrase","longer phrase"])
longest(["pen", "computer", "genie"])
