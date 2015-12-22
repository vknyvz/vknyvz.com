'use strict';

/**
 * @ngdoc function
 * @name vApp.controller:ClickController
 * @description
 * # MainCtrl
 * Controller of the vApp
 */
angular.module('vApp').controller('ClickController', [
	'$scope',
	function ($scope) {
		$scope.cv = function(){
			alert('Not looking for any new oppurtunites at this time.');
		}
	}
]);	