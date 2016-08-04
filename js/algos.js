//RELEASE 0
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

comparePairs({name: "Steven", age: 54}, {name: "Tamir", age: 44})
comparePairs({location: "Napa", age: 54}, {currency: "euro", continent: "Europe"})

//longest(["long phrase","longest phrase","longer phrase"])
//longest(["pen", "computer", "genie"])
