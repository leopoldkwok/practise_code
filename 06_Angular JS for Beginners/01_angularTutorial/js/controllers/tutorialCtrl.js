angular.module("tutorialCtrlModule",[])

.controller("TutorialCtrl",["$scope", "Calculations", function($scope, Calculations) {

	$scope.tutorialObject = {};
	$scope.tutorialObject.title = "Main Page";
	$scope.tutorialObject.subTitle = "Sub title";

	$scope.tutorialObject.bindOutput = 2;

	$scope.tutorialObject.firstname = "Thomas";
	$scope.tutorialObject.lastname = "Brown";

	$scope.timesTwo = function() {
		$scope.tutorialObject.bindOutput = Calculations.timesTwo($scope.tutorialObject.bindOutput);
	}

	Calculations.pythagoreanTheorum();

	// our programing work is done
}])

.factory("Calculations", function() {
	var calculations = {};

	calculations.timesTwo = function(a) {
		return a * 2;
	};

	calculations.pythagoreanTheorum = function(a,b) {
		return (a * a) + (b * b);
	}

	return calculations;

});


// .directive("tbWelcomeMessage", function() {
// 	return {
// 		restrict:"AE", 
// 		template: "<div>Howdy how are you?</div>"
// 	}
// });