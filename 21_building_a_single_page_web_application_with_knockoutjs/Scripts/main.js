//Jquery on load
$(function() {
  // TODO: Add code here
  var doc = {
    title: ko.observable("Hello World"),
    body: ko.observable("Welcome to the world, my friends")
  };
  ko.applyBindings(doc);

});