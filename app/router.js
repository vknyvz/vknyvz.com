'use strict';

/**
 * @ngdoc overview
 * @name vApp
 * @description
 * # vApp
 *
 * Main module of the application.
 */
var vApp = angular
  .module('vApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider, $locationProvider) {
	$locationProvider.html5Mode(true);
	
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainController',
        controllerAs: 'main'
      })      
      .otherwise({
        redirectTo: '/'
      });
  })
  .run(function ($rootScope) {
     $rootScope.title = 'vApp';
});
