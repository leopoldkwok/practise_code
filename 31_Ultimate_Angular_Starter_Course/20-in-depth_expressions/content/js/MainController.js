function MainController() {
  this.text = 'Hello world!';
}

angular
  .module('app')
  .controller('MainController', MainController);
