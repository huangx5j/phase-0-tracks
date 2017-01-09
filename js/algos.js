// Release 0
// A function that takes an array of words 
// and returns the longest word.
// Input: array of words
// Steps: Have a temp variable to hold longest word and loop
// through elements of the array to check if current element
// is longer and replace it in the temp variable if so. 
// Output: longest word in the array

var words = ["long phrase","longest phrase","longer phrase"]

function longestWord(arr) {
	var temp = 0;
	var word = "";
	for (var i = 0; i < arr.length; i++) {
		if (arr[i].length > temp) {
			temp = arr[i].length;
			word = arr[i]
		}
	} 
	return word;
}

// Release 1
// A function takes two objects and checks to see 
// if the objects share at least one key-value pair.
// Input : 2 objects
// Steps: Create 2 empty arrays to hold keys and values.
// Loop arrays to compare and if an element is equal then
// return true. Else return false.
// Output: true or false

function compare(obj1, obj2) {
	var arr1 = [];
	var arr2 = [];
	for (var key1 in obj1) {
		arr1.push(key1, obj1[key1]);
	}
	for (var key2 in obj2) {
		arr2.push(key2, obj2[key2]);
	}
	for (var i = 0; i < arr1.length; i++) {
		if (arr1[i] == arr2[i]) {
			return true;
		}
	}
	return false;
}



// Driver code
console.log(longestWord(words));

console.log(compare({name: "Steven", age: 54},{name: "Janet", age: 64}));
console.log(compare({car: "Toyota", year: 2011},{name: "Chen", age: 30}));