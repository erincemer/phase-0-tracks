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

longest(["long phrase","longest phrase","longer phrase"])
longest(["pen", "computer", "genie"])
