function checkLength(e, minLength) {		// Declare function
	var el, elMsg;							// Declare variables
	if(!e) {								// If event object doesn't exist
		e = window.event;					// use IE fallback
	}
	el = e.target || e.srcElement;			// Get target of event
	elMsg = el.nextSibling;					// Get its next sibling

	if (el.value.length < minLength) {		// If length is too short set msg
		elMsg.innerHTML = 'Username must be ' + minLength + ' characters or more';
	} else {								// Otherwise
		elMsg.innerHTML = '';				// Clear Message
	}
}

var elUsername = document.getElementById('username');		// Get username input
if (elUsername.addEventListener) {							// If event listener supported
	elUsername.addEventListener('blur', function(e) {		// on blur event
		// Note: This function is checkLength() - no checkUsername()
		checkLength(e, 5);									// Call checkLength()
	}, false);												// Capture in bubble phase
} else {													// Otherwise
	elUsername.attachEvent('onblur', function(e) {			// IE fallback onblur
		// Note: this function is checkLength() - no checkUsername()
		checkLength(e,5);									// Call checkLength()
	});
}