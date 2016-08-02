// var colors = ["blue", "black", "red", "orange"];
// var names = ["John", "Beauty", "Phil", "Forrest"];
//
// colors.push("white");
// names.push("Bob");
//
// function createObject(arr1, arr2) {
// var namesColors = {};
// for (var i = 0; i < arr1.length; i++) {
// namesColors[arr1[i]] = arr2[i];
// }
// return namesColors;
// }

//createObject(colors, names);

function Car(make, model, has_sunroof){
	console.log("Our new car: ");
	this.make = make;
	this.model = model;
	this.has_sunroof = has_sunroof;

	this.honk = function() {console.log("Beep!"); };
	this.print = function() {
		console.log("Make: " + this.make);
		console.log("Model: " + this.model);
		console.log("has_sunroof: " + this.has_sunroof);
		
	};

}

var newCar = new Car("Infiniti", "FX35", true);
newCar.honk();
newCar.print();
console.log("----------")
var secondCar = new Car("Audi", "A4", false);
secondCar.print();
