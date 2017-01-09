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

// Release 2
// A function that takes an integer for length, and 
// builds and returns an array of strings of the 
// given length.
// Input: integer
// Steps: Create empty array to store words.
// Create empty string to hold letters.
// Create words of random length and add to array.
// Output: Array of strings

function newWords(num) {
	var list = [];
	for (var n = 0; n < num; n++){
	  var word = "";
	  var letters = "abcdefghijklmnopqrstuvwxyz";
	  var wordLength = Math.floor(Math.random() * (10 - 1)) + 1;
	  for( var i = 0; i < wordLength; i++){
	      word += letters.charAt(Math.floor(Math.random() * letters.length));
	  }
	list.push(word);
	}
	return list;
}


// Driver code
console.log(longestWord(words));

console.log(compare({name: "Steven", age: 54},{name: "Janet", age: 64}));
console.log(compare({car: "Toyota", year: 2011},{name: "Chen", age: 30}));

console.log(newWords(3));
for (var i = 0; i < 10; i++ ) {
	var list = newWords(4);
	console.log(list);
	console.log("The longest word is " + longestWord(list));
}
