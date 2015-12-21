'use strict';

/**
 * @ngdoc directive
 * @name vApp.directive:cufonReplaceDirective
 * @description
 * # myDirective
 */
angular.module('vApp').directive('cufonReplaceDirective', function() {
	return function(scope, element, attrs) {		
		element.ready(function() {
			Cufon.replace('h1, h3, .left h2, #menu li a', {fontWeight: '400', fontFamily: 'Yanone Kaffeesatz'}); 
			Cufon.replace('h2', {fontWeight: '400', fontFamily: 'Journal'}); 
        })
    };	
});
