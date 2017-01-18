// 9.2  Dynamic Pages with JavaScript
// Joseph Huang
// Hussein Maad

console.log("The script is running!");

// Change picture border
function changeBorder(event) {
	console.log("Click detected!");
	console.log(event);
	event.target.style.border = "solid purple";
	event.target.style.borderRadius = "20px";
}

// Change button color when mouse hovers over
function buttonColor(event) {
	console.log("Hover detected!");
	console.log(event);
	event.target.style.backgroundColor = "green";
}

// Change tag attributes without an eventlistener
function boldText() {
	console.log("looping through <li> elements");
	// console.log(event);
	var texts = document.getElementsByTagName("li");
	for (var i=0; i<texts.length; i++) {
		texts[i].style.fontWeight = "bold"; 
		texts[i].style.backgroundColor = "red";

	}
}

// Loops through tag name with eventlistener and call changeBackColor
function passColor() {
	var color = document.getElementsByTagName("li");
	console.log(color);
	console.log(photo);
	for (var i=0; i<color.length; i++) {
		color[i].addEventListener("click", changeBackColor);	
	}	
}

// change background color to blue
function changeBackColor(event) {
	event.target.style.backgroundColor = "blue";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", changeBorder);

var button = document.getElementsByTagName("button");
var button1 = button[0];
button1.addEventListener("mouseover", buttonColor);

// Looping through a tag without a function
// var texts = document.getElementsByTagName("li");
// texts.addEventListener("onload", boldText);
// var i;
// for (i=0; i<texts.length; i++) {
// 	texts[i].style.fontWeight = "bold";
// }

// boldText();
passColor();