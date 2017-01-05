// 7.2 Pairing
// Joseph Huang
// Hussein Maad

// Creating two arrays
var colors = ["red", "blue", "green", "yellow"]
var names = ["Bill", "Ed", "Mack", "Ned"]

// Adding to the arrays
colors.push("pink");
names.push("Chad");

// Creating emtpy hash
var horse = {} ;

// Looping through colors and names arrays as key value pairs into horse
for (var k=0; k < names.length; k++)
{
	horse[names[k]] = colors[k]

}
console.log(horse)

console.log("----------------------")

// Constructor function to create many cars
function Car(model,year,color)
{
	this.model = model;
	this.year = year;
	this.color = color;
	this.yell = function() { console.log("what a nice car!!")}
	this.shout = function() { console.log("what a piece of junk!!")}

}
var new_car = new Car("Toyota",2011, "blue")
console.log(new_car);
new_car.yell();

var old_car = new Car("Mazda",1990, "sliver")
console.log(old_car);
new_car.shout();  