// METHOD 1
var price = 5;
var quantity = 20;
var total = price * quantity;

// // METHOD 2
// var price, quantity, total;
// price = 5;
// quantity = 14;
// total = price * quantity;

// METHOD 3
// var price = 5, quantity = 14;
// var total = price * quantity;

// write the total into the element with id of cost
var el = document.getElementById('cost'); // Gets the lement with an id of cost
el.textContent = '$' + total; // Replaces the content of this element