function steup() {										// Declare function
	var textInput;										// Create variable
	textInput = document.getElementById('username');	// Get username input
	textInput.focus();									// Give username focus
}

window.addEventListender('load', setup, false);			// When page loaded call setup()