// Set up the object
var hotel = {
	name: 'Park',
	rooms: 120,
	booked: 77,
	checkAvailability: function() {
		return this.rooms - this.booked; // Need "this" because inside function
	}
};

// Update the HTML
var elName = document.getElementById('hotelName'); // Get Element
elName.textContent = hotel.name; // Update HTML with property of the object

var elRooms = document.getElementById('rooms'); // get element
elRooms.textContent = hotel.checkAvailability(); // Update HTML with property of the object

