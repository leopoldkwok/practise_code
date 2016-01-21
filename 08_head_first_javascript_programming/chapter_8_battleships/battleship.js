// defining an object and assigning it to the variable view.
var view = {
	// this method takes a string message and displays it
	// in the message display area
	displayMessage: function(msg) { // The displayMessage method takes one argument, a msg.
		var messageArea = document.getElementById("messageArea");
		messageArea.innerHTML = msg; // ..and update the text of the messageArea element by setting its innerHTML to msg.
	},
	displayHit: function(location) {
		var cell = document.getElementById(location); // Remember the location is created from the row and column and matches an id of a <td> element.
		cell.setAttribute("class", "hit"); // then set the class of that element to “hit”. This will immediately add a ship image to the <td> element.
	},
	displayMiss: function(location) {
		var cell = document.getElementById(location);
		cell.setAttribute("class", "miss"); // We do the same thing in displayMiss, only we set the class to “miss” which adds a miss image to the element.
	}

};

// Remember, displayHit and displayMiss take a location in the board that's already been converted from a letter and a
// number to a string with two numbers that corresponds to an id of one of the table cells.

view.displayMiss("00"); // A0
view.displayHit("34"); 	// D4
view.displayMiss("55");	// F5
view.displayHit("12");	// B2
view.displayMiss("25");	// C5
view.displayHit("26");	// C6

view.displayMessage("Tap tap, is this thing on?");




// Each ship is an object
// Note that we've converted the ship locations to two numbers, using 0 for A, 1 for B, and so on.

var model = {

	// 	These three properties keep us from hardcoding values. They are: boardSize (the size of the grid used for the
	// board), numShips (the number of ships in the game), and shipLength (the number of locations in each ship, 3).

	boardSize: 7,
	numShips: 3,
	shipLength: 3,
	shipsSunk: 0,

	// The ship has a locations property and a hits property.

	// The hits property is also an array that holds whether or not a ship is hit at each location. We'll set the array items to the empty string initially,

	// and change each item to “hit" when the ship has taken a hit in the corresponding location.

	// And, rather than managing three different variables to hold the ships,
	// we’ll create a single array variable to hold them all, like this:

	ships = [{ locations: ["10", "20", "30"], hits: ["", "", ""]}, // first ship.
			 { locations: ["32", "33", "34"], hits: ["", "", ""]}, // second ship
			 { locations: ["63", "64", "65"], hits: ["", "", "hit"]}; // third ship

};





