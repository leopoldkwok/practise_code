// Store the greeting in a variable
var greeting = 'Howdy ';

// Store the user name in a variable;
var name = 'Leo';

// Create the welcome message by concatenating the strings in the two variables
var welcomeMessage = greeting + name + '!';

// get the element that has an id of greeting
var el = document.getElementById('greeting');

// Replace the content of this element with the personal message
el.textContent = welcomeMessage;

