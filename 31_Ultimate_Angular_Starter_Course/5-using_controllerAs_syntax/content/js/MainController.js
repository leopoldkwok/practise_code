function MainController() {
  this.name = 'Todd';
}

angular
  .module('app')
  .controller('MainController',
    '$scope',
    '$rootScope',
    MainController
]);