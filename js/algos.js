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

// Driver code
console.log(longestWord(words));
