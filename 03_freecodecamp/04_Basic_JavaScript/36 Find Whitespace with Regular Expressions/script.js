var test = (function(){
  var testString = "How many spaces are there in this sentence?";

  // Only change code below this line.

  var expression = /\s+/g;

  // Only change code above this line.
  // We use this function to show you the value of your variable in your output box.
  return testString.match(expression).length;
})();(function(){return test;})();
