var elements = document.getElementsByClassName('hot');	// Find hot items

if(elements.length > 2) {								// If 3 or more are found

	var el = elements[2];							// Select the third one from the nodelist
	el.className = 'cool';
}