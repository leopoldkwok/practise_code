// Set up the object

var hotel = new Object();

hotel.name = 'Park';
hotel.rooms = 120;
hotel.booked = 80;
hotel.checkAvailability = function() {
	return this.rooms - this.booked;
};

var elName = document.getElementById('hotelName'); // get element
elName.textContent = hotel.name;	// update HTML with property of the object

var elRooms = document.getElementById('rooms'); // get element
elRooms.textContent = hotel.checkAvailability();	// Update HTML with result of method