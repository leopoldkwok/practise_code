// Create a variable to hold a random nunber between 1 and 10
var randomNum = Math.floor((Math.random() * 10) + 1);

// Create a variable called el to hold the leement whose id attribute has a value of info
var el = document.getElementById('info');
// Write the number into that element
el.innerHTML = '<h2>randon number</h2><p>' + randomNum + '</p>';