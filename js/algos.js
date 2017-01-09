// Release 0
// A function that takes an array of words 
// and returns the longest word.
// Have a temp variable to hold longest word and loop
// through elements of the array to check if current element
// is longer and replace it in the temp variable if so. 
// Input: array of words
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

// Driver code
console.log(longestWord(words));