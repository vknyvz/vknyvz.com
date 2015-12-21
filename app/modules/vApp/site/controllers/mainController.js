'use strict';

/**
 * @ngdoc function
 * @name vApp.controller:MainController
 * @description
 * # MainCtrl
 * Controller of the vApp
 */
angular.module('vApp').controller('MainController', [
	'$scope', 
	function ($scope) {
		$http.get("http://www.w3schools.com/angular/customers.php")
	    	.then(function(response) {$scope.names = response.data.records;});
		
		//$scope.profile = 'bla4';
	}
]);