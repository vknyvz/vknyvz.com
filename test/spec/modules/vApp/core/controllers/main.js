'use strict';

describe('Controller: MainController', function () {

  // load the controller's module
  beforeEach(module('vApp'));

  var MainCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    MainCtrl = $controller('MainController', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should be a functioning controller', function () {
     
  });
});
