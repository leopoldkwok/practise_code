//Jquery on load
$(function() {
  // TODO: Add code here
  var doc1 = {
    title: ko.observable("Hello"),
    body: ko.observable("World")
  };
  var doc2 = {
    title: ko.observable("Goodbye"),
    body: ko.observable("World")
  };
  var viewModel = {
    documents: ko.observableArray()
  };
  viewModel.documents.push(doc1);
  viewModel.documents.push(doc2);

  ko.applyBindings(viewModel);

});