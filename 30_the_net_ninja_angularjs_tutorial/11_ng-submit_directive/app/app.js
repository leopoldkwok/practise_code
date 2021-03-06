var myNinjaApp = angular.module('myNinjaApp',[]);

myNinjaApp.controller('NinjaController', ['$scope',function($scope) {

  $scope.removeNinja = function(ninja) {

    var removedNinja = $scope.ninjas.indexOf(ninja);
    $scope.ninjas.splice(removedNinja, 1)

  }

  $scope.addNinja = function(){
      $scope.ninjas.push({
        name: $scope.newninja.name,
        belt: $scope.newninja.belt,
        rate: parseInt($scope.newninja.rate),
        available: true
      });

      $scope.newninja.name = "";
      $scope.newninja.belt = "";
      $scope.newninja.rate = "";
  };

  $scope.ninjas = [
    {
      name: "Yoshi",
      belt: "green",
      rate: 50,
      available: true
    },
    {
      name: "Crystal",
      belt: "Yellow",
      rate: 30,
      available: true
    },
    {
      name: "Ryu",
      belt: "orange",
      rate: 10,
      available: false
    },
    {
      name: "Shaun",
      belt: "black",
      rate: 1000,
      available: true
    }
  ];

}]);
