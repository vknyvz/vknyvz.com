'use strict';

/**
 * @ngdoc function
 * @name vApp.controller:MainController
 * @description
 * # MainCtrl
 * Controller of the vApp
 */
angular.module('vApp').controller('MainController', [
	'$scope', '$http', 
	function ($scope, $http) {
		$http.get("/get/bla.php")
	    	.then(function(response) {$scope.names = response.data.records;});
		
		//$scope.profile = 'bla4';
	}
]);