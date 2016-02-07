var itemTwo = document.getElementById('two');	// Get second List Item

var elText = itemTwo.firstChild.nodeValue;		// Get its text content

elText = elText.replace('pine nuts', 'kale');	// Change pine nuts to kale

itemTwo.firstChild.nodevalue = elText;			// Update the list item