var min = 0;
var max = 9;
function myFunction() {
  // Make myFunction return a random number between min and max values instead of a decimal
  // Only change code below this line.

  return Math.floor(Math.random() * (max - min + 1)) + min;
}

// Only change code above this line.
// We use this function to show you the value of your variable in your output box.
(function(){return myFunction();})();
